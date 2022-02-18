#!/bin/sh

datestring=$(curl --insecure --silent -s --head 'http://google.com' | grep ^Date: | sed 's/Date: //g')
day=$(echo "$datestring" | cut -d' ' -f2)
month=$(echo "$datestring" | cut -d' ' -f3)
year=$(echo "$datestring" | cut -d' ' -f4)
time=$(echo "$datestring" | cut -d' ' -f5)
sudo date --set="$day $month $year $time"
sudo date --set="next hour"
# spring - uncomment ;; autumn - comment ;; the following line
#sudo date --set="next hour"

## TEMP ATTEMPT FOR LOGITECH G500
xinput set-button-map 8 1 0 3
xinput set-button-map 10 1 0 3
xinput set-button-map 2 1 0 3
