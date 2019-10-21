# Split panes and create new windows in current path
unbind '"'
bind e split-window -h -c '#{pane_current_path}'
bind o split-window -v -c '#{pane_current_path}'
bind c new-window -c '#{pane_current_path}'

# Navigate panes with vim directions
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Toggle between panes with a
unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

# Change next/prev session keys to pageup/pagedown in copy-mode
bind-key -n M-Down copy-mode \; send-keys NPage
bind-key -n M-Up copy-mode \; send-keys PPage

# Set mouse mode on
set-option -g mouse on

