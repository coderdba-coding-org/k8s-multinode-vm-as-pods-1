cfssl gencert \
-ca=ca.pem \
-ca-key=ca-key.pem \
-config=ca-config.json \
-hostname=10.10.40.71,10.10.40.71 \
-profile=kubernetes 10.10.40.71-csr.json | \
cfssljson -bare 10.10.40.71
