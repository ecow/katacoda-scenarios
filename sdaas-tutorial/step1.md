SDaaS community edition  is a light version of the full LinkedData.Center SDaaS platform.
sdaas-ce is available as an open source in a  docker container downloadable from docker-hub.

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

you will see a running container with the name **sdaas**

The SDaaS-ce plaform include an istance of blazergraph as graph database.

Now you should be able [connect to the graph database workbench](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas)

## Connect to the SDaaS Cli interface

`docker exec -ti sdaas sdaas`{{execute}}

You shoud get the prompt of sddas command line interface:

`sdaas > `