# jtprogru.sample_role

[![Ansible Molecule](https://github.com/jtprogru/sample-role/actions/workflows/molecule.yml/badge.svg)](https://github.com/jtprogru/sample-role/actions/workflows/molecule.yml)
[![Release to Ansible Galaxy](https://github.com/jtprogru/sample-role/actions/workflows/galaxy.yml/badge.svg)](https://github.com/jtprogru/sample-role/actions/workflows/galaxy.yml)
[![TODO 2 Issue](https://github.com/jtprogru/sample-role/actions/workflows/todo.yml/badge.svg)](https://github.com/jtprogru/sample-role/actions/workflows/todo.yml)
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
