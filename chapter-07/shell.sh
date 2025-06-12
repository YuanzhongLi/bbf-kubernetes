# install HPA
k apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.6.4/components.yaml

# Run this code for Kind user
k patch -n kube-system deployment metrics-server --type=json \
--patch '[{"op": "add", "path": "/spec/template/spec/containers/0/args/-", "value": "--kubelet-insecure-tls"}]'

# Load test hpa-hello-server
k -n default run load-generator -it --rm --image=busybox:1.28 --restart=Never \
-- /bin/sh -c "while sleep 0.1; do wget -q -O- http://hello-server-service.default.svc.cluster.local:8080; done"
