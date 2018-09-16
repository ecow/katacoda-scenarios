SDaaS community edition is a light version of the full LinkedData.Center SDaaS platform.
sdaas-ce is available as an open source in a  docker container downloadable from docker-hub.


## Connect to the SDaaS platform

`docker exec -ti sdaas bash`{{execute}}

## Execute SDaaS Cli interface

SDaaS is provided with a command line that extends the standard bash unix shell

`sdaas`{{execute}}

You will get the prompt of sdaas command line interface:

`sdaas > `

## Connect to the SDaaS web workbench

The SDaaS-ce plaform includes an istance of blazergraph. Blazegraph provides a SPARQL interface to the knowledge base and an interactive workbench.

[connect to the blazegraph workbench](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas)
