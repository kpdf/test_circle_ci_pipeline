FROM python:3.10.0

RUN mkdir /opt/hello_word/
WORKDIR /opt/hello_word/

COPY dist/hello_world /opt/hello_word/

EXPOSE 80

CMD [ "./hello_world" ]
