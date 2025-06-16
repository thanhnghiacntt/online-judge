import os
import json
import logging

# Khởi tạo Django settings
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'dmoj.settings')  # Sửa lại nếu tên settings khác
import django
django.setup()

from judge.models.problem import ProblemGroup, ProblemType, Problem

# Thiết lập logging
logging.basicConfig(
    filename='import_lqdoj_problems.log',
    level=logging.INFO,
    format='%(asctime)s %(levelname)s %(message)s'
)

DATA_DIR = '/home/dmojuser/dmoj/data/lqdoj'
PROBLEMS_LIST_FILE = '/home/dmojuser/dmoj/data/lqdoj_problems.json'

def parse_problem_json(filepath):
    from bs4 import BeautifulSoup
    def extract_text(html):
        soup = BeautifulSoup(html, "html.parser")
        return soup.get_text(separator=' ', strip=True)
    def parse_point(point_html):
        text = extract_text(point_html)
        for part in text.split():
            try:
                return int(part)
            except ValueError:
                continue
        return 0
    def parse_time(time_html):
        text = extract_text(time_html)
        if 's' in text:
            return float(text.replace('s', '').strip())
        return float(text)
    def parse_memory(memory_html):
        text = extract_text(memory_html)
        text = text.upper().replace(' ', '')
        if text.endswith('M'):
            return int(float(text[:-1]) * 1024)
        if text.endswith('K'):
            return int(float(text[:-1]))
        if text.endswith('G'):
            return int(float(text[:-1]) * 1024 * 1024)
        return int(text)
    def parse_field(field_html):
        return extract_text(field_html)
    with open(filepath, encoding='utf-8') as f:
        data = json.load(f)
    return {
        "Point": parse_point(data.get("Point", "")),
        "Time": parse_time(data.get("Time", "")),
        "Memory": parse_memory(data.get("Memory", "")),
        "Input": parse_field(data.get("Input", "")),
        "Output": parse_field(data.get("Output", "")),
        "Value": data.get("Value", "")
    }

def main():
    with open(PROBLEMS_LIST_FILE, encoding='utf-8') as f:
        problems = json.load(f)
    merged_list = []
    for item in problems:
        problem_id = item['ID'] if isinstance(item, dict) and 'ID' in item else str(item)
        json_path = os.path.join(DATA_DIR, f"{problem_id}.json")
        if os.path.exists(json_path):
            parsed = parse_problem_json(json_path)
            merged = {**item, **parsed}
            merged_list.append(merged)
        else:
            print(f"File not found: {json_path}")

    # First pass: create/get unique categories (ProblemGroup)
    category_map = {}
    for merged in merged_list:
        cat = merged.get('Category')
        if cat and cat not in category_map:
            try:
                group_obj, _ = ProblemGroup.objects.get_or_create(name=cat, defaults={'full_name': cat})
                category_map[cat] = group_obj
            except Exception as e:
                logging.error(f"Error creating ProblemGroup for '{cat}' in file {PROBLEMS_LIST_FILE}: {e}")

    # Second pass: create/get unique types (ProblemType)
    type_map = {}
    for merged in merged_list:
        typ = merged.get('Types')
        if typ and typ not in type_map:
            try:
                type_obj, _ = ProblemType.objects.get_or_create(name=typ, defaults={'full_name': typ})
                type_map[typ] = type_obj
            except Exception as e:
                logging.error(f"Error creating ProblemType for '{typ}' in file {PROBLEMS_LIST_FILE}: {e}")

    # Third pass: create Problem and assign foreign keys
    for merged in merged_list:
        group_obj = category_map.get(merged.get('Category'))
        type_obj = type_map.get(merged.get('Types'))
        problem_kwargs = {}
        if 'ID' in merged:
            problem_kwargs['code'] = merged['ID']
        if 'Problem' in merged:
            problem_kwargs['name'] = merged['Problem']
        if 'Value' in merged:
            problem_kwargs['description'] = merged['Value']
        if 'Point' in merged:
            problem_kwargs['points'] = merged['Point']
        if 'Time' in merged:
            problem_kwargs['time_limit'] = merged['Time']
        if 'Memory' in merged:
            problem_kwargs['memory_limit'] = merged['Memory']
        if 'ACRate' in merged:
            # Chuyển "10%" -> 10.0 (float)
            try:
                ac_rate_str = merged['ACRate'].strip().replace('%', '')
                ac_rate = float(ac_rate_str)
            except Exception as e:
                ac_rate = 0
                logging.error(f"Error parsing ac_rate from '{merged.get('ACRate')}' for problem {merged.get('ID')}: {e}")
            problem_kwargs['ac_rate'] = ac_rate
        if group_obj:
            problem_kwargs['group'] = group_obj
        # Set is_public = True
        problem_kwargs['is_public'] = True

        try:
            problem_obj, created = Problem.objects.update_or_create(
                code=problem_kwargs['code'],
                defaults=problem_kwargs
            )
            if type_obj:
                problem_obj.types.set([type_obj])
            print(f"{'Created' if created else 'Updated'} Problem: {problem_obj.code}")
        except Exception as e:
            logging.error(
                f"Error inserting Problem in file {json_path if 'json_path' in locals() else 'unknown'}: "
                f"data={problem_kwargs}, error={e}"
            )

if __name__ == "__main__":
    main()