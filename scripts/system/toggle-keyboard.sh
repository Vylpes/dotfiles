layout=$(setxkbmap -query | awk '/layout/{print $2}')
new=$layout

if [ $layout = "us" ];
then
    setxkbmap -layout gb;
    new="gb";
else
    setxkbmap -layout us;
    new="us";
fi

echo "Keyboard layout changed from $layout to $new"
