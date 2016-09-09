#!/bin/bash

 if [ ! -f $HOME/.atlassian.config ]; then
   echo "Please copy the config template to $HOME/.atlassian.config and set the variables to those that are appropriate for your environment (such as hostnames, user names, and passwords."
  else . $HOME/.atlassian.config
 fi

# Check that we have all the required binaries

JQ=`which jq`
 if [ ! -x "$JQ" ]; then
   echo "ERROR: The jq package is not installed, please use your package manager (such as yum, dnf, or apt-get) to install it." >&2
 exit 1
  fi


