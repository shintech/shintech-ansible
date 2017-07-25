#!/usr/bin/env bash
echo 'creating db...'
sleep 5
docker exec shintech-mysql bash import.sh
