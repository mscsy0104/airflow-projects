# 1. uv run을 통해 본 환경 변수 확인 (이제는 값이 나와야 합니다)
uv run --env-file .env sh -c 'echo $AIRFLOW_HOME'

# 2. Airflow가 인식하는 DB 경로 확인
uv run --env-file .env airflow config get-value database sql_alchemy_conn
uv run --env-file .env airflow config get-value core sql_alchemy_conn