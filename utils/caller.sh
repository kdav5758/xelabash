#!/bin/bash

function pcall() {

	# $1 = section
	# $2 = key

	result=$(${PARENT_PATH}/utils/toml_parser.awk ${1} ${2} $HOME/.config/MiniPrompt/config.toml)
	if [[ -z "$result" ]]; then
		echo 1
	else
		echo "$result"
	fi
}
