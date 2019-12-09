echo 'wfLoadExtension( "LinkedWiki" );

wfLoadExtension( "Push", "${DOLLAR}IP/extensions/LinkedWiki/bundle/Push/extension.json" );
wfLoadExtension( "NamespaceRelations", "${DOLLAR}IP/extensions/LinkedWiki/bundle/NamespaceRelations/extension.json" );

${DOLLAR}wgLinkedWikiOSMAccessToken = "pk.eyJ1IjoibC12aW5jZW50LWwiLCJhIjoiY2pzMWtlNG90MXA5cTQ5dGYwNDRyMDRvayJ9.RhYAa9O0Qla5zhJAb9iwJA";
${DOLLAR}wgLinkedWikiConfigSPARQLServices["https://sparql.topo.transport.data.gouv.fr/bigdata/sparql"] = array(
	"debug" => false,
	"isReadOnly" => true,
	"endpointRead" => "https://sparql.topo.transport.data.gouv.fr/bigdata/sparql",
);
${DOLLAR}wgLinkedWikiSPARQLServiceByDefault= "https://sparql.topo.transport.data.gouv.fr/bigdata/sparql";
' >> /LocalSettings.php.template
