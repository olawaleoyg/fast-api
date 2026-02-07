
#!/bin/bash
set -e

read -p "Enter the key: " key
read -p "Enter the value: " value

# If using NodePort:
base_url="http://localhost:30080"

# Sending POST request to store the key-value
curl -X POST "${base_url}/cache?key=${key}&value=${value}"
echo
# Sending GET request to retrieve the key
curl "${base_url}/cache?key=${key}"
echo
EOF

chmod +x test.sh
./test.sh

