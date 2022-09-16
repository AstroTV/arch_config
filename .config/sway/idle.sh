OUTPUT=$(iwgetid)
HOME='Meranien'
if [[ "$OUTPUT" == *"$HOME"* ]];
then
  swayidle \
	  timeout 600 'swaymsg "output * dpms off"' \
	  resume 'swaymsg "output * dpms on"'
else
  swiayidle \
	  timeout 600 '~/.config/sway/lock.sh --grace 30' \
	  timeout 660 'swaymsg "output * dpms off"' \
	  resume 'swaymsg "output * dpms on"' \
	  before-sleep '~/.config/sway/lock.sh'
fi
