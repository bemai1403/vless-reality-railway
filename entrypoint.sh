#!/bin/bash
echo "Starting Xray with UUID: $UUID"
exec xray run -c /etc/xray/config.json
