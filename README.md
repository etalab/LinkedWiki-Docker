# LinkedWiki-Docker
Dockerfile for wikimedia extension LinkedWiki

This extension makes it possible to embbed sparql query into a wikibase instance.

For example, in topo.transport.data.gouv.fr (a wikibase instance focused on transport), you can display a map with all the stops with:

```
{{#sparql:
SELECT ?lat ?long ?oLabel  WHERE {
  ?o p:P17 ?coord.
  ?coord psv:P17 ?coord_value.
  ?coord_value wikibase:geoLatitude ?lat;
    wikibase:geoLongitude ?long.
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}
|endpoint=http://localhost:8989/bigdata/sparql
|chart=leaflet.visualization.Map
|options=width=100%!height=500px
|log=2
}}
```
