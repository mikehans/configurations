#! /bin/bash
# Obtains user credentials for URL encoding and writing proxy files required for network access from VM
# You will need to re-run this script when you change your network credentials. You will also need to run vagrant provision to deploy files again.
# Author: Mike Hansford
# Created: 4 May 2018
# Depends: Script named sed-pattens-space.sh in current directory

echo "The VM needs your current credentials to connect to the network."
echo "Enter your username"
read -r USERNAME
echo "Enter your password"
read -sr PASSWORD
echo

function encode_var (){
  local result=$(echo $1 | sed -f ./sed-pattern-space.sh)
  echo "$result"
}

function write_proxy_file (){
 $(cat $1 | sed -e "s/xxUSERNAMExx/$2/g" -e "s/xxPASSWORDxx/$3/g" > $4)
 sed -i "s/\r//g" $4
}

encoded_uname=$(encode_var "$USERNAME")
encoded_pwd=$(encode_var "$PASSWORD")

write_proxy_file "80proxy-templ" "$encoded_uname" "$encoded_pwd" "80proxy"
write_proxy_file ".bash_aliases-templ" "$encoded_uname" "$encoded_pwd" ".bash_aliases"

echo "Wrote 80proxy with network credentials."
echo "Wrote .bash_aliases with network credentials."
