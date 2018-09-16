Now we want to access ISTAT open data portal an learn information about all asian communities in the Milan area in Italy.

We want to use our vocabulary to describe our knowledge base,
so we transform ISTAT data in  information described with our profile language based on [schema.org](http://schema.org).

Just edit file "istat.construct":

<pre class="file" data-filename="istat.construct" data-target="replace">PREFIX ter: <http://datiopen.istat.it/odi/ontologia/territorio/>
PREFIX cen: <http://datiopen.istat.it/odi/ontologia/censimento/>
PREFIX schema: <http://schema.org/>
PREFIX myschema: <http:schema.mycompany.com/>

CONSTRUCT {
    ?comune a schema:City; schema:containsPlace ?loc.
    ?loc a schema:Place; myschema:popolazioneAsiatica ?asiatici.
}
WHERE {
    SERVICE <http://datiopen.istat.it/sparql/oracle> {
        ?loc a ter:LOC ;
        	ter:provincia_di_LOC <http://datiopen.istat.it/odi/risorsa/territorio/province/Milano> ;
        	ter:haIndicatoreCensimento ?o . 
        ?o cen:provieneDa cen:Asia ; 
           cen:haStranieriApolidiResidentiItalia ?asiatici
        FILTER(?asiatici > 0)
    } 
}
</pre>

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR "urn:istat" @istat.construct`{{execute}}

Great, now [test that your knowledge base contains data about Milan city](http://datiopen.istat.it/odi/risorsa/territorio/province/Milano(https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/#explore:kb:%3Chttp://datiopen.istat.it/odi/risorsa/territorio/comuni/Milano%3E)

