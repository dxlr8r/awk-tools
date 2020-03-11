#!/usr/bin/awk -f

BEGIN {
    find=ARGV[1];
    repl=ARGV[2];
    input=ARGV[3];
    find_l=length(find);
    for(i=1; i <= length(input);) {
        f=0;
        for(j=1; j <= find_l; j++) {
            if (substr(input, i+j-1, 1) == substr(find, j, 1)) {f++}
        }
        if (f==find_l) { printf repl; i=i+=find_l }
        else {printf substr(input, i, 1); i++}
    }
    printf "\n"
}
