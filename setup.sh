grn=$'\e[1;32m'
blu=$'\e[1;34m'
white=$'\e[0m'
cyn=$'\e[1;36m'
mag=$'\e[1;35m'
yellowback=$'\e[43m'
defaultback=$'\e[49m'
echo

#git user to clone the repos from
GIT_HOST="https://github.com/eneserciyes/"
REPOS=('config' 'commons' 'integration' 'api-gateway' 'time-tracker' 'scrumier-proxy' 'authentication' 'scrumier-ui' 'scrumier-devops' 'discovery-server' 'scrumier-version-control' 'scrumier-notification' 'scrumier-scheduler')

echo "$blu > $grn Scrumier cloning process has been started ..."

for repo in "${REPOS[@]}"; do
    echo "$blu > $cyn Cloning ${repo} ... $white"
    echo
    git clone "${GIT_HOST}${repo}.git"
done
echo
echo "$blu > $grn Scrumier cloning process has been succesfully completed! $white"
