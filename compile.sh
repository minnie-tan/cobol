exe=`echo "$1" |nawk -F. '{print $1}'`
[ -f exe/$exe ] && rm -rf exe/$exe || (printf "Program name is required\n"; exit 1)
cobc -x -o exe/$exe $1
