FROM python:3.10.0

RUN mkdir /opt/hello_word/
WORKDIR /opt/hello_word/


RUN pip freeze > requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY dist/hello_world /opt/hello_word/

EXPOSE 80

CMD [ "./hello_world" ]
