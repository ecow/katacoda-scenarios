Now we access to the ISTAT open data portal to get information about all the asian communities in the Milan area in Italy. We use [schema.org](http://schema.org) vocabulary to describe our knowledge base.

Just create the file "istat.construct":

`cat istat.construct`{{execute}}

then let the SDaaS platform to learn data:

`SD_EVAL_CONSTRUCTOR http://datiopen.istat.it/ @istat.construct`{{execute}}

The SDaaS-ce plaform includes an istance of a RDF graph database with a SPARQL enpoint at https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/sdaas/sparql . 

Navigate the [Milan city node](
http://lodview.it/lodview/?IRI=http%3A%2F%2Fdata.mycompany.com%2Fresource%2Fcity_015146&sparql=https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/sdaas/sparql in your new knowledge base
