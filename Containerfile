FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN vistoria create-db
RUN vistoria populate-db
RUN vistoria add-user -u admin -p admin
EXPOSE 5000
CMD ["vistoria", "run"]
