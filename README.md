# obs-webserver
Observability to webserver


To create your local environment:

```
sudo docker network create --subnet 192.168.100.0/24 my-net
docker container run --detach --network my-net --ip 192.168.100.50 --publish 8000:80 --name webserver nginx
```

Inspect network output will be similiar to: 


out put will be similitar to:

```
[
    {
        "Name": "my-net",
        "Id": "-",
        "Created": "...",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
        ...
    }
]

```