#!/bin/bash

# Checking for the existance of curl
which curl &> /dev/null
[ $? -ne 0 ]  && echo "curl utility is not available, please install it" && exit 1

ShowUsage()
{
printf "This script requires an input variable containing the Bamboo project key.\n
-k	-- Bamboo key.\n
-h	-- Help (this text).\n

For example: bambo-permissions.sh -k SOME-KEY\n
"
}
# Sourcing the config file where user credentials and URLs are stored.
. prereqs.sh

GetBambooPerms ()
{
# The buildkey is the parameter provided to this script.
curl -X GET -u $username:$password https://$bamboo_fqdn/chain/admin/config/editChainPermissions.action?buildKey=$1 | awk -F\" '/bambooPermission_/{ print $(NF - 1) }'
}

while getopts "i:f:l:h" opt ; do
	case "$opt" in

	  k) kflag=1
	     InFile="$OPTARG" ;;
	  h) hflag=1
         InFile="$OPTARG" ;;
	  :) ShowUsage;;
	esac
 
done

# If valid parameters are provided, execute the function.
if [[ "$kflag" == "1" ]] ; then
GetBambooPerms ;
# If -h is passed, display the help screen aka the ShowUsage function.
    elif [[ "$hflag" == "1" ]] ; then
    ShowUsage
    
    else
# Otherwise display usage text.  
    ShowUsage ;
    exit 1
    fi
 