# ConfigMaps and Secrets

## Secrets

```bash
$ cd fortune-https
$ kubectl create secret generic fortune-https --from-file=https.key --from-file=https.cert --from-file=foo
```

## ConfigMaps

```bash
$ cd fortune-https
$ kubectl create configmap fortune-config --from-file=../configmap-files/sleep-interval --from-file=my-nginx-config.conf=../ssl.conf
```

Or

```bash
$ cd fortune-https
$ k apply -f fortune-config-ssh.yaml
```

## Start a demo nginx service and deployment

```bash
$ k apply -f fortune-pod-https.yaml
```
