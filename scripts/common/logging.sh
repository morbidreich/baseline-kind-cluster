#!/bin/bash
script_name=$script_name

info() {
  echo "[INFO $script_name] $1"
}

runScript() {
  local script_name_bak=$script_name
  source $1
  script_name=$script_name_bak
}
