# docker-install. Boring but useful

Install the latest docker engine.


## Example Playbook

```
  - hosts:
      - myhost.blahblah.
    sudo: yes
    gather_facts: true

    roles:
      - marcelocorreia.docker-install

```

## Default variables

```
docker_user: docker
docker_group: docker
```
