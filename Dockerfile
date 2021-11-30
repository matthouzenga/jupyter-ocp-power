FROM ibmcom/jupyter-base-notebook-ppc64le

RUN apt-get update && apt-get -y update
RUN apt-get install -y libpq-dev

WORKDIR /home/jovyan/work
COPY . /home/jovyan/work

RUN pip --no-cache-dir install -r requirements.txt

#EXPOSE 8080

#ENTRYPOINT ["python"]
#CMD ["app.py"]
