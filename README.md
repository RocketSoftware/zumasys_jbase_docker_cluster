# jBASE Always On Docker

This docker will be a full jBASE cluster

db1 - Database Server (primary) running jRFS and jLOGDUP primary
db2 - Database Server (secondary) running jRFS and jLOGDUP secondary
web - Client/jAGent web server

Current command to run environment

```
docker-compose --verbose up --build
```

Next Steps

* jDLS (master/slave)
* jRF  (setup Server and client to call jRF)
* Setup client app
* Setup proxy Device to get in to both SSH and Web
* Setup secondary App server
* test fail over




