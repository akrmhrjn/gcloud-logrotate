FROM google/cloud-sdk
MAINTAINER sitehawk
RUN apt-get update && apt-get install -y logrotate cron
RUN echo "*/5 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" | crontab
ADD logrotate.conf /etc/logrotate.conf

CMD ["cron"]