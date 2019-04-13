#!/bin/bash

apt-get update
apt-get install apache2 --yes
cat <<EOF> /var/www/html/index.html
<html>
  <body>
    <h1>METHYL CLOUD INTRANET</h1>
    <p>Version: 1</p>
  </body>
</html>
EOF
service apache2 start
