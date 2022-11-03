#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9ea27437-26c2-44c0-b8bf-69a23b018a63"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

