#!/bin/bash

fabric-ca-server start \
    -b ${CA_USR}:${CA_PW} \
    --csr.hosts ${CSR_HOSTS} \
    --db.datasource ${DB_DATASOURCE} \
    --db.type mysql \
    --db.tls.certfiles /etc/mysql/ca.pem \
    --db.tls.client.certfile /etc/mysql/client-cert.pem \
    --db.tls.client.keyfile /etc/mysql/client-key.pem
