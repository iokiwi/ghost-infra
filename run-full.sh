openstack stack delete simon-web-dev -y --wait
openstack stack create -t infrastructure/stack.yml simon-web-dev --wait
sleep 30
pushd ansible
ansible-playbook playbooks/init.yml
ansible-playbook playbooks/main.yml
popd
