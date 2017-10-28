wget --restrict-file-names=nocontrol -r --no-parent -A '*GIXX*' http://opendata.dwd.de/weather/alerts/txt/OF/
recode latin-1..utf-8 opendata.dwd.de/weather/alerts/txt/OF/*GIXX*
pico2wave -l de-DE -w /home/sven/out.wav "$(cat `ls -rt opendata.dwd.de/weather/alerts/txt/OF/*GIXX* | tail -2`)"
play /home/sven/out.wav
cat `ls -rt opendata.dwd.de/weather/alerts/txt/OF/*GIXX* | tail -2`

