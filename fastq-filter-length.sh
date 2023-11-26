#!/bin/bash

paste - - - - | awk -v min_len="$1" '(length($2) > min_len)' | tr '\t' '\n'

# to stay with the 'tool concept'
# expect input on stdin and output the results to stdout
