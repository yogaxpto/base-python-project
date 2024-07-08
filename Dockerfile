FROM python:3-alpine

ENV UV_SYSTEM_PYTHON=1
ENV POETRY_VIRTUALENVS_CREATE=false

WORKDIR /app

RUN pip install uv 

COPY pyproject.toml .
RUN uv pip install poetry
RUN poetry install
