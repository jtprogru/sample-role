# jtprogru.sample_role

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/jtprogru/sample-role/Ansible+Molecule?label=Ansible+Molecule)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/jtprogru/sample-role/Release+to+Ansible+Galaxy?label=Release+to+Ansible+Galaxy)
![GitHub](https://img.shields.io/github/license/jtprogru/sample-role)
[![Ansible Role](https://img.shields.io/ansible/role/54362)](https://galaxy.ansible.com/jtprogru/sample-role/)
[![GitHub tag](https://img.shields.io/github/tag/jtprogru/sample-role.svg)](https://github.com/jtprogru/sample-role/tags)

This is sample ansible role used me as boilerplate.


## Role Variables


See [`defaults/main.yml`](defaults/main.yml).


## Example Playbook

Example playbook:
```yaml
---
- name: Sample play
  hosts: all
  become: true

  vars:
    foo: bar

  roles:
    - jtprogru.sample_role
```

## Authors

- Michael Savin
  - :octocat: [@jtprogru](https://www.github.com/jtprogru)
  - :bird: [@jtprogru](https://www.twitter.com/jtprogru)
  - :moneybag: [savinmi.ru](https://savinmi.ru)

## License

See [LICENSE](LICENSE.md)
