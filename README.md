# base-python-project

![Python Version](https://img.shields.io/badge/python-3.13-blue)
![License: MIT](https://img.shields.io/badge/license-MIT-green)

## Overview

This repository is a **base template for Python projects** with a containerized development workflow. It provides a structured scaffold for Python applications, including Docker and VS Code Dev Container configuration for easy setup.

### Key Features

- Dockerized development with `Dockerfile` and `docker-compose.yml`
- Python 3.13 and [uv](https://pypi.org/project/uv/) for dependency management
- Linting with [ruff](https://github.com/astral-sh/ruff)
- Unit testing setup with [pytest](https://docs.pytest.org/)
- GitHub Actions CI integration

## Prerequisites

- [Docker](https://www.docker.com/) (and Docker Compose)
- VS Code with **Remote - Containers** extension

## Setup Instructions

```bash
# Clone the repo
git clone https://github.com/yogaxpto/base-python-project.git
cd base-python-project

```

### VS Code DevContainer

1. Open the project in VS Code.
2. Reopen in container when prompted.
3. Start coding!

## Project Structure

```bash
.
├── base_python_assignment/   # Main Python package
├── tests/                    # Pytest test suite
├── .devcontainer/            # VS Code DevContainer setup
├── .github/workflows/        # GitHub Actions workflows
├── Dockerfile                # Docker image definition
├── docker-compose.yml        # Optional compose setup
├── pyproject.toml            # Python dependencies and config
├── uv.lock                   # Lockfile from uv
├── ruff.toml                 # Ruff linter config
├── .gitignore
├── README.md
└── LICENSE
```

## Usage

### Run the App

```bash
python -m base_python_assignment
```

### Run Tests

```bash
pytest
```

### Lint Code

```bash
ruff check .
```

## Contributing

1. Fork the repo & create a new branch.
2. Write and test your changes.
3. Ensure `ruff` and `pytest` pass.
4. Submit a Pull Request.

## License

This project is licensed under the [MIT License](LICENSE).
