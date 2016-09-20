########################################## Settings ##########################################
# Copy this template to $HOME/.atlassian_tools.conf then modify it to suite your environment.
# username - Admin user on the Jira Server
username="serviceaccount"
# password - Password for user, can be left blank and passed in at run time by call script with password argument eg. reindex.sh <password>
password="areallygoodpassword"
# Default port, probably either 80 or 443 depending on if you are using the defaults.
port=443
# jira_fqdn needs to be the server name and context of Jira install, ex: http(s)://<jira_dns>:<port>/<jira_context>
# jira context is optional, your installation may not require it.
jira_fqdn="https://jira.companydomain.tld:443/jira"
# Bamboo FQDN
bamboo_fqdn=bamboo.companydomain.tld
# Stash FQDN
stash_fqdn=stash.companydomain.tld
# background - [true|false] Set to true for background index or false to preform an instance locking re-index
background=true
# monitor - [true|false] Set to true for the script to monitor the re-index. This will cause the script to check status until it reaches 100%
monitor=true
# Debug - [true|false] Set to true to print the output of the curl request
debug=false
# print_date - [true|false] Set to 1 to print the date on each output line.
print_date=true
# date_format - Standard date command format to be displayed if print_date=true
date_format="+%Y-%m-%d_%T"
#
# cookie_dir - Directory to store the .cookies.txt (cookie jar) for curl.
cookie_dir=$HOME
#output-dir Where output files are placed
output_dir=$HOME
