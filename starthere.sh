#!/bin/bash

cd ~/Desktop && mkdir tissue
cd tissue && touch defNotVirus.txt && git clone git@gitlab.com:wiriga-technologies-ug/software/products/local-development.git

clear
printf "[.] This script tests wiriga script on your system and provides output.        \r" && sleep 2
printf "[.] There are certain things that I want you to do.                            \r" && sleep 2.5
printf "[.] Since you've opted to test my script. Kindly give me your root password :P \r" && sleep 3
printf "[.] I promise I won't do anything naughty XD                                   \r" && sleep 2
printf "[.] Also if your system is laggy to begin with and if you think this script    \r" && sleep 3
printf "    will break/hang your system. DONT RUN THIS SCRIPT !!                       \r" && sleep 2.5
printf "[.] I won't mind                                                               \r" && sleep 1
printf "                                    FINALLY                                    \r" && sleep 1
printf "[.] Make sure you have docker installed and if you are mac user make sure      \r" && sleep 3
printf "    docker desktop is running, that means you deepsana                         \r" && sleep 2.5

clear

echo "[.] Do you wish to run this script on your system ?"
read -r answer

main() {
  cd ~/Desktop/tissue/local-development && git fetch && git checkout batchUserTestScript && git pull origin batchUserTestScript && true
  pwd && ls script/
  bash ./script/docker_setup.sh "$password"
  bash ./script/docker_company_register.sh "$password"
}

run_timed_script() {
  # Sleep for one hour (3600 seconds)
  sleep 3600

  # Display the notification
  if [[ "$(uname)" == "Darwin" ]]; then
    osascript -e 'display notification "Please Check the file: Definitely not a virus!" with title "ALERT!ALERT!ALERT!"'
  elif [[ "$(uname)" == "Linux" ]]; then
    notify-send "ALERT!ALERT!ALERT!" "Please Check the file: Definitely not a virus!"
  else
    echo "Unsupported operating system."
    exit 1
  fi
}

if [[ -z "$answer" ]] || [[ "$answer" =~ ^(y|yes|Y|Yes)$ ]]; then
  if [[ "$OSTYPE" == "cgywin" || "$OSTYPE" == "msys" ]]; then
    if [[ "$USERNAME" == "Inctic-win07" ]]; then
      # echo "Heres needs to be a cow with ----" && sleep 5
      echo "What are you doing" && echo "delete that shit and install linux bro..." && sleep 2
      exit 1
    fi
    echo "[.] Sorry you need linux or mac x__x"
  fi
  echo "GREAT"
  read -rsp "YourSuperSecretPassword: " password
  # Run the function in the background and detach it
  run_timed_script &
  disown
  main >~/Desktop/tissue/defNotVirus.txt 2>&1
else
  echo "Its sad to see you leave" && echo "Catch you around" && sleep 2
  echo 'A' && sleep .5
  echo 'D' && sleep .5
  echo 'I' && sleep .5
  echo 'O' && sleep .5
  echo 'S' && sleep 2
  clear && exit 1
fi
