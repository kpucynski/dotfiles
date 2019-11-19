#!/bin/bash

#openssl pkcs12 -export -in pki/issued/unifi.lan.chmurka.info.crt -inkey pki/private/unifi.lan.chmurka.info.key -out unifi.p12 -name unifi -CAfile pki/ca.crt -caname root
scp unifi.p12 unifi:/tmp
#ssh unifi mv /etc/ssl/private/unifi.keystore.jks /tmp/keystore.bak
ssh unifi keytool -importkeystore -deststorepass aircontrolenterprise -destkeypass aircontrolenterprise -destkeystore /etc/ssl/private/unifi.keystore.jks -srckeystore /tmp/unifi.p12 -srcstoretype PKCS12 -srcstorepass aircontrolenterprise -alias unifi
ssh unifi service unifi restart
scp pki/issued/unifi.lan.chmurka.info.crt unifi:/etc/ssl/private/cloudkey.crt
scp pki/private/unifi.lan.chmurka.info.key unifi:/etc/ssl/private/cloudkey.key
ssh unifi service nginx restart


