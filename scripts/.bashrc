
# =============================================================================
# MiniPrompt
# =============================================================================

#-------------------=== aliases ===-------------------------------
alias start_mp='source /usr/local/bin/MiniPrompt*/mini_prompt'
alias odf='source /usr/local/bin/MiniPrompt*/scripts/on_da_fly.sh'

#-------------------=== vars ===-------------------------------
MINIPROMPT_ENABLED=true

#-------------------=== resources ===-------------------------------

# >>> MiniPrompt initialize >>>
if [[ "$MINIPROMPT_ENABLED" == "true" ]]; then
    # check if current shell is interactive
    # if .bashrc doesn't do this by default, uncomment the line below and comment the line that only says source /usr/local/bin/MiniPrompt*/mini_prompt.sh
    # [[ $- == *i* ]] && source /usr/local/bin/MiniPrompt*/mini_prompt.sh || echo -e "You are currently not in an interactive shell, thus MiniPrompt can't load"
    
    # source the files
    source /usr/local/bin/MiniPrompt*/mini_prompt
    source /usr/local/bin/MiniPrompt*/scripts/extras.sh
elif [[ "$MINIPROMPT_ENABLED" == "false" ]]; then
    # don't source it
    if [ "$color_prompt" = yes ]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    else
        # set again variables that MiniPrompt remaps
        PS1="\[\033[01;32m\]\w\[\033[00m\]\[\033[01;39m\] >\[\033[00m\] "
        HISTCONTROL=ignoredups
        shopt -s histappend
    fi
    unset color_prompt force_color_prompt

    # If this is an xterm set the title to user@host:dir
    case "$TERM" in
        xterm*|rxvt*)
            PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
            ;;
        *)
            ;;
    esac

else
    echo -e "Configuration variable 'MINIPROMPT_ENABLED' was set to '$MINIPROMPT_ENABLED', which is not a valid value. It can either be set to 'true' or 'false' in the ~/.bashrc file."
fi
# <<< MiniPrompt initialize <<<
