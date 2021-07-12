# Script Tgvmax confirm

Minimalist bash script to replace the sms tgv max notification service.

In France, there is a special subscription on train ticket for young people before 27 years olds, it allowed you to pay 80 euros each month and choose multiple free tickets when there is some empty places, the drawback is that you must confirm 2 day before that you take or cancel your reservation. By the past they send you an sms to recall it to you but today they stop sending messages and use notification through google pay subscription. I don't want to use google pay so I build this small script to do the job.

## What it does ?

Send a notification on my computer when my reserved train ticket(s) need to be confirmed on tgvmax.

## How to use ?

1. find your web app url (PWA_URL)

When they cancel the service the email you and redirect you on a web app to allowed you to enable google pay notification, just take this url.

2. git clone project

'''
  git clone https://github.com/aloisleclet/script_tgvmax_notification
'''

3. edit crontab & add your line

'''
  crontab -e 
'''

'''
42 * * * * /your/own/path/to/the/script.sh
'''

4. enjoy :)

###

## Further upgrades

Just auto-confirm my tickets and send me a notification. however I failed to implement this in bash, there is a javascript event when you click on confirmation so I prefer to create an other nodejs project based on puppeteer it looks more convenient and easier to do.

##### Made with <3 by @aloisleclet
