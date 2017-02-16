#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh


pg_mdd_cmdenable () {
  curl "http://$pg_mdd_camip/setSystemMotion" -H "Host: $pg_mdd_camip" -H "Referer: http://$pg_mdd_camip/setSystemMotion" -H "Authorization: Basic $pg_mdd_camauthcode" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" --data "ReplySuccessPage=motion.htm&ReplyErrorPage=motion.htm&MotionDetectionEnable=1&MotionDetectionScheduleDay=127&MotionDetectionScheduleMode=0&MotionDetectionSensitivity=70&ConfigSystemMotion=Save" >/dev/null 2>&1
}

pg_mdd_cmddisable () {
  curl "http://$pg_mdd_camip/setSystemMotion" -H "Host: $pg_mdd_camip" -H "Referer: http://$pg_mdd_camip/setSystemMotion" -H "Authorization: Basic $pg_mdd_camauthcode" -H "Connection: keep-alive" -H "Upgrade-Insecure-Requests: 1" --data "ReplySuccessPage=motion.htm&ReplyErrorPage=motion.htm&MotionDetectionEnable=0&MotionDetectionScheduleDay=127&ConfigSystemMotion=Save" >/dev/null 2>&1
}