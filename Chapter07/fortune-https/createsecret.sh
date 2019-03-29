#!/bin/bash
kubectl create secret generic fortune-https --from-file=https.key --from-file=https.cert --from-file=foo
kubectl create configmap fortune-config --from-file=../configmap-files/sleep-interval --from-file=my-nginx-config.conf=../ssl.conf
