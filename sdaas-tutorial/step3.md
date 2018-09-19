Now we create  file "wikidata.construct" to get some data from wikipedia:

`cat wikidata.construct`{{execute}}

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR http://wikipedia.org/ @wikidata.construct`{{execute}}

Navigate again the [Milan city node](
http://lodview.it/lodview/?IRI=http%3A%2F%2Fdata.mycompany.com%2Fresource%2Fcity_015146&sparql=https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/sdaas/sparql) in your new knowledge base. As you can see, now the knowledge base  knows the global population for all the cities of Milan area in Italy.
