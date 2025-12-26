#!/bin/bash

# 1. 스크립트가 어느 위치에서 실행되든 프로젝트 루트로 이동
cd "$(dirname "$0")"

# 실행 중인 기존 에어플로우 관련 프로세스 강제 종료
pkill -9 -f "airflow"
# 2. uv를 통해 .env를 로드하고 airflow 실행
# --env-file .env는 현재 폴더의 .env를 읽어 환경 변수로 주입합니다.
uv run --env-file .env airflow standalone