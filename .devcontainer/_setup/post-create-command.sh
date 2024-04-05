#!bin/sh

# Export env vars
# https://zwbetz.com/set-environment-variables-in-your-bash-shell-from-a-env-file/
export $(grep -v '^#' ../.env | xargs)

echo ""
exercism configure -t $EXERCISM_TOKEN -w /workspace
echo ""
exercism troubleshoot
echo ""
