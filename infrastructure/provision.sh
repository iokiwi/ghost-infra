server_name="simon-web-2"
floating_ip="103.250.243.8"

volume_name="${server_name}-volume"

openstack volume create \
  --image "ubuntu-20.04-x86_64" \
  --size "15" \
  --bootable \
  $volume_name

volume_id=$(openstack volume show $volume_name -f value -c id)

openstack server create \
  --flavor c1.c1r1 \
  --volume $volume_id \
  --network 7c69520f-408e-4362-867f-294a15966656  \
  --key-name simon-mba  \
  --security-group 'default'  \
  --security-group 'HTTP_INGRESS_ANY' \
  --security-group 'SSH_INGRESS_ANY' \
  --security-group 'HTTPS_INGRESS_ANY' \
  $server_name

watch -n 2 -d openstack server show $server_name

openstack server add floating ip \
  $server_name $floating_ip
