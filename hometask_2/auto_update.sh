#!/bin/bash
sudo apt-get update 
sudo apt-get upgrade >> update.log

#configure log rotation
#/var/log/example-app/*.log {
 #   daily
  #  missingok
   # rotate 14
  # compress
    #notifempty
    #create 0640 www-data www-data
    #sharedscripts
    #postrotate
    #    systemctl reload example-app
   # endscript
#}

sudo logrotate /etc/logrotate.conf --debug
