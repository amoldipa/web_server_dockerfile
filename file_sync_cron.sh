#/bin/bash
(sleep 5 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 10 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 15&& rsync -avt /tmp/webapp /var/www/html) &
(sleep 20 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 25 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 30 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 35 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 40 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 45 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 50 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 55 && rsync -avt /tmp/webapp /var/www/html) &
(sleep 60 && rsync -avt /tmp/webapp /var/www/html) &

#==========================================================

# add cronjob by below command. Remove hash # 

# crontab -e

# * * * * * /tmp/dostuff.sh

# save the file