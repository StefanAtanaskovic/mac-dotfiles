if ! tmux has-session -t=mainsesh 2> /dev/null; then
    tmux new -s mainsesh -c ~
    exit 0
fi

if tmux has-session -t=mainsesh 2> /dev/null; then
    tmux attach -t mainsesh
    exit 0
fi

