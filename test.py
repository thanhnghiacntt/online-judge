import os
import django

# Khởi động môi trường Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "dmoj.settings")  # sửa nếu settings khác tên
django.setup()

from judge.models import Problem

p = Problem.objects.get(code='aplusb')
print([l.code for l in p.languages.all()])