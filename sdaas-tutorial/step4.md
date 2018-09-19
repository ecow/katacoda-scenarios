Lets's write our first SPARQL query.

SPARQL is the standard language, defined by W3C, to interact with a knowledge base. More or less, it is like SQL for relational dbs.

This query creates a table, with the three cities with more asian people:

`cat asian_communities.sparql`{{execute}}

Get the result in csv format with the command:

`SD_SPARQL_QUERY text/csv @asian_communities.sparql`{{execute}}

Great. You got the answer to the first of our questions (*Where are the  three most important communities of asian people in the area of Milan in Italy?*).
