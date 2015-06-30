## Terraform Docker

Run this to see what Terraform will do on an `apply`:

```bash
$ tf plan
...
```

Now lets actually `apply`:

```bash
$ tf apply
...
```

Checking `docker ps`, you should see your running container:

```bash
$ docker ps
$ docker ps
CONTAINER ID        IMAGE                                                              COMMAND                CREATED             STATUS              PORTS                    NAMES
c43cc80ef3cd        328d9d8ed9f09f372f3caa69fdde73e9d6950112a95c76de006324b60a22edd4   "/bin/sh -c ./pingse   3 seconds ago       Up 3 seconds        0.0.0.0:4000->4000/tcp   pinger
```

Now navigate to `http://192.168.59.103:4000` (change this IP to your docker host's IP address)

