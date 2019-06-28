ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

ARG COMMAND

ENV COMMAND=$COMMAND
ENV PYTHONUNBUFFERED 1

RUN pip instal supervisor==4.0.3

COPY celery-general.conf /etc/supervisord.conf

CMD $COMMAND
