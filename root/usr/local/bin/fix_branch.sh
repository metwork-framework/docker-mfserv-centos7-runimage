#!/bin/bash

B=$1

cat >/etc/yum.repos.d/metwork.repo <<EOF
[metwork]
name=MetWork
baseurl=http://metwork-framework.org/pub/metwork/continuous_integration/rpms/${B}/portable/
gpgcheck=0
enabled=1
metadata_expire=0
EOF

if test "$B" = "release_0.9"; then
  cat /etc/cont-init.d/download_mfserv_plugins |sed "s~@@@PLUGINS@@@~external_plugins~g" >/etc/cont-init.d/download_mfserv_plugins.new
else
  cat /etc/cont-init.d/download_mfserv_plugins |sed "s~@@@PLUGINS@@@~plugins~g" >/etc/cont-init.d/download_mfserv_plugins.new
fi
mv -f /etc/cont-init.d/download_mfserv_plugins.new /etc/cont-init.d/download_mfserv_plugins
