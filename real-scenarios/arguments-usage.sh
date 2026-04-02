#!/bin/bash
tar -czf backup_$(date +%F).tar.gz $1
echo $?

