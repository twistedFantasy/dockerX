ARG IMAGE
FROM $IMAGE

USER root

COPY filebeat/config/filebeat.yml /usr/share/filebeat/filebeat.yml

RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/
