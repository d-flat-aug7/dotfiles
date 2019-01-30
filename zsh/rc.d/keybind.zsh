# keybind settings ---------------------------------------------------
bindkey -M viins '^N' down-line-or-history
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^L' vi-cmd-mode

if [[ -n "${TMUX}" ]] ; then
    function __tmux_copy_mode() {
        tmux copy-mode
    }
    zle -N __tmux_copy_mode
    bindkey -M viins '^[' __tmux_copy_mode
    bindkey -M vicmd '^[' __tmux_copy_mode
fi