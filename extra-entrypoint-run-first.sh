echo 'wfLoadExtension( "LinkedWiki" );

wfLoadExtension( "Push", "${DOLLAR}IP/extensions/LinkedWiki/bundle/Push/extension.json" );
wfLoadExtension( "NamespaceRelations", "${DOLLAR}IP/extensions/LinkedWiki/bundle/NamespaceRelations/extension.json" );

${DOLLAR}wgLinkedWikiOSMAccessToken = "pk.eyJ1IjoibC12aW5jZW50LWwiLCJhIjoiY2pzMWtlNG90MXA5cTQ5dGYwNDRyMDRvayJ9.RhYAa9O0Qla5zhJAb9iwJA";
${DOLLAR}wgLinkedWikiConfigSPARQLServices["http://wdqs-proxy/bigdata/sparql"] = array(
	"debug" => false,
	"isReadOnly" => true,
	"endpointRead" => "http://wdqs-proxy/bigdata/sparql",
);
${DOLLAR}wgLinkedWikiSPARQLServiceByDefault= "http://wdqs-proxy/bigdata/sparql";
' >> /LocalSettings.php.template
