Now we get additional information from wikidata, the portal that provides information to wikipedia.

We create  file "wikidata.construct":

`cat wikidata.construct`{{execute}}

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR http://wikipedia.org/ @wikidata.construct`{{execute}}

Navigate again [data about Milan city](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/#explore:kb:http://data.mycompany.com/resource/city_015146)

As you see the knowledge base now knows also the global population for all the cities of Milan area in Italy.
