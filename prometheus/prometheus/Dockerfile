FROM prom/prometheus:v2.10.0
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

ARG BRANCH
COPY prometheus /etc/prometheus/

RUN sed -i -e "s/BRANCH/$BRANCH/" /etc/prometheus/prometheus.yml
