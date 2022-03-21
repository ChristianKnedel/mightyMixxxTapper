FROM php:8.0-apache

RUN apt-get update -y && apt-get install --fix-missing -f -y \
wget \
streamripper \
at

RUN wget https://downloads.sourceforge.net/project/radiorecwebgui/0.3.x/radiorecorder_0.3.2.tar.gz && \
tar -xf radiorecorder_*.tar.gz -C /var/www/html/ && \
rm -f radiorecorder_*.tar.gz

COPY res/* /var/www/html/res/

RUN chmod 755 /var/www/html/res/docker-entrypoint.sh
RUN chown -R www-data:www-data /var/www/html/
RUN mkdir /tmp/ripps/

#
RUN echo ""  > /etc/at.deny
RUN usermod -s /bin/bash www-data
RUN 

#cleanup
RUN apt-get clean
CMD service atd start && apache2-foreground


CMD /var/www/html/res/docker-entrypoint.sh