Now we get additional information from wikidata, the portal that provides information to wikipedia.

We create  file "wikidata.construct":

`cat wikidata.construct`{{execute}}

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR http://wikipedia.org/ @wikidata.construct`{{execute}}

Navigate again [data about Milan city](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/#explore:kb:http://data.mycompany.com/resource/city_015146)

Navigate again the [Milan city node](
http://lodview.it/lodview/?IRI=http%3A%2F%2Fdata.mycompany.com%2Fresource%2Fcity_015146&sparql=https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/sdaas/sparql in your new knowledge base. As you can see, the knowledge base now knows the global population for all the cities of Milan area in Italy.
