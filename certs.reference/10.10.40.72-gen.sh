cfssl gencert \
-ca=ca.pem \
-ca-key=ca-key.pem \
-config=ca-config.json \
-hostname=10.10.40.72,10.10.40.72 \
-profile=kubernetes 10.10.40.72-csr.json | \
cfssljson -bare 10.10.40.72
