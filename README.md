# Usage

## Requirements

```
sudo easy_install pip
pip install --user ansible
export PATH=$PATH:/Users/damselem/Library/Python/2.7/bin
```

## Install role dependencies

```
bin/galaxy
```

## Run playbook in production

```
ansible-playbook playbook.yml
```

## Run playbook in development

```
vagrant up
ansible-playbook playbook.yml
```
