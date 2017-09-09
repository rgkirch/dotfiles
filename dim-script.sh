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
      xrandr --output HDMI-0 --brightness .7
    fi
  elif [[  $(echo $x | grep Vimperator) ]]; then
    if [[ $x != "Vimperator" ]]; then
      x="Vimperator"
      xrandr --output HDMI-0 --brightness .7
    fi
  elif [[  $(echo $x | grep KeePass) ]]; then
    if [[ $x != "KeePass" ]]; then
      x="KeePass"
      xrandr --output HDMI-0 --brightness .8
    fi
  elif [[  $(echo $x | grep Writer) ]]; then
    if [[ $x != "Writer" ]]; then
      x="Writer"
      xrandr --output HDMI-0 --brightness .8
    fi
  elif [[  $(echo $x | grep "Google Chrome") ]]; then
    if [[ $x != "Google Chrome" ]]; then
      x="Google Chrome"
      xrandr --output HDMI-0 --brightness .7
    fi
  else
    if [[ $x != "" ]]; then
      x=""
      xrandr --output HDMI-0 --brightness .8
    fi
  fi
  sleep .5
done
