# private ip service


Boring but useful

Creates Systemd oneshot service that writes the private ip to /etc/default/private-ip.

```bash
$> cat /etc/default/private-ip
172.0.1.1
```

Usage

```yml
roles:
    - { role: marcelocorreia.private-ip-service }
```

# private-ip-service
