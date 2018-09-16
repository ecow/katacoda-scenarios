echo "creating iperspace..."

mkdir workspace

cat <<EOT > workspace/istat.construct
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


cat <<EOT > workspace/wikidata.construct
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX schema: <http://schema.org/>
PREFIX myschema: <http://schema.mycompany.com/>

CONSTRUCT {
    ?city a schema:City;
        schema:sameAs ?comune_italiano;
        myschema:popolazione ?popolazione;
}
WHERE {
    SERVICE <https://query.wikidata.org/sparql> {
	  ?comune_italiano wdt:P31 wd:Q747074 ;
	  	wdt:P635 ?codice_ISTAT ;
	    wdt:P1082 ?popolazione
	  BIND( IRI(CONCAT("http://data.mycompany.com/resource/city_", ?codice_ISTAT)) AS ?city)  
	}	
}
EOT


docker pull linkeddatacenter/sdaas-ce:latest
