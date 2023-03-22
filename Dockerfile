FROM python:3.9

COPY ./requirements.txt /srv/app/requirements.txt
RUN pip install -r /srv/app/requirements.txt

COPY ./web.py /srv/app/web.py
COPY ./conf/web.conf /srv/app/conf/web.conf

EXPOSE 5000
WORKDIR /srv/app
ENTRYPOINT ["python"]
CMD ["web.py"]
