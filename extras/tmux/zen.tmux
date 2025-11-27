# zen.tmux - Minimal tmux theme for zen.nvim

# Colors from zen palette
zen_bg0="#121212"
zen_bg3="#323232"
zen_fg="#e0e0e0"
zen_fg_dim="#767676"
zen_fg_muted="#626262"
zen_rose="#b9a0a0"
zen_lavender="#b0a0b9"

# Separators
sprtr_fg="${zen_bg3},bold"

# Session indicator (changes color on prefix)
t_session="#{?client_prefix,#[fg=${zen_rose}],#[fg=${zen_fg}]}󰆍 #S"

# Current path
pwd="#[fg=$sprtr_fg](#[fg=${zen_fg},nobold] #{b:pane_current_path}#[fg=$sprtr_fg])"

# Pane borders
set -g pane-border-style "bg=default fg=${zen_fg_muted}"
set -g pane-active-border-style "bg=default fg=${zen_fg_dim}"

# Selection mode
set -g mode-style "bg=${zen_bg3} fg=default"

# Status bar
set -g status-position top
set -g status-left "#[fg=$sprtr_fg](${t_session}#[fg=$sprtr_fg])"
set -g status-right "${pwd}"
set -g status-justify centre
set-option -g status-style "bg=default"

# Window status
setw -g window-status-current-format "#[fg=$sprtr_fg](#[fg=${zen_lavender},bold]#I #[fg=${zen_fg},bold]#W#[fg=$sprtr_fg])"
setw -g window-status-format "#[fg=$sprtr_fg](#[fg=${zen_fg_muted}]#I #W#[fg=$sprtr_fg])"
set-window-option -g window-status-separator " "

# Messages
set -g message-style "bg=default fg=${zen_fg} bold"
