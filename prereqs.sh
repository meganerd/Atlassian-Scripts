#!/bin/bash

 if [ ! -d ~/.atlassian.config ]; then
   echo "Please copy the config template to $HOME/.atlassian.config and set the variables to those that are appropriate for your environment (such as hostnames, user names, and passwords."

# Check that we have all the required binaries

PQ=`which pq`
 if [ ! -x "$PQ" ]; then
   echo "ERROR: The pq package is not installed, please use your package manager (such as yum, dnf, or apt-get) to install it." >&2
 exit 1
  fi


