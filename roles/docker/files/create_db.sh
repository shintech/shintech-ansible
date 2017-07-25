#!/usr/bin/env bash
echo 'creating db...'
sleep 15
docker exec shintech-mysql bash import.sh
