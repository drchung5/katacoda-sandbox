# #!/bin/bash

show_progress()
{
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  echo -n "Starting up Cassandra..."
  while true; do 
    # sudo grep -i "done" /opt/katacoda-background-finished &> /dev/null
    sudo grep -i "Startup complete" /var/log/cassandra/system.log &> /dev/null
    if [[ "$?" -ne 0 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  clear
  printf "    \b\b\b\b"
  echo ""
  echo "Cassandra has started!"
}

show_progress
# sleep 1
# clear
# printf "\033[0;32mYour Interactive Bash Terminal.\033[0m\n"
