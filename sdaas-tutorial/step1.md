SDaaS community edition is a light version of the full LinkedData.Center SDaaS platform.
sdaas-ce is available as an open source in a  docker container downloadable from docker-hub.


## Connect to the SDaaS platform

Wait the complention of the platform installation (it take some time). At prompt type:

`docker exec -ti sdaas bash`{{execute}}

This connects you to your private instance of SDaaS.


## Execute SDaaS Cli interface

SDaaS provides a command line that extends the standard bash unix shell

`sdaas`{{execute}}

You will get the prompt of sdaas command line interface:

`sdaas > `

## Connect to the SDaaS web workbench

The SDaaS-ce plaform includes an istance of a RDF graph database built on blazegraph. Blazegraph provides a SPARQL interface to the knowledge base and an interactive workbench.

[connect to the blazegraph workbench](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas)

The sparql endpoint for REST Apis access to the knowledge base is https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/sparql . The sparql endpoint support all SPARQ 1.1 specification.
