Now we access to the ISTAT open data portal to learn information about all the asian communities in the Milan area in Italy.

We use [schema.org](http://schema.org) vocabulary to describe our knowledge base.

Just create  file "istat.construct":

`cat istat.construct`{{execute}}

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR http://datiopen.istat.it/ @istat.construct`{{execute}}

Great, [your knowledge base contains data about Milan city](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/#explore:kb:http://data.mycompany.com/resource/city_015146) and about all other cities in the Milan area (about 450 cities).

