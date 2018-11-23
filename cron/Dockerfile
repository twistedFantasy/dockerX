ARG IMAGE
FROM $IMAGE
LABEL maintainer="Twisted Fantasy <twisteeed.fantasy@gmail.com>"

ENV CRON_PATH=/etc/cron.d/hello-cron
# Add crontab file in the cron directory
ADD cron/crontab $CRON_PATH

# Give execution rights on the cron job
RUN chmod 0644 $CRON_PATH

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

#Install Cron
RUN apt-get update
RUN apt-get -y install cron

# Run the command on container startup
CMD ["cron", "-f"]
