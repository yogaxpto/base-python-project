FROM python:3-alpine

ENV UV_SYSTEM_PYTHON=true
ENV POETRY_VIRTUALENVS_CREATE=false
ENV PYTHONPATH=/app/src

WORKDIR /app

RUN pip install --no-cache-dir uv 

COPY pyproject.toml uv.lock ./
RUN uv pip install --no-cache-dir -r pyproject.toml
