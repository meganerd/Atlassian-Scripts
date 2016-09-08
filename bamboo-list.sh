#!/bin/bash
# Sourcing the config file where user credentials and URLs are stored.
. ~/.atlassian.config
curl -v -H "Content-Type: application/json" -X GET -u $username:$password https://$bamboo_fqdn/rest/api/latest/project.json |python -m json.tool |tee $output_dir/bamboo-project-list.txt
curl -v -H "Content-Type: application/json" -X GET -u $username:$password https://$bamboo_fqdn/rest/api/latest/plan.json?max-result=99999 |python -m json.tool |tee $output_dir/bamboo-plan-list.txt
