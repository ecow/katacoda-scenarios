Lets's write our first SPARQL query.

SPARQL query is the standard language, defined by W3C to interrogate a knowledge base. It is like SQL for relational db.

This query create a table, with the three cities with more asian people:

`cat asian_comminities.query`{{execute}}

Get the result as csv with the command:

`SD_SPARQL_QUERY text/csv @asian_comminities.query`{{execute}}

Great, we got an answer to the firs of our questions.
