#!/bin/bash

PARENT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
# this_script=`basename "$0"`

source "${PARENT_PATH}/utils/caller.sh"

#-------------------=== Prompt Config ===------------------------------->>>

# prompt symbols
__miniprompt_success_symbol=$(pcall symbols success)
__miniprompt_error_symbol=$(pcall symbols error)


echo $__miniprompt_error_symbol
echo $__miniprompt_success_symbol
