#!/bin/bash
# Originally based on the snippet found at https://answers.atlassian.com/questions/216009/how-to-get-repository-list-for-a-stash-project
. ~/.atlassian.config
curl -k -s -H "Content-Type: application/json" -X GET -u $username:$password https://$stash_fqdn:$port/rest/api/1.0/projects?max-result=9999 | jq -r ".values[].link.url"|while read line
do
     #echo "curl -k -s https://${STASH}/rest/api/1.0${line}/repos"
        curl -k -s -H "Content-Type: application/json" -u $username:$password https://$stash_fqdn:$port/rest/api/1.0${line}/repos?max-result=9999 | jq -r ".values[].cloneUrl"
      done
