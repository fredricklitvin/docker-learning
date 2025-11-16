FROM python:3.11-slim

WORKDIR /home/user/app

COPY app/ .

RUN apt update -y && apt upgrade -y && pip install -r requirments

ENTRYPOINT ["python"]

CMD ["app.py"]

EXPOSE 3000
