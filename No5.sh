awk '/cron/ || /CRON/,!/sudo/' /var/log/syslog | awk 'NF < 13' >> /home/isnaini/praktikum1/syslogno5.log
