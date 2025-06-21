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
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
ADMIN_MEDIA_PREFIX = os.path.join(BASE_DIR, 'media')
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

# Event Server (WebSocket)
# EVENT_DAEMON_USE = True
# EVENT_DAEMON_POST = 'ws://127.0.0.1:15101/'
# EVENT_DAEMON_GET = 'ws://127.0.0.1:15100/'
# EVENT_DAEMON_POLL = '/channels/'

# Celery (for async tasks)
CELERY_BROKER_URL = 'redis://localhost:6379/0'
CELERY_RESULT_BACKEND = 'redis://localhost:6379/0'

# Judge settings
DMOJ_JUDGE_PRIORITY = 0
DMOJ_JUDGE_TIMEOUT = 30

# PDF rendering
USE_SELENIUM = True
SELENIUM_CUSTOM_CHROME_PATH = '/usr/bin/google-chrome'
SELENIUM_CHROMEDRIVER_PATH = '/usr/bin/chromedriver'

# Timezone
USE_TZ = True
TIME_ZONE = 'Asia/Ho_Chi_Minh'
DEFAULT_USER_TIME_ZONE = 'Asia/Ho_Chi_Minh'

# Language settings
LANGUAGE_CODE = 'vi'
USE_I18N = True
USE_L10N = True
# Danh sách ngôn ngữ được hỗ trợ
LANGUAGES = [
    ('vi', 'Tiếng Việt'),
    ('en', 'English'),
]

# Site header
SITE_ID = 1
SITE_NAME = 'Kaiwa VN'
SITE_LONG_NAME = 'Kaiwa Việt Nam'
SITE_ADMIN_EMAIL = 'thanhnghiacntt@gmail.com'

BRIDGED_JUDGE_ADDRESS = [('0.0.0.0', 9999)]
BRIDGED_JUDGE_PROXIES = ['127.0.0.1/32', '192.168.1.0/24']
# Bỏ hoặc để trống BRIDGED_DJANGO_ADDRESS để tránh xung đột
BRIDGED_DJANGO_ADDRESS = [('0.0.0.0', 9998)]  # Khôi phục để bridge gửi dữ liệu
BRIDGED_DJANGO_CONNECT = ('0.0.0.0', 9998)  # Bật kết nối trực tiếp
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
DMOJ_RESOURCES = os.path.join(BASE_DIR, 'resources')

DMOJ_PROBLEM_MIN_MEMORY_LIMIT = 16384  # 16MB minimum
DMOJ_PROBLEM_MAX_MEMORY_LIMIT = 1048576  # 1GB maximum

# Email (for password reset, etc.)
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_USE_TLS = True
EMAIL_HOST_USER = 'your-email@gmail.com'
EMAIL_HOST_PASSWORD = 'your-app-password'
DEFAULT_FROM_EMAIL = 'Kaiwa <your-email@gmail.com>'
