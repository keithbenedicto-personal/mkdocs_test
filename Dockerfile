FROM alpine:latest

RUN apk update
RUN apk add python3 py3-pip
RUN pip3 install mkdocs

RUN mkdir mkdocs
WORKDIR /mkdocs
COPY mkdockerize.sh /mkdocs/bin/mkdockerize.sh
RUN chmod u+x /mkdocs/bin/mkdockerize.sh

EXPOSE 8080
ENTRYPOINT ["/mkdocs/bin/mkdockerize.sh"]
