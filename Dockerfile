FROM google/cloud-sdk
MAINTAINER sitehawk
RUN apt-get update && apt-get -y install logrotate cron
RUN echo "*/5 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontabs/root
ADD logrotate.conf /etc/logrotate.conf

CMD ["cron"]