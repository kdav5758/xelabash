#!/bin/bash


#-------------------=== Extras config ===------------------------------->>>
this="$(basename "${BASH_SOURCE[0]}")"
history_enabled=true
dircolors_enabled=true
#-------------------=== Extras config ===------------------------------<<<

# configure colors for the directories
function config_dircolors() {

    if [[ "$dircolors_enabled" == "true" ]]; then
        if [ -x "$(command -v dircolors)" ]; then
            if [ -r "$HOME/.dircolors" ]; then
                eval "$(dircolors -b "$HOME/.dircolors")"
            else
                eval "$(dircolors -b)"
            fi
        fi
    elif [[ "$dircolors_enabled" == "false" ]]; then
        :
    else
        echo -e "Configuration variable 'dircolors_enabled' was set to '$dircolors_enabled', which is not a valid value. It can either be set to 'true' or 'false' in $this."
    fi
}

# configure history's format to: <num>  [yyyy-mm-dd 00:00:00] <cmd>
function config_history_format() {
    if [[ "$history_enabled" == "true" ]]; then
        export HISTCONTROL='ignoreboth:erasedups'
        export HISTTIMEFORMAT='[%Y-%m-%d %T] '
        shopt -s 'histappend'
    elif [[ "$history_enabled" == "false" ]]; then
        :
    else
        echo -e "Configuration variable 'history_enabled' was set to '$history_enabled', which is not a valid value. It can either be set to 'true' or 'false' in $this."
    fi
}

function configure_extras() {
    config_dircolors        # good
    config_history_format   # good
}

function __init() {
    configure_extras
}

if [[ "$extras_enabled" == "true" ]]; then
    __init
elif [[ "$extras_enabled" == "false" ]]; then
    :
else
    echo -e "Configuration variable 'extras_enabled' was set to '$extras_enabled', which is not a valid value. It can either be set to 'true' or 'false' in $this."
fi

