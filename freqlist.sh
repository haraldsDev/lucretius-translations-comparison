#!/bin/bash
 
cat $1 |
dos2unix |
tr "[:upper:]" "[:lower:]" |
#tr ":" "" |
tr -d "[.,;:()!]" |
# tr ":" "A" |
tr -s "[:space:]" "\n" > $2
#sort |
#uniq -c | 
#sort -nr > $2 
