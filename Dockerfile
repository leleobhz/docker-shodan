FROM python:slim

LABEL maintainer="desenvolvimento@zenithtecnologia.com.br"

RUN pip install shodan
RUN mkdir /root/.shodan

COPY entrypoint.sh /usr/local/bin

VOLUME ["/root/.shodan"]
ENTRYPOINT ["entrypoint.sh"]
CMD ["shodan"]
