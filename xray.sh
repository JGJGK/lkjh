#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0aa4b9a6-2759-4b22-a34b-21ee522969cb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

