dunstctl set-paused toggle

isPaused=$(dunstctl is-paused)

mkdir ~/.cache/vylpes-scripts

if [ $isPaused = "true" ]; then
    echo "🔕" > ~/.cache/vylpes-scripts/dunst.txt;
else
    echo "🔔" > ~/.cache/vylpes-scripts/dunst.txt;
fi;
