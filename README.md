## Kind cluster automatic setup

changes from feature1 branch
yet another test test

This repo contains scripts to set up baseline kind (Kubernetes IN Docker) cluster with some default features:
- dev, test, prod, maintenance namespaces,
- RBAC,
- jenkins server
- etc,

It can be used for further developments or testing of various projects and ideas. I'm just tired of setting this up manually each time new idea pops into my mind :)

### How to

Just run start.sh optional_cluster_name (assuming you have kind, kubectl and docker installed, and have connetction to internet)
