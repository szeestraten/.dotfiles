unbind '"'
bind e split-window -h -c '#{pane_current_path}'
bind o split-window -v -c '#{pane_current_path}'
bind c new-window -c '#{pane_current_path}'

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix
