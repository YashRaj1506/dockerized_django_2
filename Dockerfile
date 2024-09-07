FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python" , "manage.py" , "runserver" , "0.0.0.0:8000"]


# docker build -t dj-image .
# docker run -it --name dj-image -p 8000:8000 dj-image