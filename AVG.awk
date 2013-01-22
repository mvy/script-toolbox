#!/bin/awk -f      
# Compute the average of the $2nd column grouped by $3
BEGIN {
    max = 0;
}
{ # For all lines
    nb[$3];
    total[$3] += $2; 
    nb[$3]++;
    if($3 > max) {
        max = $3; # Stores the max index to be printed
    }
} 
END {for(i = 1; i <= max; i++) {
        if(nb[i] == 0) {
            print i
        } else {
           print "AVG(" i ") = " total[i] / nb[i];
        }
    }
} 
