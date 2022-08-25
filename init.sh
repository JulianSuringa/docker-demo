#! /bin/bash
echo """
==================================================
  Creating certificate for web.example.com
==================================================
"""
mkcert web.example.com

echo """
==================================================
  Copying web.example.com certificates to ./nginx/certs
==================================================
"""

cp ./web.example.com.pem ./nginx/certs/web.example.com.crt
cp ./web.example.com-key.pem ./nginx/certs/web.example.com.key
echo """
==================================================
  Creating certificate for api.example.com
==================================================
"""
mkcert api.example.com

echo """
==================================================
  Copying foo.test certificates to ./nginx/certs
==================================================
"""

cp ./api.example.com.pem ./nginx/certs/api.example.com.crt
cp ./api.example.com-key.pem ./nginx/certs/api.example.com.key

echo """
==================================================
  Add the following to /etc/hosts file:

  127.0.0.1 web.example.com
  127.0.0.1 api.example.com
==================================================
"""

rm ./web.example.com.pem
rm ./web.example.com-key.pem
rm ./api.example.com.pem
rm ./api.example.com-key.pem 