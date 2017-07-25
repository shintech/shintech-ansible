#!/usr/bin/env bash

mysql -u core -p$MYSQL_ROOT_PASSWORD < init.sql
