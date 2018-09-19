SDaaS community edition is a light version of the full LinkedData.Center SDaaS platform.
sdaas-ce is available as a docker container.

## Connect to the SDaaS platform

Install  SDaaS community edition (you require docker):

`docker run --name ldc -d -p 80:8080 -v /root:/workspace linkeddatacenter/sdaas-ce`{{execute}}


Wait the complention of the platform installation (it take some time). At prompt type:

`docker exec -ti ldc sdaas`{{execute}}

