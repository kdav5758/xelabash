#!/usr/bin/awk -f

BEGIN {
    FS = " *= *"
    SECTION = ARGV[1]
    KEY = ARGV[2]
    ARGV[1] = ARGV[3] # the actual filename
    ARGC -= 2 # remove the unused ones
}

/^\[.*\]$/ {
    section = substr($0, 2, length-2)
}

section == SECTION && $1 == KEY {
    sub(/^"/,"", $2) # remove any leading double-quote
    sub(/"$/, "", $2) # remove any trailing double-quote
    # print $1	# key
    print $2	# value
}
