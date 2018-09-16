Now we want to access ISTAT open data portal an learn information about all asian communities in the Milan area in Italy.

We want to use our vocabulary to describe our knowledge base,
so we transform ISTAT data in  information described with our profile language based on [schema.org](http://schema.org).

Just create  file "istat.construct":

`cat istat.construct`{{execute}}

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR http://datiopen.istat.it @istat.construct`{{execute}}

Great, now [test that your knowledge base contains data about Milan city](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/#explore:kb:http://data.mycompany.com/resource/city_015146)

