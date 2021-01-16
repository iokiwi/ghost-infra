# Deploy Ghost

# Provision

```bash
openstack stack create -t infrastructure/stack.yml simon-web-dev
```

```bash
openstack stack create -t infrastructure/stack.yml -e infrastructure/env/prod.yml simon-web-dev
```

# Deploy

```bash
cd ansible
ansible-playbook -i hosts playbooks/init.yml
```
