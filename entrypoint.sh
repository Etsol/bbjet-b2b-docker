#!/bin/bash

sed '/restBaseUrl/d' /usr/share/nginx/html/properties.js | sed "/app.prop/a  restBaseUrl: \"$API_URL\"," > /usr/share/nginx/html/properties2.js
mv /usr/share/nginx/html/properties2.js /usr/share/nginx/html/properties.js

/etc/init.d/nginx start
tail -f /var/log/nginx/access.log 
