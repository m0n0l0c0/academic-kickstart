#!/bin/bash

set -e
message=""

go_git(){
  git add --all
  git commit -m "${message}"
  git push
}

read -p "Commit msg?: "  message
hugo
cd public
go_git
cd -
go_git

