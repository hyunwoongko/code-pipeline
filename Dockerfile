FROM tiangolo/uvicorn-gunicorn:python3.9

COPY ./ ./

ENV PORT=7001
ENV WORKERS=4

RUN pip3 install fastapi uvicorn gunicorn

ENTRYPOINT gunicorn server:app --workers ${WORKERS} --worker-class uvicorn.workers.UvicornWorker --bind 0.0.0.0:${PORT}
