#!/bin/awk -f
# Add a class order to the last column based on $2nd column value
# Current classes are 0-25, 25-50, 50-75, 75-100
($2 >= 0) && ($2 < 25) {printf "%s (%s) 1\n", $1, $2}
($2 >= 25) && ($2 < 50) {printf "%s (%s) 2\n", $1, $2}
($2 >= 50) && ($2 < 75) {printf "%s (%s) 3\n", $1, $2}
($2 >= 75) && ($2 < 100) {printf "%s (%s) 4\n", $1, $2}
