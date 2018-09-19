SDaaS community edition is a light version of the full LinkedData.Center SDaaS platform and is available as a docker container.

## Connect to the SDaaS platform

Install  SDaaS community edition:

`docker run --name ldc -d -p 80:8080 -v /root:/workspace linkeddatacenter/sdaas-ce`{{execute}}

Wait the complention of the platform installation (it take some time). At prompt type:

`docker exec -ti ldc sdaas`{{execute}}

to enter the command line interface (CLI)
