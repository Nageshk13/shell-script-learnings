
#!/bin/bash

read -p"enter service name" service

which $service  >/dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "$service service found"
else 
	echo "$service service not found"
fi
