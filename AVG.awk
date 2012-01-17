#!/bin/awk -f      
BEGIN {
    max = 0;
}
{
    print $1" class "$3" (pre-cumul: "nb[$3]")";
    total[$3] += $2; 
    nb[$3]++;
    if($3 > max) {
        max = $3;
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



#    print $1" "$2" "$3 nb[$3]; 
