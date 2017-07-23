x=""
while [ true ]
do
  x=$(xdotool getwindowfocus getwindowname)
  if [[  $(echo $x | grep CLion) ]]; then
    if [[ $x != "CLion" ]]; then
      x="CLion"
      xrandr --output HDMI-0 --brightness 1
    fi
  elif [[  $(echo $x | grep Firefox) ]]; then
    if [[ $x != "Firefox" ]]; then
      x="Firefox"
      xrandr --output HDMI-0 --brightness .8
    fi
  else
    if [[ $x != "" ]]; then
      x=""
      xrandr --output HDMI-0 --brightness 1
    fi
  fi
  sleep .5
done
