#!/bin/bash
# جایگزینی پورت داینامیک Railway در فایل config.json
sed -i "s/__PORT__/${PORT}/" /etc/xray/config.json
echo "Starting Xray on port ${PORT}"
exec xray run -c /etc/xray/config.json
