#!/bin/bash


# replace with your own pwa url
PWA_URL="https://tgvmax.gowento.com/user-tickets/...................../......................."

# check whether there is an other confirmation todo
curl ${PWA_URL} >> pwa_tmp.html

IS_CONFIRMATION_TODO=$(grep "ui green fluid button" pwa_tmp.html)

if [ -n "$IS_CONFIRMATION_TODO" ]
then
  notify-send -i face-wink "TGV MAX" "Ticket(s) to confirm !"
fi 

# rm temporary files
rm pwa_tmp.html

