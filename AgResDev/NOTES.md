<http://dublincore.org/documents/dc-ds-xml/>

<https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=ind1004&L=dc-architecture&D=0&P=2072>

<https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=ind1004&L=dc-architecture&P=R1037&1=dc-architecture&9=A&J=on&d=No+Match%3BMatch%3BMatches&z=4>

Pete Johnson
<https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=ind1004&L=dc-architecture&D=0&P=6564>


<http://dublincore.org/documents/2008/03/31/dc-dsp/>
<http://dublincore.org/documents/2008/11/03/profile-guidelines/>


e-prints AP (SWAP): <http://www.ukoln.ac.uk/repositories/digirep/index/Eprints_Application_Profile>
and <http://dublincore.org/scholarwiki/SWAPDSP?action=DSP2XML>

ISB DSP: <http://wiki.dublincore.org/index.php/DCAM_Revision_Design_Patterns>


??? Is it possible to **overload** a property??? Probably **not!**
<<https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=ind0809&L=dc-rda&D=0&P=8289>>

<http://dublincore.org/architecturewiki/DcamInContext>

Work in progress: <http://dublincore.org/architecturewiki/DCAM-2.0>


### Difference between literal and non-literal values
<http://dublincore.org/documents/2008/11/03/profile-guidelines/#appc>
... "Properties with anything other than a "literal" range are said to have a "non-literal" range. Examples of properties with a "non-literal" range include dcterms:license, with the range dcterms:LicenseDocument, and foaf:holdsAccount, with the range foaf:OnlineAccount. Where literal-range properties may be simpler to process, non-literal-range properties are more flexible and extensible. In descriptive metadata, literal values constitutes "terminals" (in the sense of "end point"); the value string "Mary Jones" cannot itself be the starting point for any further description of the person Mary Jones. A non-literal value, in contrast, has hooks to which one may attach any number of additional pieces of information about the person Mary Jones, such as her email address, institutional affiliation, and date of birth. Potentially, non-literal values can be represented by any combination of the following:"
* A plain or typed value string (Value String in the DCMI Abstract Model) -- and not just one, but potentially several in parallel, as in the case of a title rendered in English, French, and Japanese.
* A URI identifying the value resource (Value URI).
* A URI identifying an enumerated set (or controlled vocabulary) of which the value is a member (Vocabulary Encoding Scheme URI).




### EXAMPLE 

> LINE 31: invalid propertyURI (not in DSP)
<!--    <dcds:statement dcds:propertyURI="http://id.loc.gov/vocabulary/relators/edt" dcds:valueURI="http://voa3r.eu/people/12/foaf" /> -->

> LINE 72:       <dcds:literalValueString xml:lang="en">Organic</dcds:literalValueString>



> LINE 91: vesURI ???

> LINE 178: Organisation needs to become AGENT!!!
    <!-- <dcds:statement dcds:propertyURI="http://purl.org/dc/terms/type" dcds:valueURI="http://xmlns.com/foaf/0.1/Organization" /> -->
    <dcds:statement dcds:propertyURI="http://www.w3.org/1999/02/22-rdf-syntax-ns#type" dcds:valueURI="http://xmlns.com/foaf/0.1/Agent"/>



> LINE 153: some for LINE 153 (person --> AGENT)


> LINE 192: (metametadata) <dcds:statement dcds:propertyURI="http://purl.org/dc/terms/types"> --> type


### DSP
> Had to change standalone=yes to standalone = both ...
  The error that was reported was this one:
<report test=
"/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or 
/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]">
    <statement>Error: Description Element: 1 Resource is referred to as value, but description template specifies standalone="yes"</statement>
  </report>


### ERRORS: 

DE:1 SE: 9 	SES URI must be from list specified by statement template dt-1-stp-8-identifier-
DE:1 SE: 10 SES URI must be from l      <dcds:ValueString dcds:sesURI='http://voa3r.eu/terms/EncodedSchema'>ISBN:91-576-6485-4</dcds:ValueString>
ist specified by statement template dt-1-stp-8-identifier-
DE:1 SE: 13 DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-11-isShownAt-
DE:1 SE: 14 SES URI must be from list specified by statement template dt-1-stp-12-subject-
DE:1 SE: 15 SES URI must be from list specified by statement template dt-1-stp-12-subject-
DE:1 SE: 18 Minimum number of Value String Elements matching statement template dt-1-stp-15-bibliographicCitation- not present.  Present: 0 Minimum required: 1
DE:1 SE: 18 SES URI must be from list specified by statement template dt-1-stp-15-bibliographicCitation-
DE:1 SE: 22 Literal Value String element required by statement template dt-1-stp-19-license-

DE:1 Description Element contains 1 Statement Elements with no matching statement template 
DE:2 Description Element contains 2 Statement Elements with no matching statement template 
DE:3 Description Element contains 2 Statement Elements with no matching statement template 
DE:4 Description Element contains 2 Statement Elements with no matching statement template 
DE:5 Description Element contains 1 Statement Elements with no matching statement template 


FIXED:

> identifier element.... check it out!!!
DE:1 SE: 9 	DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-8-identifier-


> date issue
DE:1 SE: 7 	SES URI must be from list specified by statement template dt-1-stp-6-date-
DE:4 SE: 3 	SES URI must be from list specified by statement template dt-3-stp-3-date-






<report test="count(dcds:statement[not(
(@dcds:propertyURI='http://purl.org/dc/terms/title') or 
(@dcds:propertyURI='http://purl.org/dc/terms/alternative') or 
(@dcds:propertyURI='http://purl.org/dc/terms/creator') or 
(@dcds:propertyURI='http://purl.org/dc/terms/publisher') or 
(@dcds:propertyURI='http://purl.org/dc/terms/date') or 
(@dcds:propertyURI='http://purl.org/dc/terms/language') or 
(@dcds:propertyURI='http://purl.org/dc/terms/identifier') or 
(@dcds:propertyURI='http://purl.org/dc/terms/format') or 
(@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy') or 
(@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt') or 
(@dcds:propertyURI='http://purl.org/dc/terms/subject') or 
(@dcds:propertyURI='http://purl.org/dc/terms/description') or 
(@dcds:propertyURI='http://purl.org/dc/terms/abstract') or 
(@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation') or 
(@dcds:propertyURI='http://purl.org/dc/terms/type') or 
(@dcds:propertyURI='http://purl.org/dc/terms/rights') or 
(@dcds:propertyURI='http://purl.org/dc/terms/accessRights') or 
(@dcds:propertyURI='http://purl.org/dc/terms/license') or 
(@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus') or 
(@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus') or 
(@dcds:propertyURI='http://purl.org/dc/terms/relation') or 
(@dcds:propertyURI='http://purl.org/dc/terms/conformsTo') or
(@dcds:propertyURI='http://purl.org/dc/terms/references') or 
(@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy') or 
(@dcds:propertyURI='http://purl.org/dc/terms/hasPart') or 
(@dcds:propertyURI='http://purl.org/dc/terms/isPartOf') or 
(@dcds:propertyURI='http://purl.org/dc/terms/hasVersion') or 
(@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf') or 
(@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation') or 
(@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf') or 
(@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata') or 
(@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'))])">
<statement>Error: Description Element: 1 Description Element contains 2 Statement Elements with no matching statement template </statement>
</report>
