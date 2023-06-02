#!/usr/bin/env bash

/bin/ln -f scripts/amd64.sh ../bento/packer_templates/ubuntu/scripts/homestead.sh
/bin/ln -f http/preseed.cfg ../bento/packer_templates/ubuntu/http

sed -i '' -e 's/scripts\/cleanup.sh/scripts\/homestead.sh/' ../bento/packer_templates/ubuntu/ubuntu-22.04-amd64.json
sed -i '' -e 's/"cpus": "1"/"cpus": "2"/' ../bento/packer_templates/ubuntu/ubuntu-22.04-amd64.json
sed -i '' -e 's/"boot_wait": "5s"/"boot_wait": "3s"/' ../bento/packer_templates/ubuntu/ubuntu-22.04-amd64.json
sed -i '' -e 's/"memory": "1024"/"memory": "2048"/' ../bento/packer_templates/ubuntu/ubuntu-22.04-amd64.json
sed -i '' -e 's/"disk_size": "65536"/"disk_size": "524288"/' ../bento/packer_templates/ubuntu/ubuntu-22.04-amd64.json
sed -i '' -e '/\/_common\/motd.sh/d' ../bento/packer_templates/ubuntu/ubuntu-22.04-amd64.json
