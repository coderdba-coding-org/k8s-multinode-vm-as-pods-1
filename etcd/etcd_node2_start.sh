REGISTRY=quay.io/coreos/etcd
# available from v3.2.5
#REGISTRY=gcr.io/etcd-development/etcd

# For each machine
#ETCD_VERSION=latest
ETCD_VERSION=v3.3
# Note: TOKEN can be any string
TOKEN=my-etcd-token
CLUSTER_STATE=new
NAME_1=k1
NAME_2=k2
NAME_3=k3
HOST_1=192.168.40.101
HOST_2=192.168.40.102
HOST_3=192.168.40.103
CLUSTER=${NAME_1}=http://${HOST_1}:2380,${NAME_2}=http://${HOST_2}:2380,${NAME_3}=http://${HOST_3}:2380
DATA_DIR=/var/lib/etcd

# For node 2
THIS_NAME=${NAME_2}
THIS_IP=${HOST_2}
docker run --rm\
  --net=host \
  -p 2379:2379 \
  -p 2380:2380 \
  --volume=${DATA_DIR}:/etcd-data \
  --name etcd ${REGISTRY}:${ETCD_VERSION} \
  /usr/local/bin/etcd \
  --data-dir=/etcd-data --name ${THIS_NAME} \
  --initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://0.0.0.0:2380 \
  --advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://0.0.0.0:2379 \
  --initial-cluster ${CLUSTER} \
  --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}
