isPaused=$(dunstctl is-paused)
new=$(dunstctl count waiting)

if [ $isPaused = "true" ]; then
    echo "🔕 $new";
else
    echo "🔔";
fi;
