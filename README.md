# Deploy Ghost

![Workflow Status](https://github.com/iokiwi/ghost-infra/workflows/.github/workflows/deploy_dev.yml/badge.svg)

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
ansible-playbook playbooks/init.yml
ansible-playbook playbooks/main.yml
```
