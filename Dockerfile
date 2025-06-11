FROM python:3.13.3-slim
COPY --from=ghcr.io/astral-sh/uv:0.7.12 /uv /uvx /bin/

# Copy the project into the image
ADD . /app

# Sync the project into a new environment, asserting the lockfile is up to date
WORKDIR /app
RUN uv sync --locked

EXPOSE 8000

ENV PYTHONUNBUFFERED=1

CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]