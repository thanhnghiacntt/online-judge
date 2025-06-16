import os

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'judge',
        'USER': 'judge',
        'PASSWORD': 'Judge@1234567#',
        'HOST': 'localhost',
        'PORT': '3306',
        'OPTIONS': {
            'charset': 'utf8mb4',
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'"
        }
    }
}
BASE_DIR = os.path.dirname(os.path.dirname(__file__))

STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')
COMPRESS_ROOT = STATIC_ROOT
CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.locmem.LocMemCache',
        'LOCATION': 'unique-snowflake',
    },
    "l0": {
        "BACKEND": "django.core.cache.backends.locmem.LocMemCache",
        "OPTIONS": {"MAX_ENTRIES": 1000},
    },
    "primary": {
        "BACKEND": "django.core.cache.backends.memcached.PyMemcacheCache",
        "LOCATION": "127.0.0.1:11211",
    },
}

SECRET_KEY = '5*9f5q57mqmlz2#f$x1h76&jxy#yortjl1v+l*6hd18$d*yx#0'
ALLOWED_HOSTS = ["*"]

COMPRESS_OUTPUT_DIR = 'CACHE'
COMPRESS_ENABLED = False
COMPRESS_OFFLINE = False
COMPRESS_OFFLINE_CONTEXT = {
    'STATIC_URL': STATIC_URL,
    'request': None,
}

LANGUAGE_CODE = 'vi'

SITE_ID = 1
SITE_NAME = 'Kaiwa VN'
SITE_LONG_NAME = 'Kaiwa Việt Nam'
SITE_ADMIN_EMAIL = 'thanhnghiacntt@gmail.com'

BRIDGED_JUDGE_ADDRESS = [('0.0.0.0', 9999)]
BRIDGED_JUDGE_PROXIES = None
# Bỏ hoặc để trống BRIDGED_DJANGO_ADDRESS để tránh xung đột
BRIDGED_DJANGO_ADDRESS = [('0.0.0.0', 9998)]  # Khôi phục để bridge gửi dữ liệu
BRIDGED_DJANGO_CONNECT = True  # Bật kết nối trực tiếp
JUDGE_LOG_VERBOSITY = 3
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
        },
    },
    'loggers': {
        'django.db.backends': {
            'level': 'DEBUG',
            'handlers': ['console'],
        },
    },
}
DMOJ_PROBLEM_DATA_ROOT = '/problems/'