ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

ARG APP_PATH
ARG DATA_PATH

ENV PYTHONUNBUFFERED 1

RUN mkdir -p $APP_PATH
RUN mkdir -p $DATA_PATH
WORKDIR $APP_PATH

RUN pip install pipenv==2018.11.26

COPY ssm/Pipfile ssm/Pipfile.lock ./
RUN pipenv install --system --deploy
COPY ssm/ .

RUN python3 manage.py collectstatic --no-input

COPY ssm/docker/supervisord/celery.conf /etc/supervisord.conf

CMD python3 manage.py migrate && python3 manage.py create_admin && uwsgi --ini uwsgi.ini --check-static /var/staff/ssm/
