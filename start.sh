#!/bin/bash
source ./scripts/common/logging.sh
script_name="start.sh"

info "starting test"
runScript scripts/test-script.sh
info "done testing"
#
#info "creating kind cluster"
#if [ "$#" -ne 1 ]; then
#  kind create cluster
#else
#  kind create cluster -n "$1"
#fi
#
#info "starting script to create namespaces"
#./scripts/add-namespaces.sh
#
#info "starting script to install jenkins"
#./scripts/install-jenkins.sh



