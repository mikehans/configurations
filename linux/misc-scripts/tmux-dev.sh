#! /bin/bash

tmux new-session -d -s 'repo'
tmux rename-window 'AEM'
tmux new-window -n 'build'
tmux new-window -n 'bash'
tmux select-window -t1
tmux send-keys -t %0 './aem/author/start.sh' 'Enter'
tmux attach
