#!/bin/bash
source scripts/common/logging.sh
script_name="install-jenkins.sh"

info "pulling jenkins image..."
docker pull jenkins/jenkins:lts
info "loading jenkins image to kind"
kind load docker-image jenkins/jenkins:lts
info "creating jenkins pod..."
kubectl run jenkins --image=jenkins/jenkins:lts --namespace=jenkins

info "create service for jenkins"
kubectl expose pod jenkins --port=8080 --target-port=8080 -n jenkins

info "waiting until jenkins pod is ready"
sleep 5

info "setup port forward for jenkins pod"
kubectl port-forward -n jenkins pod/jenkins 8888:8080 &

info "grab jenkins admin password"
pwd=$(kubectl exec -it -n jenkins pod/jenkins -- bash -c "cat /var/jenkins_home/secrets/initialAdminPassword")

info "######################################################################"
info ""
info "Initial password to login to jenkins:"
info "$pwd"
info ""
info "Jenkins setup done, go to localhost:8888 to finish initialization"
info "#####################################################################"

