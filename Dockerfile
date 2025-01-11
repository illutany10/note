FROM python:3.10-slim

# 시스템 패키지 업데이트 & psycopg2 설치에 필요한 라이브러리 설치
RUN apt-get update && apt-get install -y libpq-dev gcc

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]