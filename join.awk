#!/usr/bin/awk -f
{
    if($1 in a) {
        a[$1]=a[$1] FS $2;
    } else {
        a[$1]= $2;
    }
}
END{for(i in a)
    print i,a[i];
}
