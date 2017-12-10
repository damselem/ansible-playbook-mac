# Usage

## Install role dependencies

```
bin/galaxy
```

## Run playbook in production

```
ansible-playbook playbook.yml --ask-sudo-pass --ask-vault-pass
```

## Run playbook in development

```
vagrant up
ansible-playbook playbook.yml --ask-vault-pass
```
