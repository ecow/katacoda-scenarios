SDaaS community edition () is a light version of the full LinkedData.Center SDaaS platform.
sdaas-ce is available as an open source  docker container in docker-hub.

## Verify that you have a running docker

`docker --version`{{execute}}

You should get something as:

`Docker version 18.05.0-ce, build f150324`

Any docker 18+ is good enough to run sdaas-ce.


## Execute the SDaaS platform

run:

`docker run --name sdaas -d -p 8889:8080 -v $PWD/.:/workspace linkeddatacenter/sdaas-ce`{{execute}}

This will create all required service. Check that the platform is running with the command:

`docker ps`{{execute}}

you should see a running container with the name **sdaas**

The SDaaS-ce plaform include an istance of blazergraph as graph database.

Now you should be able [connect to the graph database workbench](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas)

## Connect to the SDaaS Cli interface

`docker exec -ti sdaas sdaas`{{execute}}

you should get something as:

```
sdaas Sun Sep 16 11:48:50 UTC 2018 - SD_START_LOGGING logging .cache/session_60.log
sdaas Sun Sep 16 11:48:50 UTC 2018 - SD_START_LOGGING debug info in .cache/session_60.debug
sdaas Sun Sep 16 11:48:50 UTC 2018 - LinkedData.Center SDaaS platform using kb graph technology.
sdaas >
```
