#!/usr/bin/awk -f
{
    if($1 in a) {
        sub("0" FS,"",a[$1]);
        a[$1]=a[$1] FS $2;
    } else {
        a[$1]="0" FS $2;
    }
}
END{for(i in a)
    print i,a[i];
}
