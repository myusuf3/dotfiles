set-option -g default-command "reattach-to-user-namespace -l zsh"
# use C-a, since it's on the home row and easier to hit than C-b
set-option -g prefix C-a
unbind-key C-a
bind-key C-a send-prefix

# Easy config reload
bind-key R source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."

# Expect UTF-8, even if the terminal doesn't report it.
set-window-option -g utf8 on
set-window-option -g status-utf8 on

# Basic Options
set-option -g base-index 1
set-window-option -g pane-base-index 1
set-option -g set-titles on
set-option -g bell-action any
set-window-option -g automatic-rename on

# Enable mouse
set-window-option -g mode-mouse on
set -g mouse-resize-pane on
set -g mouse-select-pane on
set -g mouse-select-window on

# Integration with zsh & make it look nice with colors
set-option -g default-shell /bin/zsh

# Set window notifications
setw -g monitor-activity on
set -g visual-activity on

# Allow the arrow key to be used immediately after changing windows
set-option -g repeat-time 0

# List of plugins
# Supports `github_username/repo` or full git URLs
set -g @tpm_plugins "              \
  tmux-plugins/tpm                 \
  tmux-plugins/tmux-sensible       \
  tmux-plugins/tmux-resurrect      \
  tmux-plugins/tmux-copycat        \
  tmux-plugins/tmux-yank           \
  tmux-plugins/tmux-open           \
  tmux-plugins/tmux-sessionist     \
  tmux-plugins/tmux-pain-control   \
  tmux-plugins/tmux-continuum      \
"
# Other examples:
# github_username/plugin_name    \
# git@github.com/user/plugin     \
# git@bitbucket.com/user/plugin  \

# initializes TMUX plugin manager
run-shell ~/.tmux/plugins/tpm/tpm

# set -g @resurrect-processes 'ssh mosh weechat'
# set -g @continuum-restore 'on'

bind-key u capture-pane \;\
    save-buffer /tmp/tmux-buffer \;\
    split-window -l 10 "urlview /tmp/tmux-buffer"

run-shell "powerline-daemon -q"
source "/usr/local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"