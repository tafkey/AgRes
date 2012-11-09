<?xml version="1.0"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:loc="http://www.thaiopensource.com/ns/location" xmlns:err="http://www.thaiopensource.com/ns/error" xmlns:xsltc="http://www.thaiopensource.com/ns/xsltc" xmlns:osaxon="http://icl.com/saxon" xmlns:nsaxon="http://saxon.sf.net/" xmlns:xalan-node-info="http://xml.apache.org/xalan/java/org.apache.xalan.lib.NodeInfo" xmlns:dcds="http://purl.org/dc/xmlns/2008/09/01/dc-ds-xml/" version="1.0" dcds:dummy-for-xmlns="">
  <axsl:template match="/">
    <result>
      <axsl:apply-templates select="/" mode="all"/>
    </result>
  </axsl:template>
  <axsl:param name="valueURI" select="@dcds:valueURI"/>
  <axsl:param name="valueRef" select="@dcds:valueRef"/>
  <axsl:param name="valueURI" select="@dcds:valueURI"/>
  <axsl:param name="valueRef" select="@dcds:valueRef"/>
  <axsl:template match="dcds:descriptionSet" mode="M1" priority="2" name="R1.1">
    <axsl:if test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]])">
      <report test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Set Element contains <axsl:value-of select="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]])"/> Description Elements matching description template dt-1-AgResResource</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]) &gt;= 1)">
      <failed-assertion test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Minimum number of Description Elements matching description template dt-1-AgResResource not present. Present: <axsl:value-of select="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]) &lt;= 1)">
      <failed-assertion test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Maximum number of Description Elements matching description template dt-1-AgResResource exceeded. Present: <axsl:value-of select="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]])">
      <report test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Set Element contains <axsl:value-of select="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]])"/> Description Elements matching description template dt-2-agent</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]])">
      <report test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Set Element contains <axsl:value-of select="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]])"/> Description Elements matching description template dt-3-metametadata</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]])">
      <report test="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Set Element contains <axsl:value-of select="count(dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]])"/> Description Elements matching description template dt-4-research</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:description[not(dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and ((@dcds:valueURI='http://voa3r.eu/class/Resource') or (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent') or (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata') or (@dcds:valueURI='http://voa3r.eu/class/Research'))])])">
      <report test="count(dcds:description[not(dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and ((@dcds:valueURI='http://voa3r.eu/class/Resource') or (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent') or (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata') or (@dcds:valueURI='http://voa3r.eu/class/Research'))])])">
        <axsl:call-template name="location"/>
        <statement>Error: Description Set Element contains <axsl:value-of select="count(dcds:description[not(dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and ((@dcds:valueURI='http://voa3r.eu/class/Resource') or (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent') or (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata') or (@dcds:valueURI='http://voa3r.eu/class/Research'))])])"/> Description Elements with no matching description template </statement>
      </report>
    </axsl:if>
    <axsl:apply-templates select="." mode="M2"/>
  </axsl:template>
  <axsl:template match="dcds:descriptionSet" mode="all" priority="51">
    <axsl:call-template name="R1.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M1">
    <axsl:apply-templates select="." mode="M2"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]" mode="M2" priority="2" name="R2.1">
    <axsl:variable name="resourceURI" select="@dcds:resourceURI"/>
    <axsl:variable name="resourceId" select="@dcds:resourceId"/>
    <axsl:if test="/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]">
      <report test="/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Resource is referred to as value, but description template specifies standalone="yes"</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title'])"/> Statement Elements matching statement template dt-1-st-1-title-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title']) &gt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title']) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Minimum number of Statement Elements matching statement template dt-1-st-1-title- not present. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title'])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/alternative'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/alternative'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/alternative'])"/> Statement Elements matching statement template dt-1-st-2-alternative-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/creator'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/creator'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/creator'])"/> Statement Elements matching statement template dt-1-st-3-creator-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/publisher'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/publisher'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/publisher'])"/> Statement Elements matching statement template dt-1-st-4-publisher-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])"/> Statement Elements matching statement template dt-1-st-5-date-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &gt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Minimum number of Statement Elements matching statement template dt-1-st-5-date- not present. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-5-date- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language'])"/> Statement Elements matching statement template dt-1-st-6-language-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language']) &gt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language']) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Minimum number of Statement Elements matching statement template dt-1-st-6-language- not present. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language'])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier'])"/> Statement Elements matching statement template dt-1-st-7-identifier-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format'])"/> Statement Elements matching statement template dt-1-st-8-format-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-8-format- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy'])"/> Statement Elements matching statement template dt-1-st-9-isShownBy-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-9-isShownBy- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt'])"/> Statement Elements matching statement template dt-1-st-10-isShownAt-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-10-isShownAt- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/subject'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/subject'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/subject'])"/> Statement Elements matching statement template dt-1-st-11-subject-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/description'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/description'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/description'])"/> Statement Elements matching statement template dt-1-st-12-description-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/abstract'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/abstract'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/abstract'])"/> Statement Elements matching statement template dt-1-st-13-abstract-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation'])"/> Statement Elements matching statement template dt-1-st-14-bibliographicCitation-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-14-bibliographicCitation- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])"/> Statement Elements matching statement template dt-1-st-15-type-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &gt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Minimum number of Statement Elements matching statement template dt-1-st-15-type- not present. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-15-type- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/rights'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/rights'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/rights'])"/> Statement Elements matching statement template dt-1-st-16-rights-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/accessRights'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/accessRights'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/accessRights'])"/> Statement Elements matching statement template dt-1-st-17-accessRights-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/license'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/license'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/license'])"/> Statement Elements matching statement template dt-1-st-18-license-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus'])"/> Statement Elements matching statement template dt-1-st-19-reviewStatus-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-19-reviewStatus- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus'])"/> Statement Elements matching statement template dt-1-st-20-publicationStatus-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-1-st-20-publicationStatus- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/relation'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/relation'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/relation'])"/> Statement Elements matching statement template dt-1-st-21-relation-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/conformsTo'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/conformsTo'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/conformsTo'])"/> Statement Elements matching statement template dt-1-st-22-conformsTo-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/references'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/references'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/references'])"/> Statement Elements matching statement template dt-1-st-23-references-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy'])"/> Statement Elements matching statement template dt-1-st-24-isReferencedBy-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasPart'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasPart'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasPart'])"/> Statement Elements matching statement template dt-1-st-25-hasPart-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isPartOf'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isPartOf'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isPartOf'])"/> Statement Elements matching statement template dt-1-st-26-isPartOf-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasVersion'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasVersion'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasVersion'])"/> Statement Elements matching statement template dt-1-st-27-hasVersion-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf'])"/> Statement Elements matching statement template dt-1-st-28-isVersionOf-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation'])"/> Statement Elements matching statement template dt-1-st-29-hasTranslation-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf'])"/> Statement Elements matching statement template dt-1-st-30-isTranslationOf-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata'])"/> Statement Elements matching statement template dt-1-st-31-hasMetametadata-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'])"/> Statement Elements matching statement template dt-1-st-32-hasResearch-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[not((@dcds:propertyURI='http://purl.org/dc/terms/title') or (@dcds:propertyURI='http://purl.org/dc/terms/alternative') or (@dcds:propertyURI='http://purl.org/dc/terms/creator') or (@dcds:propertyURI='http://purl.org/dc/terms/publisher') or (@dcds:propertyURI='http://purl.org/dc/terms/date') or (@dcds:propertyURI='http://purl.org/dc/terms/language') or (@dcds:propertyURI='http://purl.org/dc/terms/identifier') or (@dcds:propertyURI='http://purl.org/dc/terms/format') or (@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy') or (@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt') or (@dcds:propertyURI='http://purl.org/dc/terms/subject') or (@dcds:propertyURI='http://purl.org/dc/terms/description') or (@dcds:propertyURI='http://purl.org/dc/terms/abstract') or (@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation') or (@dcds:propertyURI='http://purl.org/dc/terms/type') or (@dcds:propertyURI='http://purl.org/dc/terms/rights') or (@dcds:propertyURI='http://purl.org/dc/terms/accessRights') or (@dcds:propertyURI='http://purl.org/dc/terms/license') or (@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus') or (@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus') or (@dcds:propertyURI='http://purl.org/dc/terms/relation') or (@dcds:propertyURI='http://purl.org/dc/terms/conformsTo') or (@dcds:propertyURI='http://purl.org/dc/terms/references') or (@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy') or (@dcds:propertyURI='http://purl.org/dc/terms/hasPart') or (@dcds:propertyURI='http://purl.org/dc/terms/isPartOf') or (@dcds:propertyURI='http://purl.org/dc/terms/hasVersion') or (@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf') or (@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation') or (@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf') or (@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata') or (@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'))])">
      <report test="count(dcds:statement[not((@dcds:propertyURI='http://purl.org/dc/terms/title') or (@dcds:propertyURI='http://purl.org/dc/terms/alternative') or (@dcds:propertyURI='http://purl.org/dc/terms/creator') or (@dcds:propertyURI='http://purl.org/dc/terms/publisher') or (@dcds:propertyURI='http://purl.org/dc/terms/date') or (@dcds:propertyURI='http://purl.org/dc/terms/language') or (@dcds:propertyURI='http://purl.org/dc/terms/identifier') or (@dcds:propertyURI='http://purl.org/dc/terms/format') or (@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy') or (@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt') or (@dcds:propertyURI='http://purl.org/dc/terms/subject') or (@dcds:propertyURI='http://purl.org/dc/terms/description') or (@dcds:propertyURI='http://purl.org/dc/terms/abstract') or (@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation') or (@dcds:propertyURI='http://purl.org/dc/terms/type') or (@dcds:propertyURI='http://purl.org/dc/terms/rights') or (@dcds:propertyURI='http://purl.org/dc/terms/accessRights') or (@dcds:propertyURI='http://purl.org/dc/terms/license') or (@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus') or (@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus') or (@dcds:propertyURI='http://purl.org/dc/terms/relation') or (@dcds:propertyURI='http://purl.org/dc/terms/conformsTo') or (@dcds:propertyURI='http://purl.org/dc/terms/references') or (@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy') or (@dcds:propertyURI='http://purl.org/dc/terms/hasPart') or (@dcds:propertyURI='http://purl.org/dc/terms/isPartOf') or (@dcds:propertyURI='http://purl.org/dc/terms/hasVersion') or (@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf') or (@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation') or (@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf') or (@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata') or (@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'))])">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[not((@dcds:propertyURI='http://purl.org/dc/terms/title') or (@dcds:propertyURI='http://purl.org/dc/terms/alternative') or (@dcds:propertyURI='http://purl.org/dc/terms/creator') or (@dcds:propertyURI='http://purl.org/dc/terms/publisher') or (@dcds:propertyURI='http://purl.org/dc/terms/date') or (@dcds:propertyURI='http://purl.org/dc/terms/language') or (@dcds:propertyURI='http://purl.org/dc/terms/identifier') or (@dcds:propertyURI='http://purl.org/dc/terms/format') or (@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy') or (@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt') or (@dcds:propertyURI='http://purl.org/dc/terms/subject') or (@dcds:propertyURI='http://purl.org/dc/terms/description') or (@dcds:propertyURI='http://purl.org/dc/terms/abstract') or (@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation') or (@dcds:propertyURI='http://purl.org/dc/terms/type') or (@dcds:propertyURI='http://purl.org/dc/terms/rights') or (@dcds:propertyURI='http://purl.org/dc/terms/accessRights') or (@dcds:propertyURI='http://purl.org/dc/terms/license') or (@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus') or (@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus') or (@dcds:propertyURI='http://purl.org/dc/terms/relation') or (@dcds:propertyURI='http://purl.org/dc/terms/conformsTo') or (@dcds:propertyURI='http://purl.org/dc/terms/references') or (@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy') or (@dcds:propertyURI='http://purl.org/dc/terms/hasPart') or (@dcds:propertyURI='http://purl.org/dc/terms/isPartOf') or (@dcds:propertyURI='http://purl.org/dc/terms/hasVersion') or (@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf') or (@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation') or (@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf') or (@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata') or (@dcds:propertyURI='http://voa3r.eu/terms/hasResearch'))])"/> Statement Elements with no matching statement template </statement>
      </report>
    </axsl:if>
    <axsl:apply-templates select="." mode="M3"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]" mode="all" priority="50">
    <axsl:call-template name="R2.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M2">
    <axsl:apply-templates select="." mode="M3"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title']" mode="M3" priority="2" name="R3.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-1-title-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(dcds:literalValueString/@xml:lang)">
      <failed-assertion test="dcds:literalValueString/@xml:lang">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Language for Literal required by statement template dt-1-stp-1-title-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M4"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/title']" mode="all" priority="49">
    <axsl:call-template name="R3.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M3">
    <axsl:apply-templates select="." mode="M4"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/alternative']" mode="M4" priority="2" name="R4.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-2-alternative-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(dcds:literalValueString/@xml:lang)">
      <failed-assertion test="dcds:literalValueString/@xml:lang">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Language for Literal required by statement template dt-1-stp-2-alternative-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M5"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/alternative']" mode="all" priority="48">
    <axsl:call-template name="R4.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M4">
    <axsl:apply-templates select="." mode="M5"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/creator']" mode="M5" priority="2" name="R5.1">
    <axsl:if test="not(@dcds:valueURI or @dcds:valueRef)">
      <failed-assertion test="@dcds:valueURI or @dcds:valueRef">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either a valueURI attribute or a valueRef attribute must be present.dt-1-stp-3-creator-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:variable name="valueRef" select="@dcds:valueRef"/>
    <axsl:if test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceId = $valueRef]))">
      <report test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceId = $valueRef]))">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either the valueRef attribute value must match a resourceId attribute value, or the valueURI attribute value must match a resourceURI attribute value, on a Description Element matching the specified description template.dt-1-stp-3-creator-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:vesURI">
      <report test="@dcds:vesURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> VES URI disallowed by statement template dt-1-stp-3-creator-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 0)">
      <failed-assertion test="count(dcds:valueString) &lt;= 0">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-3-creator- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 0</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M6"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/creator']" mode="all" priority="47">
    <axsl:call-template name="R5.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M5">
    <axsl:apply-templates select="." mode="M6"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/publisher']" mode="M6" priority="2" name="R6.1">
    <axsl:if test="not(@dcds:valueURI or @dcds:valueRef)">
      <failed-assertion test="@dcds:valueURI or @dcds:valueRef">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either a valueURI attribute or a valueRef attribute must be present.dt-1-stp-5-publisher-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:variable name="valueRef" select="@dcds:valueRef"/>
    <axsl:if test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceId = $valueRef]))">
      <report test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]][@dcds:resourceId = $valueRef]))">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either the valueRef attribute value must match a resourceId attribute value, or the valueURI attribute value must match a resourceURI attribute value, on a Description Element matching the specified description template.dt-1-stp-5-publisher-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:vesURI">
      <report test="@dcds:vesURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> VES URI disallowed by statement template dt-1-stp-5-publisher-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 0)">
      <failed-assertion test="count(dcds:valueString) &lt;= 0">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-5-publisher- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 0</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M7"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/publisher']" mode="all" priority="46">
    <axsl:call-template name="R6.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M6">
    <axsl:apply-templates select="." mode="M7"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']" mode="M7" priority="2" name="R7.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-6-date-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not((dcds:literalValueString/@dcds:sesURI = 'http://purl.org/dc/terms/W3CDTF'))">
      <failed-assertion test="(dcds:literalValueString/@dcds:sesURI = 'http://purl.org/dc/terms/W3CDTF')">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> SES URI must be from list specified by statement template dt-1-stp-6-date-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M8"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']" mode="all" priority="45">
    <axsl:call-template name="R7.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M7">
    <axsl:apply-templates select="." mode="M8"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language']" mode="M8" priority="2" name="R8.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-7-language-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-7-language-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &gt;= 1)">
      <failed-assertion test="count(dcds:valueString) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Minimum number of Value String Elements matching statement template dt-1-stp-7-language- not present.  Present: <axsl:value-of select="count(dcds:valueString)"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-7-language- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M9"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/language']" mode="all" priority="44">
    <axsl:call-template name="R8.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M8">
    <axsl:apply-templates select="." mode="M9"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier']" mode="M9" priority="2" name="R9.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-8-identifier-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-8-identifier-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-8-identifier- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not((dcds:ValueString/@dcds:sesURI = 'http://voa3r.eu/terms/EncodedSchema'))">
      <failed-assertion test="(dcds:ValueString/@dcds:sesURI = 'http://voa3r.eu/terms/EncodedSchema')">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> SES URI must be from list specified by statement template dt-1-stp-8-identifier-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M10"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier']" mode="all" priority="43">
    <axsl:call-template name="R9.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M9">
    <axsl:apply-templates select="." mode="M10"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format']" mode="M10" priority="2" name="R10.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-9-format-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-9-format-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &gt;= 1)">
      <failed-assertion test="count(dcds:valueString) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Minimum number of Value String Elements matching statement template dt-1-stp-9-format- not present.  Present: <axsl:value-of select="count(dcds:valueString)"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-9-format- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M11"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/format']" mode="all" priority="42">
    <axsl:call-template name="R10.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M10">
    <axsl:apply-templates select="." mode="M11"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy']" mode="M11" priority="2" name="R11.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-10-isShownBy-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-10-isShownBy-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:vesURI">
      <report test="@dcds:vesURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> VES URI disallowed by statement template dt-1-stp-10-isShownBy-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 0)">
      <failed-assertion test="count(dcds:valueString) &lt;= 0">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-10-isShownBy- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 0</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M12"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownBy']" mode="all" priority="41">
    <axsl:call-template name="R11.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M11">
    <axsl:apply-templates select="." mode="M12"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt']" mode="M12" priority="2" name="R12.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-11-isShownAt-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-11-isShownAt-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:vesURI">
      <report test="@dcds:vesURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> VES URI disallowed by statement template dt-1-stp-11-isShownAt-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 0)">
      <failed-assertion test="count(dcds:valueString) &lt;= 0">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-11-isShownAt- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 0</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M13"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://www.europeana.eu/schemas/ese/isShownAt']" mode="all" priority="40">
    <axsl:call-template name="R12.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M12">
    <axsl:apply-templates select="." mode="M13"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/subject']" mode="M13" priority="2" name="R13.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-12-subject-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-12-subject-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-12-subject- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not((dcds:ValueString/@dcds:sesURI = 'http://voa3r.eu/terms/EncodedSchema'))">
      <failed-assertion test="(dcds:ValueString/@dcds:sesURI = 'http://voa3r.eu/terms/EncodedSchema')">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> SES URI must be from list specified by statement template dt-1-stp-12-subject-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M14"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/subject']" mode="all" priority="39">
    <axsl:call-template name="R13.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M13">
    <axsl:apply-templates select="." mode="M14"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/description']" mode="M14" priority="2" name="R14.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-13-description-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M15"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/description']" mode="all" priority="38">
    <axsl:call-template name="R14.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M14">
    <axsl:apply-templates select="." mode="M15"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/abstract']" mode="M15" priority="2" name="R15.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-14-abstract-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M16"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/abstract']" mode="all" priority="37">
    <axsl:call-template name="R15.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M15">
    <axsl:apply-templates select="." mode="M16"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation']" mode="M16" priority="2" name="R16.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-15-bibliographicCitation-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-15-bibliographicCitation-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:valueURI">
      <report test="@dcds:valueURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Value URI disallowed by statement template dt-1-stp-15-bibliographicCitation-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &gt;= 1)">
      <failed-assertion test="count(dcds:valueString) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Minimum number of Value String Elements matching statement template dt-1-stp-15-bibliographicCitation- not present.  Present: <axsl:value-of select="count(dcds:valueString)"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-15-bibliographicCitation- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not((dcds:ValueString/@dcds:sesURI = 'http://voa3r.eu/terms/EncodedSchema'))">
      <failed-assertion test="(dcds:ValueString/@dcds:sesURI = 'http://voa3r.eu/terms/EncodedSchema')">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> SES URI must be from list specified by statement template dt-1-stp-15-bibliographicCitation-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M17"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/bibliographicCitation']" mode="all" priority="36">
    <axsl:call-template name="R16.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M16">
    <axsl:apply-templates select="." mode="M17"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']" mode="M17" priority="2" name="R17.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-16-type-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-16-type-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &gt;= 1)">
      <failed-assertion test="count(dcds:valueString) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Minimum number of Value String Elements matching statement template dt-1-stp-16-type- not present.  Present: <axsl:value-of select="count(dcds:valueString)"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-16-type- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M18"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']" mode="all" priority="35">
    <axsl:call-template name="R17.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M17">
    <axsl:apply-templates select="." mode="M18"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/rights']" mode="M18" priority="2" name="R18.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-17-rights-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M19"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/rights']" mode="all" priority="34">
    <axsl:call-template name="R18.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M18">
    <axsl:apply-templates select="." mode="M19"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/accessRights']" mode="M19" priority="2" name="R19.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-18-accessRights-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-18-accessRights-</statement>
      </report>
    </axsl:if>
    <axsl:apply-templates select="." mode="M20"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/accessRights']" mode="all" priority="33">
    <axsl:call-template name="R19.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M19">
    <axsl:apply-templates select="." mode="M20"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/license']" mode="M20" priority="2" name="R20.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-1-stp-19-license-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M21"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/license']" mode="all" priority="32">
    <axsl:call-template name="R20.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M20">
    <axsl:apply-templates select="." mode="M21"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus']" mode="M21" priority="2" name="R21.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-20-reviewStatus-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-20-reviewStatus-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &gt;= 1)">
      <failed-assertion test="count(dcds:valueString) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Minimum number of Value String Elements matching statement template dt-1-stp-20-reviewStatus- not present.  Present: <axsl:value-of select="count(dcds:valueString)"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-20-reviewStatus- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M22"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/reviewStatus']" mode="all" priority="31">
    <axsl:call-template name="R21.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M21">
    <axsl:apply-templates select="." mode="M22"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus']" mode="M22" priority="2" name="R22.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-1-stp-21-publicationStatus-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-1-stp-21-publicationStatus-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &gt;= 1)">
      <failed-assertion test="count(dcds:valueString) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Minimum number of Value String Elements matching statement template dt-1-stp-21-publicationStatus- not present.  Present: <axsl:value-of select="count(dcds:valueString)"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 1)">
      <failed-assertion test="count(dcds:valueString) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-21-publicationStatus- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M23"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/publicationStatus']" mode="all" priority="30">
    <axsl:call-template name="R22.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M22">
    <axsl:apply-templates select="." mode="M23"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/relation']" mode="M23" priority="2" name="R23.1">
    <axsl:apply-templates select="." mode="M24"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/relation']" mode="all" priority="29">
    <axsl:call-template name="R23.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M23">
    <axsl:apply-templates select="." mode="M24"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/conformsTo']" mode="M24" priority="2" name="R24.1">
    <axsl:apply-templates select="." mode="M25"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/conformsTo']" mode="all" priority="28">
    <axsl:call-template name="R24.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M24">
    <axsl:apply-templates select="." mode="M25"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/references']" mode="M25" priority="2" name="R25.1">
    <axsl:apply-templates select="." mode="M26"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/references']" mode="all" priority="27">
    <axsl:call-template name="R25.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M25">
    <axsl:apply-templates select="." mode="M26"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy']" mode="M26" priority="2" name="R26.1">
    <axsl:apply-templates select="." mode="M27"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isReferencedBy']" mode="all" priority="26">
    <axsl:call-template name="R26.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M26">
    <axsl:apply-templates select="." mode="M27"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasPart']" mode="M27" priority="2" name="R27.1">
    <axsl:apply-templates select="." mode="M28"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasPart']" mode="all" priority="25">
    <axsl:call-template name="R27.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M27">
    <axsl:apply-templates select="." mode="M28"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isPartOf']" mode="M28" priority="2" name="R28.1">
    <axsl:apply-templates select="." mode="M29"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isPartOf']" mode="all" priority="24">
    <axsl:call-template name="R28.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M28">
    <axsl:apply-templates select="." mode="M29"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasVersion']" mode="M29" priority="2" name="R29.1">
    <axsl:apply-templates select="." mode="M30"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/hasVersion']" mode="all" priority="23">
    <axsl:call-template name="R29.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M29">
    <axsl:apply-templates select="." mode="M30"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf']" mode="M30" priority="2" name="R30.1">
    <axsl:apply-templates select="." mode="M31"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/isVersionOf']" mode="all" priority="22">
    <axsl:call-template name="R30.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M30">
    <axsl:apply-templates select="." mode="M31"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation']" mode="M31" priority="2" name="R31.1">
    <axsl:apply-templates select="." mode="M32"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasTranslation']" mode="all" priority="21">
    <axsl:call-template name="R31.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M31">
    <axsl:apply-templates select="." mode="M32"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf']" mode="M32" priority="2" name="R32.1">
    <axsl:apply-templates select="." mode="M33"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/isTranslationOf']" mode="all" priority="20">
    <axsl:call-template name="R32.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M32">
    <axsl:apply-templates select="." mode="M33"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata']" mode="M33" priority="2" name="R33.1">
    <axsl:if test="not(@dcds:valueURI or @dcds:valueRef)">
      <failed-assertion test="@dcds:valueURI or @dcds:valueRef">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either a valueURI attribute or a valueRef attribute must be present.dt-1-stp-32-hasMetametadata-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:variable name="valueRef" select="@dcds:valueRef"/>
    <axsl:if test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]][@dcds:resourceId = $valueRef]))">
      <report test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]][@dcds:resourceId = $valueRef]))">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either the valueRef attribute value must match a resourceId attribute value, or the valueURI attribute value must match a resourceURI attribute value, on a Description Element matching the specified description template.dt-1-stp-32-hasMetametadata-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:vesURI">
      <report test="@dcds:vesURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> VES URI disallowed by statement template dt-1-stp-32-hasMetametadata-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 0)">
      <failed-assertion test="count(dcds:valueString) &lt;= 0">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-32-hasMetametadata- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 0</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M34"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasMetametadata']" mode="all" priority="19">
    <axsl:call-template name="R33.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M33">
    <axsl:apply-templates select="." mode="M34"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasResearch']" mode="M34" priority="2" name="R34.1">
    <axsl:if test="not(@dcds:valueURI or @dcds:valueRef)">
      <failed-assertion test="@dcds:valueURI or @dcds:valueRef">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either a valueURI attribute or a valueRef attribute must be present.dt-1-stp-33-hasResearch-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:variable name="valueRef" select="@dcds:valueRef"/>
    <axsl:if test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]][@dcds:resourceId = $valueRef]))">
      <report test="(@dcds:valueURI and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]][@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]][@dcds:resourceId = $valueRef]))">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef specified, so either the valueRef attribute value must match a resourceId attribute value, or the valueURI attribute value must match a resourceURI attribute value, on a Description Element matching the specified description template.dt-1-stp-33-hasResearch-</statement>
      </report>
    </axsl:if>
    <axsl:if test="@dcds:vesURI">
      <report test="@dcds:vesURI">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> VES URI disallowed by statement template dt-1-stp-33-hasResearch-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:valueString)">
      <report test="count(dcds:valueString)">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Statement Element contains <axsl:value-of select="count(dcds:valueString)"/> Value String Elements</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:valueString) &lt;= 0)">
      <failed-assertion test="count(dcds:valueString) &lt;= 0">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Maximum number of Value String Elements matching statement template dt-1-stp-33-hasResearch- exceeded. Present: <axsl:value-of select="count(dcds:valueString)"/> Maximum permitted: 0</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M35"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Resource')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/hasResearch']" mode="all" priority="18">
    <axsl:call-template name="R34.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M34">
    <axsl:apply-templates select="." mode="M35"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]" mode="M35" priority="2" name="R35.1">
    <axsl:variable name="resourceURI" select="@dcds:resourceURI"/>
    <axsl:variable name="resourceId" select="@dcds:resourceId"/>
    <axsl:if test="not(/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId])">
      <failed-assertion test="/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Resource not referred to as value, but description template specifies standalone="no"</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/name'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/name'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/name'])"/> Statement Elements matching statement template dt-2-st-1-name-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName'])"/> Statement Elements matching statement template dt-2-st-2-firstName-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName'])"/> Statement Elements matching statement template dt-2-st-3-lastName-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox'])"/> Statement Elements matching statement template dt-2-st-4-mbox-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[not((@dcds:propertyURI='http://xmlns.com/foaf/0.1/name') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox'))])">
      <report test="count(dcds:statement[not((@dcds:propertyURI='http://xmlns.com/foaf/0.1/name') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox'))])">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[not((@dcds:propertyURI='http://xmlns.com/foaf/0.1/name') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName') or (@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox'))])"/> Statement Elements with no matching statement template </statement>
      </report>
    </axsl:if>
    <axsl:apply-templates select="." mode="M36"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]" mode="all" priority="17">
    <axsl:call-template name="R35.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M35">
    <axsl:apply-templates select="." mode="M36"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/name']" mode="M36" priority="2" name="R36.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-2-stp-1-name-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M37"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/name']" mode="all" priority="16">
    <axsl:call-template name="R36.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M36">
    <axsl:apply-templates select="." mode="M37"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName']" mode="M37" priority="2" name="R37.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-2-stp-2-firstName-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M38"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/firstName']" mode="all" priority="15">
    <axsl:call-template name="R37.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M37">
    <axsl:apply-templates select="." mode="M38"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName']" mode="M38" priority="2" name="R38.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-2-stp-3-lastName-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M39"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/lastName']" mode="all" priority="14">
    <axsl:call-template name="R38.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M38">
    <axsl:apply-templates select="." mode="M39"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox']" mode="M39" priority="2" name="R39.1">
    <axsl:if test="not(not(@dcds:valueRef))">
      <failed-assertion test="not(@dcds:valueRef)">
        <axsl:call-template name="location"/>
        <statement>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.dt-2-stp-4-mbox-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:variable name="valueURI" select="@dcds:valueURI"/>
    <axsl:if test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
      <report test="@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.dt-2-stp-4-mbox-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(@dcds:valueURI)">
      <failed-assertion test="@dcds:valueURI">
        <axsl:call-template name="location"/>
        <statement>Error: Value URI required by statement template dt-2-stp-4-mbox-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M40"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://xmlns.com/foaf/0.1/Agent')]]/dcds:statement[@dcds:propertyURI='http://xmlns.com/foaf/0.1/mbox']" mode="all" priority="13">
    <axsl:call-template name="R39.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M39">
    <axsl:apply-templates select="." mode="M40"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]" mode="M40" priority="2" name="R40.1">
    <axsl:variable name="resourceURI" select="@dcds:resourceURI"/>
    <axsl:variable name="resourceId" select="@dcds:resourceId"/>
    <axsl:if test="not(/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId])">
      <failed-assertion test="/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Resource not referred to as value, but description template specifies standalone="no"</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier'])"/> Statement Elements matching statement template dt-3-st-1-identifier-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])"/> Statement Elements matching statement template dt-3-st-2-type-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &gt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Minimum number of Statement Elements matching statement template dt-3-st-2-type- not present. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-3-st-2-type- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])"/> Statement Elements matching statement template dt-3-st-3-date-</statement>
      </report>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &gt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &gt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Minimum number of Statement Elements matching statement template dt-3-st-3-date- not present. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])"/> Minimum required: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not(count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &lt;= 1)">
      <failed-assertion test="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']) &lt;= 1">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Maximum number of Statement Elements matching statement template dt-3-st-3-date- exceeded. Present: <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date'])"/> Maximum permitted: 1</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[not((@dcds:propertyURI='http://purl.org/dc/terms/identifier') or (@dcds:propertyURI='http://purl.org/dc/terms/type') or (@dcds:propertyURI='http://purl.org/dc/terms/date'))])">
      <report test="count(dcds:statement[not((@dcds:propertyURI='http://purl.org/dc/terms/identifier') or (@dcds:propertyURI='http://purl.org/dc/terms/type') or (@dcds:propertyURI='http://purl.org/dc/terms/date'))])">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[not((@dcds:propertyURI='http://purl.org/dc/terms/identifier') or (@dcds:propertyURI='http://purl.org/dc/terms/type') or (@dcds:propertyURI='http://purl.org/dc/terms/date'))])"/> Statement Elements with no matching statement template </statement>
      </report>
    </axsl:if>
    <axsl:apply-templates select="." mode="M41"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]" mode="all" priority="12">
    <axsl:call-template name="R40.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M40">
    <axsl:apply-templates select="." mode="M41"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier']" mode="M41" priority="2" name="R41.1">
    <axsl:apply-templates select="." mode="M42"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/identifier']" mode="all" priority="11">
    <axsl:call-template name="R41.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M41">
    <axsl:apply-templates select="." mode="M42"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']" mode="M42" priority="2" name="R42.1">
    <axsl:apply-templates select="." mode="M43"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/type']" mode="all" priority="10">
    <axsl:call-template name="R42.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M42">
    <axsl:apply-templates select="." mode="M43"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']" mode="M43" priority="2" name="R43.1">
    <axsl:if test="not(dcds:literalValueString)">
      <failed-assertion test="dcds:literalValueString">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> Literal Value String element required by statement template dt-3-stp-3-date-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="not((dcds:literalValueString/@dcds:sesURI = 'http://purl.org/dc/terms/W3CDTF'))">
      <failed-assertion test="(dcds:literalValueString/@dcds:sesURI = 'http://purl.org/dc/terms/W3CDTF')">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(../preceding-sibling::dcds:description)"/> Statement Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:statement)"/> SES URI must be from list specified by statement template dt-3-stp-3-date-</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:apply-templates select="." mode="M44"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/MetaMetadata')]]/dcds:statement[@dcds:propertyURI='http://purl.org/dc/terms/date']" mode="all" priority="9">
    <axsl:call-template name="R43.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M43">
    <axsl:apply-templates select="." mode="M44"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]" mode="M44" priority="2" name="R44.1">
    <axsl:variable name="resourceURI" select="@dcds:resourceURI"/>
    <axsl:variable name="resourceId" select="@dcds:resourceId"/>
    <axsl:if test="not(/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId])">
      <failed-assertion test="/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Resource not referred to as value, but description template specifies standalone="no"</statement>
      </failed-assertion>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest'])"/> Statement Elements matching statement template dt-4-st-1-objectOfInterest-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable'])"/> Statement Elements matching statement template dt-4-st-2-measuresVariable-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesMethod'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesMethod'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesMethod'])"/> Statement Elements matching statement template dt-4-st-3-usesMethod-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol'])"/> Statement Elements matching statement template dt-4-st-4-usesProtocol-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument'])"/> Statement Elements matching statement template dt-4-st-5-usesInstrument-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique'])">
      <report test="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique'])">
        <axsl:call-template name="location"/>
        <statement>Report: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique'])"/> Statement Elements matching statement template dt-4-st-6-usesTechnique-</statement>
      </report>
    </axsl:if>
    <axsl:if test="count(dcds:statement[not((@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest') or (@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable') or (@dcds:propertyURI='http://voa3r.eu/terms/usesMethod') or (@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol') or (@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument') or (@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique'))])">
      <report test="count(dcds:statement[not((@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest') or (@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable') or (@dcds:propertyURI='http://voa3r.eu/terms/usesMethod') or (@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol') or (@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument') or (@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique'))])">
        <axsl:call-template name="location"/>
        <statement>Error: Description Element: <axsl:value-of select="1 + count(preceding-sibling::dcds:description)"/> Description Element contains <axsl:value-of select="count(dcds:statement[not((@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest') or (@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable') or (@dcds:propertyURI='http://voa3r.eu/terms/usesMethod') or (@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol') or (@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument') or (@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique'))])"/> Statement Elements with no matching statement template </statement>
      </report>
    </axsl:if>
    <axsl:apply-templates select="." mode="M45"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]" mode="all" priority="8">
    <axsl:call-template name="R44.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M44">
    <axsl:apply-templates select="." mode="M45"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest']" mode="M45" priority="2" name="R45.1">
    <axsl:apply-templates select="." mode="M46"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/objectOfInterest']" mode="all" priority="7">
    <axsl:call-template name="R45.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M45">
    <axsl:apply-templates select="." mode="M46"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable']" mode="M46" priority="2" name="R46.1">
    <axsl:apply-templates select="." mode="M47"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/measuresVariable']" mode="all" priority="6">
    <axsl:call-template name="R46.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M46">
    <axsl:apply-templates select="." mode="M47"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesMethod']" mode="M47" priority="2" name="R47.1">
    <axsl:apply-templates select="." mode="M48"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesMethod']" mode="all" priority="5">
    <axsl:call-template name="R47.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M47">
    <axsl:apply-templates select="." mode="M48"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol']" mode="M48" priority="2" name="R48.1">
    <axsl:apply-templates select="." mode="M49"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesProtocol']" mode="all" priority="4">
    <axsl:call-template name="R48.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M48">
    <axsl:apply-templates select="." mode="M49"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument']" mode="M49" priority="2" name="R49.1">
    <axsl:apply-templates select="." mode="M50"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesInstrument']" mode="all" priority="3">
    <axsl:call-template name="R49.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M49">
    <axsl:apply-templates select="." mode="M50"/>
  </axsl:template>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique']" mode="M50" priority="2" name="R50.1"/>
  <axsl:template match="dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (@dcds:valueURI='http://voa3r.eu/class/Research')]]/dcds:statement[@dcds:propertyURI='http://voa3r.eu/terms/usesTechnique']" mode="all" priority="2">
    <axsl:call-template name="R50.1"/>
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template match="*" mode="M50"/>
  <axsl:template match="*|/" mode="all">
    <axsl:apply-templates select="*" mode="all"/>
  </axsl:template>
  <axsl:template name="location"/>
</axsl:stylesheet>
