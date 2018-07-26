#!/bin/bash
cd /var/log/apache2
grep -h https://www.homepage homepage.com-access.log homepage.com-access.log.1 > /var/www/domains/homepage/thePenguinslog.txt
zgrep -h https://www.southpolecarbon.com/pm/ southpolecarbon.com-access.log.*.gz >> /var/www/domains/homepage/thePenguinslog.txt
awk '{ print $1 } ' /var/www/domains/homepage/thePenguinslog.txt | sort | uniq > /var/www/domains/homepage/countpengu.txt
