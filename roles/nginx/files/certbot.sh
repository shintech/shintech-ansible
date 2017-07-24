#!/bin/sh

docker run -it --name certbot \
  -v "/home/core/certbot/data/etc:/etc/letsencrypt" \
  -v "/home/core/certbot/data/var-lib:/var/lib/letsencrypt" \
  -v "/home/core/certbot/data/webroot:/webroot" \
  certbot/certbot certonly --webroot -w /webroot -d $DOMAIN --email $EMAIL --agree-tos -n

