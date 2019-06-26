docker pull quay.io/coreos/etcd:v3.3
docker pull gcr.io/google_containers/kube-apiserver-amd64:v1.15.0
docker pull gcr.io/google_containers/kube-scheduler-amd64:v1.15.0 
docker pull gcr.io/google_containers/kube-controller-manager-amd64:v1.15.0 
docker pull gcr.io/google-containers/kube-addon-manager-amd64:v9.0.1
docker pull gcr.io/google_containers/metrics-server-amd64:v0.3.3 
docker pull gcr.io/google-containers/rescheduler:v0.4.0
docker pull coredns/coredns

#docker pull quay.io/calico/node:v3.8 (could not get right version string)
# So, downloaded the latest
docker pull quay.io/calico/node

#docker pull quay.io/calico/cni:v3.5 (could not get right version string)
# So, downloaded the latest
docker pull quay.io/calico/cni

docker pull k8s.gcr.io/pause-amd64:3.1
docker pull quay.io/jcmoraisjr/haproxy-ingress:v0.7.2

