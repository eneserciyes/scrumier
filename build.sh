grn=$'\e[1;32m'
blu=$'\e[1;34m'
white=$'\e[0m'
cyn=$'\e[1;36m'
mag=$'\e[1;35m'
yellowback=$'\e[43m'
defaultback=$'\e[49m'
echo

for dir in ./*/; do # list directories in the form "/tmp/dirname/"
    dir=${dir%*/}   # remove the trailing "/"
    dirname=${dir##*/}
    echo
    echo "$blu > $cyn Building ${dirname}"
    echo
    mvn -f ${dirname} clean install # print everything after the final "/"
done
