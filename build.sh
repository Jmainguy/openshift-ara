#!/bin/bash
oc new-project ara
oc create -f ara-mysql-pvc.yaml
oc create -f ara-mysql-deployment.yaml
oc create -f ara-mysql-nodePort.yml
oc new-build https://github.com/Jmainguy/openshift-ara
