Let's do the same for the other questions:

This query answers the second question (*What is the size of asian community in Milan Area?*)
 
`cat asians_in_milan_area.sparql`{{execute}}

And this, answers the third (*What are the ten cities in Milan area with the high density of asian people?*)

`cat asians_density.sparql`{{execute}}

Try yourself and see the results in the terminal window:

`SD_SPARQL_QUERY text/csv @asians_in_milan_area.sparql`{{execute}}

`SD_SPARQL_QUERY text/csv @asians_density.sparql`{{execute}}
