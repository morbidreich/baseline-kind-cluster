#!/bin/bash
source scripts/common/logging.sh
script_name="add-namespaces.sh"

namespace_names=("deva" "devb" "devc" "test" "prod" "jenkins")

info "creating namespaces..."

echo ${namespace_names[3]}

for name in "${namespace_names[@]}"; do
  kubectl create ns "$name"
done

info "done creating namespaces"