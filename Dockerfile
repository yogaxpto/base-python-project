FROM python:3-alpine

ENV UV_SYSTEM_PYTHON=true \
    UV_CACHE_DIR=/root/.cache/uv \
    PIP_CACHE_DIR=/root/.cache/pip

WORKDIR /app

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install uv

COPY pyproject.toml uv.lock ./

RUN --mount=type=cache,target=/root/.cache/uv \
    uv pip install -r pyproject.toml --group dev