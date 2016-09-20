#!/bin/bash
# Sourcing the config file where user credentials and URLs are stored.
. prereqs.sh
#echo "KEY,NAME" | tee $output_dir/bamboo-project.csv
#curl -k -H "Content-Type: application/json" -X GET -u $username:$password "https://$bamboo_fqdn/rest/api/latest/project.json?max-result=9999" |jq -r '.projects.project[] | .key + "," + .name' |tee -a $output_dir/bamboo-project.csv
#
#echo "SHORTKEY,NAME" | tee $output_dir/bamboo-plans.csv
#curl -k -H "Content-Type: application/json" -X GET -u $username:$password "https://$bamboo_fqdn/rest/api/latest/plan.json?max-result=99999" | jq -r '.plans.plan[] | '
curl -v -H "Content-Type: application/json" -X GET -u $username:$password https://$bamboo_fqdn/rest/api/latest/project.json |python -m json.tool |tee $output_dir/bamboo-project-list.txt
curl -v -H "Content-Type: application/json" -X GET -u $username:$password https://$bamboo_fqdn/rest/api/latest/plan.json?max-result=99999 |python -m json.tool |tee $output_dir/bamboo-plan-list.txt
