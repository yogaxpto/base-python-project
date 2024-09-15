FROM python:3-alpine

ENV UV_SYSTEM_PYTHON=1
ENV POETRY_VIRTUALENVS_CREATE=false
ENV PYTHONPATH=/app/src

WORKDIR /app

RUN pip install uv 

COPY pyproject.toml poetry.lock uv.lock ./
RUN uv pip install -r pyproject.toml
