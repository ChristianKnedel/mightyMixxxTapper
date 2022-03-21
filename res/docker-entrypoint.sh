#!/bin/bash
chown -R www-data:www-data /tmp/ripps/
service atd start
apache2-foreground