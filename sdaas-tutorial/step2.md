Now we want to access ISTAT open data portal an learn information about all asian communities in the Milan area in Italy.

We want to use our vocabulary to describe our knowledge base,
so we transform ISTAT data in  information described with our profile language based on [schema.org](http://schema.org).

Just create  file "istat.construct":
``cat <<EOT > istat.construct
PREFIX ter: <http://datiopen.istat.it/odi/ontologia/territorio/>
PREFIX cen: <http://datiopen.istat.it/odi/ontologia/censimento/>
PREFIX schema: <http://schema.org/>
PREFIX myschema: <http://schema.mycompany.com/>

CONSTRUCT {
    ?city a schema:City;
        schema:name ?name ;
        schema:sameAs ?loc;
        schema:identifier ?cod_istat_com;
        myschema:popolazioneAsiatica ?asiatici;
}
WHERE {
    SERVICE <http://datiopen.istat.it/sparql/oracle> {
        ?loc a ter:COM ;
        	ter:provincia_di_COM ?provincia  ;
            ter:haNome ?name ;
        	ter:haCodIstat ?cod_istat_com;
        	ter:haIndicatoreCensimento ?o . 
        ?o cen:provieneDa cen:Asia ; 
           cen:haStranieriApolidiResidentiItalia ?asiatici.
        FILTER(?asiatici > 0)
        FILTER(?provincia = <http://datiopen.istat.it/odi/risorsa/territorio/province/Milano> )
        BIND( IRI(CONCAT("http://data.mycompany.com/resource/city_", ?cod_istat_com)) AS ?city)
    } 
}
EOT
```{{execute}}

then load it in the SDaaS platform with the command:

`SD_EVAL_CONSTRUCTOR http://datiopen.istat.it @istat.construct`{{execute}}

Great, now [test that your knowledge base contains data about Milan city](https://[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com/sdaas/#explore:kb:http://data.mycompany.com/resource/city_015146)

