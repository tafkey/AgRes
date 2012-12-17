LEVEL 2
-------

#### DATE element

Is it W3CDTF or RFC5646? Is it dcterms or voa3r? Check Cleo's mail of July 2nd:

    <dcterms:date xsi:type="dcterms:W3CDTF">2011</dcterms:date>
    <!--
    	<dcterms:language xsi:type="dcterms:RFC5646">en</dcterms:language>
      	FIXME: maybe we should change the XSD to allow for the previous to validate...
	-->


#### DCTERMS:IDENTIFIER

Change this? :

	<!--
		<dcterms:identifier xsi:type="info:DOI">10.1007/s11240-010-9904-4</dcterms:identifier>
		FIXME: maybe this requires also for a change to the XSD...
	-->

										
#### DCTERMS:FORMAT

Change this? :

	<!--
    	<dcterms:format xsi:type="dcterm.IMT">application/octet-stream</dcterms:format>
     	FIXME: maybe this requires also for a change to the XSD...
	-->


#### LANG IN ABSTRACT?

Change this? :

	<!--
    	<dcterms:abstract lang="en">The development of alternative selection systems without antibiotic resistance genes is a ...</dcterms:abstract>
      	Validator complaints that: Attribute 'lang' is not allowed to appear in element 'dcterms:abstract'.
      	FIXME: Maybe this should be allowed!!!
	-->


#### WHY THE XSD SEQUENCE ???

Check this with Nikos! :

	<!--
    	<dcterms:type xsi:type="voa3r:ContentType">Article</dcterms:type>
	-->
	<!--
		FIXME: As it stands now with the XSD, the type must appear before the license...
	-->


#### PeerReviewStatus

Fix this! :

	<!--
    	<voa3r:reviewStatus xsi:type="voa3r:peerReviewStatus" />
    	<voa3r:reviewStatus xsi:type="voa3r:PeerReviewStatus" />
    	FIXME: Neither of the above validates... The 2nd should!
	-->



LEVEL 4
-------

#### Minor change in dcmi-dsp.xsd

Change VOA3R-level4-dsp.xml to refer to adapted XSD (dcmi-dsp.xsd - line 54):

	<!--
	+++ Tasos: need to change this, it doesn't follw the spec!
    name="VocabularyEncodingSchemeURI" type="xsd:anyURI"
	-->
    name="VocabularyEncodingScheme" type="xsd:anyURI"

