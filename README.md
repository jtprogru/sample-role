# jtprogru.sample_role

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/jtprogru/sample-role/CI?label=CI) ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/jtprogru/sample-role/Release?label=Release) ![GitHub](https://img.shields.io/github/license/jtprogru/sample-role) [![Ansible Role](https://img.shields.io/ansible/role/54364)](https://galaxy.ansible.com/jtprogru/sample-role/)

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

## Author

Michael Savin aka `@jtprogru`

Twitter: [![Twitter Follow](https://img.shields.io/twitter/follow/jtprogru?color=gree&style=plastic)](https://twitter.com/jtprogru/)

## License

See [LICENSE](LICENSE.md)
