ARG PYTHON_VERSION=3.11.0
FROM python:${PYTHON_VERSION}-slim as base

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

COPY . .

RUN /venv/bin/pip install pip --upgrade && \ 
    /venv/bin/pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT [ "sh", "entrypoint.sh" ]
