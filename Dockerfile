FROM python:3.8

ENV DEBIAN_FRONTEND=noninteractive
ADD . /opt/portfolio/
WORKDIR opt/portfolio/

RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8000

ENTRYPOINT ["./manage.py", "runserver", "0.0.0.0:8000"]

