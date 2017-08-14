# docker-compose-install

 Boring but useful

Install the latest docker engine.


## Example Playbook

```yml
---
  - hosts:
      - myhost.blahblah.
    sudo: yes
    gather_facts: true

    roles:
      - marcelocorreia.docker-compose-install

```

