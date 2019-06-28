# build frontend
ARG BUILDER_IMAGE
FROM $BUILDER_IMAGE as frontend-builder

ENV APP_PATH=/usr/src/app
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

COPY frontend/package.json ./
COPY frontend/package-lock.json ./
RUN npm install

COPY frontend/ ./

RUN npm run build-prod

# nginx
ARG NGINX_IMAGE
FROM $NGINX_IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

EXPOSE 80
EXPOSE 443

ENV APP_PATH=/usr/share/nginx/html/frontend
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

COPY dockerX/nginx/nginx.conf /etc/nginx/nginx.conf
COPY dockerX/nginx/frontnd.conf /etc/nginx/conf.d/default.conf

COPY --from=frontend-builder /usr/src/frontend/build/ /usr/share/nginx/html/frontend
