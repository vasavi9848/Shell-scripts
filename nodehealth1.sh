# date:1/1/2026
#
# this script outputs the node health
# version:v1
# ##############
set -x #debug mode
set -e #ext the script when there is an error
set -o pipefail

df -h 


free -g


nproc

ps -ef | grep amazon | awk -F " " '{print $2}'
