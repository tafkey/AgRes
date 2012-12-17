<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:dsp="http://dublincore.org/xml/dc-dsp/2008/01/14"
        xmlns:iso="http://purl.oclc.org/dsdl/schematron"
        xmlns:dcds="http://purl.org/dc/xmlns/2008/09/01/dc-ds-xml/"
	version="1.0">

<!--
      dsp2sch-dcds XSLT 1.0 Transform

      Created 2009-08-31 by Pete Johnston (pete.johnston@eduserv.org.uk)

      This transform takes as input an instance of the Dublin Core Description Set Profile XML format (DSP XML)
      and outputs a Schematron schema for the corresponding set of constraints on an instance of the
      Dublin Core DC DS XML format (DC DS XML, version 2008-09-01)

      Modified 2012-10-28 by Tasos Koutoumanos (tkout@cs.ntua.gr)
      to match the needs of the VOA3R AgRes application profile.
-->

	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

	<xsl:template match="dsp:DescriptionSetTemplate">
		<xsl:element name="iso:schema">
			<xsl:attribute name="queryBinding">xslt</xsl:attribute>
			<xsl:attribute name="schemaVersion">ISO19757-3</xsl:attribute>

			<xsl:element name="iso:title">Schematron Schema for AgRes DSP 2012-10-01</xsl:element>
			<xsl:element name="iso:ns">
				<xsl:attribute name="prefix">dcds</xsl:attribute>
				<xsl:attribute name="uri">http://purl.org/dc/xmlns/2008/09/01/dc-ds-xml/</xsl:attribute>
			</xsl:element>

			<xsl:element name="iso:pattern">
				<xsl:attribute name="id">ds</xsl:attribute>

				<xsl:element name="iso:rule">
					<xsl:attribute name="context">dcds:descriptionSet</xsl:attribute>

					<!-- Count descriptions matching each DT -->

					<!-- ++++++++ -->
					<xsl:for-each select="dsp:DescriptionTemplate[dsp:ResourceClass]">

						<!-- Build expression based on DSP 5.5 Resource Class constraint -->

						<xsl:variable name="descriptionPath">
							<xsl:call-template name="makeDescriptionPath">
								<xsl:with-param name="dt" select="." />
							</xsl:call-template>
						</xsl:variable>

						<xsl:variable name="dt-no" select="position()" />
						<xsl:variable name="dt-id">dt-<xsl:value-of select="$dt-no"/>-<xsl:value-of select="@ID" /></xsl:variable>

						<xsl:element name="iso:report">
							<xsl:attribute name="test">count(<xsl:value-of select="$descriptionPath" />)</xsl:attribute>
							<xsl:text>Report: Description Set Element contains </xsl:text>
							<xsl:element name="iso:value-of">
								<xsl:attribute name="select">count(<xsl:value-of select="$descriptionPath" />)</xsl:attribute>
							</xsl:element>
							<xsl:text> Description Elements matching description template </xsl:text>
							<xsl:value-of select="$dt-id" />
						</xsl:element>

						<!-- DSP 5.3 : Minimum number of descriptions matching DT (if 0 (default), don't bother) -->

						<xsl:apply-templates select="@minOccurs[not(.='0')]" >
							<xsl:with-param name="descriptionPath" select="$descriptionPath" />
							<xsl:with-param name="dt-id" select="$dt-id" />
						</xsl:apply-templates>

						<!-- DSP 5.4 : Maximum number of descriptions matching DT (if infinity (default), don't bother) -->

						<xsl:apply-templates select="@maxOccurs[not(.='infinity')]" >
							<xsl:with-param name="descriptionPath" select="$descriptionPath" />
							<xsl:with-param name="dt-id" select="$dt-id" />
						</xsl:apply-templates>

					</xsl:for-each>

					<!-- Check for descriptions with no matching DT -->

					<xsl:variable name="otherDescriptionPaths">
						<xsl:text>dcds:description[not(dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (</xsl:text>

						<xsl:for-each select="dsp:DescriptionTemplate[dsp:ResourceClass]">

							<xsl:text>(</xsl:text>
							<xsl:for-each select="dsp:ResourceClass">
								<xsl:text>@dcds:valueURI='</xsl:text>
								<xsl:value-of select="." />
								<xsl:text>'</xsl:text>
								<xsl:if test="position()!=last()">
									<xsl:text> or </xsl:text>
								</xsl:if>
							</xsl:for-each>
							<xsl:text>)</xsl:text>

							<xsl:if test="position()!=last()">
								<xsl:text> or </xsl:text>
							</xsl:if>

						</xsl:for-each>

						<xsl:text>)])]</xsl:text>

					</xsl:variable>

					<xsl:element name="iso:report">
						<xsl:attribute name="test">count(<xsl:value-of select="$otherDescriptionPaths" />)</xsl:attribute>
						<xsl:text>Error: Description Set Element contains </xsl:text>
						<xsl:element name="iso:value-of">
							<xsl:attribute name="select">count(<xsl:value-of select="$otherDescriptionPaths" />)</xsl:attribute>
						</xsl:element>
						<xsl:text> Description Elements with no matching description template </xsl:text>
					</xsl:element>

				</xsl:element>

			</xsl:element>

			<!-- Generate patterns for each DT -->

			<xsl:apply-templates select="dsp:DescriptionTemplate[dsp:ResourceClass]"/>

		</xsl:element>

	</xsl:template>

	<xsl:template match="dsp:DescriptionTemplate[dsp:ResourceClass]">

		<!-- Build expression based on DSP 5.5 Resource Class constraint -->

		<xsl:variable name="descriptionPath">
			<xsl:call-template name="makeDescriptionPath">
				<xsl:with-param name="dt" select="." />
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="dt-no" select="position()" />
		<xsl:variable name="dt-id">dt-<xsl:value-of select="$dt-no"/>-<xsl:value-of select="@ID" /></xsl:variable>

		<xsl:element name="iso:pattern">
			<xsl:attribute name="id"><xsl:value-of select="$dt-id"/></xsl:attribute>

			<xsl:element name="iso:rule">
				<xsl:attribute name="context"><xsl:value-of select="$descriptionPath"/></xsl:attribute>

				<!-- DSP 5.2 : Standalone yes/no checks (if both (default), don't bother) -->

				<xsl:apply-templates select="@standalone[not(.='both')]" >
					<xsl:with-param name="descriptionPath" select="$descriptionPath" />
					<xsl:with-param name="dt-id" select="$dt-id" />
				</xsl:apply-templates>

				<!-- Count statements matching each ST in this DT -->

				<xsl:for-each select="dsp:StatementTemplate[dsp:Property]">

					<!-- Build expression based on DSP 6.4.1 Property list constraint -->

					<!-- N.B. No support for 6.4.2 Subproperty constraint -->

					<xsl:variable name="statementPath">
						<xsl:call-template name="makeStatementPath">
							<xsl:with-param name="st" select="." />
						</xsl:call-template>
					</xsl:variable>

					<xsl:variable name="st-no" select="position()" />
					<xsl:variable name="st-id">dt-<xsl:value-of select="$dt-no"/>-st-<xsl:value-of select="$st-no"/>-<xsl:value-of select="@ID" />-</xsl:variable>

					<xsl:element name="iso:report">
						<xsl:attribute name="test">count(<xsl:value-of select="$statementPath" />)</xsl:attribute>
						<xsl:text>Report:</xsl:text>
						<xsl:call-template name="makeDescPosition" />
						<xsl:text> Description Element contains </xsl:text>
						<xsl:element name="iso:value-of">
							<xsl:attribute name="select">count(<xsl:value-of select="$statementPath" />)</xsl:attribute>
						</xsl:element>
						<xsl:text> Statement Elements matching statement template </xsl:text>
						<xsl:value-of select="$st-id" />
					</xsl:element>

					<!-- DSP 6.1 : Minimum number of statements matching ST (if 0 (default), don't bother) -->

					<xsl:apply-templates select="@minOccurs[not(.='0')]" >
						<xsl:with-param name="statementPath" select="$statementPath" />
						<xsl:with-param name="st-id" select="$st-id" />
					</xsl:apply-templates>

					<!-- DSP 6.2 : Maximum number of statements matching ST (if infinity (default), don't bother)  -->

					<xsl:apply-templates select="@maxOccurs[not(.='infinity')]" >
						<xsl:with-param name="statementPath" select="$statementPath" />
						<xsl:with-param name="st-id" select="$st-id" />
					</xsl:apply-templates>

				</xsl:for-each>

				<!-- Check for statements with no matching ST in this DT -->

				<xsl:variable name="otherStatementPaths">
					<xsl:text>dcds:statement[not(</xsl:text>

					<xsl:for-each select="dsp:StatementTemplate[dsp:Property]">

						<xsl:text>(</xsl:text>
						<xsl:for-each select="dsp:Property">
							<xsl:text>@dcds:propertyURI='</xsl:text>
							<xsl:value-of select="." />
							<xsl:text>'</xsl:text>
							<xsl:if test="position()!=last()">
								<xsl:text> or </xsl:text>
							</xsl:if>
						</xsl:for-each>
						<xsl:text>)</xsl:text>

						<xsl:if test="position()!=last()">
							<xsl:text> or </xsl:text>
						</xsl:if>

					</xsl:for-each>

					<xsl:text>)]</xsl:text>

				</xsl:variable>

				<xsl:element name="iso:report">
					<xsl:attribute name="test">count(<xsl:value-of select="$otherStatementPaths" />)</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescPosition" />
					<xsl:text> Description Element contains </xsl:text>
					<xsl:element name="iso:value-of">
						<xsl:attribute name="select">count(<xsl:value-of select="$otherStatementPaths" />)</xsl:attribute>
					</xsl:element>
					<xsl:text> Statement Elements with no matching statement template </xsl:text>
				</xsl:element>

			</xsl:element>
		</xsl:element>


		<!-- Generate patterns for each ST in this DT -->

		<xsl:apply-templates select="dsp:StatementTemplate">
			<xsl:with-param name="descriptionPath" select="$descriptionPath" />
			<xsl:with-param name="dt-no" select="$dt-no" />
		</xsl:apply-templates>

	</xsl:template>

	<xsl:template match="dsp:DescriptionTemplate/@minOccurs">
		<xsl:param name="descriptionPath" />
		<xsl:param name="dt-id" />

		<!-- DSP 5.3 : Minimum number of descriptions matching DT -->

		<xsl:element name="iso:assert">
			<xsl:attribute name="test">count(<xsl:value-of select="$descriptionPath" />) &gt;= <xsl:value-of select="." /></xsl:attribute>
			<xsl:text>Error: Minimum number of Description Elements matching description template </xsl:text>
			<xsl:value-of select="$dt-id" />
			<xsl:text> not present.</xsl:text>
			<xsl:text> Present: </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(<xsl:value-of select="$descriptionPath" />)</xsl:attribute>
			</xsl:element>
			<xsl:text> Minimum required: </xsl:text>
			<xsl:value-of select="." />
		</xsl:element>

	</xsl:template>

	<xsl:template match="dsp:DescriptionTemplate/@maxOccurs">
		<xsl:param name="descriptionPath" />
		<xsl:param name="dt-id" />

		<!-- DSP 5.4 : Maximum number of descriptions matching DT  -->

		<xsl:element name="iso:assert">
			<xsl:attribute name="test">count(<xsl:value-of select="$descriptionPath" />) &lt;= <xsl:value-of select="." /></xsl:attribute>
			<xsl:text>Error: Maximum number of Description Elements matching description template </xsl:text>
			<xsl:value-of select="$dt-id" />
			<xsl:text> exceeded.</xsl:text>
			<xsl:text> Present: </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(<xsl:value-of select="$descriptionPath" />)</xsl:attribute>
			</xsl:element>
			<xsl:text> Maximum permitted: </xsl:text>
			<xsl:value-of select="." />
		</xsl:element>

	</xsl:template>

	<xsl:template match="dsp:DescriptionTemplate/@standalone">
		<xsl:param name="descriptionPath" />
		<xsl:param name="dt-id" />

		<!-- DSP 5.2 : Standalone yes/no checks -->

		<xsl:element name="iso:let">
			<xsl:attribute name="name">resourceURI</xsl:attribute>
			<xsl:attribute name="value">@dcds:resourceURI</xsl:attribute>
		</xsl:element>

		<xsl:element name="iso:let">
			<xsl:attribute name="name">resourceId</xsl:attribute>
			<xsl:attribute name="value">@dcds:resourceId</xsl:attribute>
		</xsl:element>

		<xsl:choose>
			<xsl:when test=".='yes'">

				<!-- standalone = yes, so resource must not be value elsewhere -->

				<xsl:element name="iso:report">
					<xsl:attribute name="test">/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescPosition" />
					<xsl:text> Resource is referred to as value, but description template specifies standalone="yes"</xsl:text>
				</xsl:element>
			</xsl:when>
			<xsl:when test=".='no'">

				<!-- standalone = no, so resource must be value elsewhere -->

				<xsl:element name="iso:assert">
					<xsl:attribute name="test">/dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueURI = $resourceURI] or /dcds:descriptionSet/dcds:description/dcds:statement[@dcds:valueRef = $resourceId]</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescPosition" />
					<xsl:text> Resource not referred to as value, but description template specifies standalone="no"</xsl:text>
				</xsl:element>
			</xsl:when>
			<xsl:otherwise />
		</xsl:choose>

	</xsl:template>


	<xsl:template match="dsp:StatementTemplate[dsp:Property]">
		<xsl:param name="descriptionPath" />
		<xsl:param name="dt-no" />

		<!-- Build expression based on DSP 6.4.1 Property list constraint -->

		<!-- N.B. No support for 6.4.2 Subproperty constraint -->

		<xsl:variable name="statementPath">
			<xsl:call-template name="makeStatementPath">
				<xsl:with-param name="st" select="." />
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="st-no" select="position()" />
		<xsl:variable name="st-id">dt-<xsl:value-of select="$dt-no"/>-stp-<xsl:value-of select="$st-no"/>-<xsl:value-of select="@ID" />-</xsl:variable>

		<xsl:choose>
			<xsl:when test="@type='literal'">

				<!-- DSP 6.5 : type = literal  -->

				<xsl:element name="iso:pattern">
					<xsl:attribute name="id"><xsl:value-of select="$st-id"/>lit</xsl:attribute>

					<xsl:element name="iso:rule">
						<xsl:attribute name="context"><xsl:value-of select="$descriptionPath"/>/<xsl:value-of select="$statementPath"/></xsl:attribute>

						<xsl:element name="iso:assert">
							<xsl:attribute name="test">dcds:literalValueString</xsl:attribute>
							<xsl:text>Error:</xsl:text>
							<xsl:call-template name="makeDescStmtPosition" />
							<xsl:text> Literal Value String element required by statement template </xsl:text>
							<xsl:value-of select="$st-id" />
						</xsl:element>

						<xsl:apply-templates select="dsp:LiteralConstraint">
							<xsl:with-param name="st-id" select="$st-id" />
						</xsl:apply-templates>

					</xsl:element>

				</xsl:element>

			</xsl:when>

			<xsl:when test="@type='nonliteral'">

				<!-- DSP 6.6 : type = nonliteral -->

				<xsl:element name="iso:pattern">
					<xsl:attribute name="id"><xsl:value-of select="$st-id"/>nonlit</xsl:attribute>

					<xsl:element name="iso:rule">
						<xsl:attribute name="context"><xsl:value-of select="$descriptionPath"/>/<xsl:value-of select="$statementPath"/></xsl:attribute>

						<xsl:apply-templates select="dsp:NonLiteralConstraint">
							<xsl:with-param name="st-id" select="$st-id" />
						</xsl:apply-templates>

					</xsl:element>

				</xsl:element>

			</xsl:when>

			<xsl:otherwise />

		</xsl:choose>

	</xsl:template>

	<xsl:template match="dsp:StatementTemplate/@minOccurs">
		<xsl:param name="statementPath" />
		<xsl:param name="st-id" />

		<!-- DSP 6.1 : Minimum number of statements matching ST -->

		<xsl:element name="iso:assert">
			<xsl:attribute name="test">count(<xsl:value-of select="$statementPath" />) &gt;= <xsl:value-of select="." /></xsl:attribute>
			<xsl:text>Error:</xsl:text>
			<xsl:call-template name="makeDescPosition" />
			<xsl:text> Minimum number of Statement Elements matching statement template </xsl:text>
			<xsl:value-of select="$st-id" />
			<xsl:text> not present.</xsl:text>
			<xsl:text> Present: </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(<xsl:value-of select="$statementPath" />)</xsl:attribute>
			</xsl:element>
			<xsl:text> Minimum required: </xsl:text>
			<xsl:value-of select="." />
		</xsl:element>

	</xsl:template>

	<xsl:template match="dsp:StatementTemplate/@maxOccurs">
		<xsl:param name="statementPath" />
		<xsl:param name="st-id" />

		<!-- DSP 6.2 : Maximum number of statements matching ST -->

		<xsl:element name="iso:assert">
			<xsl:attribute name="test">count(<xsl:value-of select="$statementPath" />) &lt;= <xsl:value-of select="." /></xsl:attribute>
			<xsl:text>Error:</xsl:text>
			<xsl:call-template name="makeDescPosition" />
			<xsl:text> Maximum number of Statement Elements matching statement template </xsl:text>
			<xsl:value-of select="$st-id" />
			<xsl:text> exceeded.</xsl:text>
			<xsl:text> Present: </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(<xsl:value-of select="$statementPath" />)</xsl:attribute>
			</xsl:element>
			<xsl:text> Maximum permitted: </xsl:text>
			<xsl:value-of select="." />
		</xsl:element>

	</xsl:template>

	<xsl:template match="dsp:LiteralConstraint">
		<xsl:param name="st-id" />

		<!-- The same called template is used for both LiteralContraint and ValueStringConstraint -->

		<xsl:call-template name="processLiteralConstraint">
			<xsl:with-param name="literalConstraint" select="." />
			<xsl:with-param name="element" select="'dcds:literalValueString'" />
			<xsl:with-param name="st-id" select="$st-id" />
		</xsl:call-template>

	</xsl:template>

	<xsl:template name="processLiteralConstraint">
		<xsl:param name="literalConstraint" />
		<xsl:param name="element" />
		<xsl:param name="st-id" />

		<!-- DSP 6.5.1 : Match against list of literals -->
		<xsl:if test="dsp:LiteralOption">

			<xsl:variable name="literalCompare">
				<xsl:call-template name="makeLiteralCompare">
					<xsl:with-param name="litConst" select="." />
					<xsl:with-param name="element" select="$element" />
				</xsl:call-template>
			</xsl:variable>

			<xsl:element name="iso:assert">
				<xsl:attribute name="test"><xsl:value-of select="$literalCompare" /></xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> Literal must be from list specified by statement template </xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

		</xsl:if>

		<!-- DSP 6.5.2 : Language tag required/disallowed -->
		<xsl:choose>
			<xsl:when test="dsp:LanguageOccurrence='mandatory'">

				<xsl:element name="iso:assert">
					<xsl:attribute name="test"><xsl:value-of select="$element"/>/@xml:lang</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> Language for Literal required by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:when test="dsp:LanguageOccurrence='disallowed'">

				<xsl:element name="iso:report">
					<xsl:attribute name="test"><xsl:value-of select="$element"/>/@xml:lang</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> Language for Literal disallowed by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:otherwise />

		</xsl:choose>

		<!-- DSP 6.5.3 : Match against list of languages -->
		<xsl:if test="dsp:Language">

			<xsl:variable name="languageCompare">
				<xsl:call-template name="makeLanguageCompare">
					<xsl:with-param name="litConst" select="." />
					<xsl:with-param name="element" select="$element" />
				</xsl:call-template>
			</xsl:variable>

			<xsl:element name="iso:assert">
				<xsl:attribute name="test"><xsl:value-of select="$languageCompare" /></xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> Language for Literal must be from list specified by statement template </xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

		</xsl:if>

		<!-- DSP 6.5.4 : SES URI required/disallowed -->
		<xsl:choose>
			<xsl:when test="dsp:SyntaxEncodingSchemeOccurrence='mandatory'">

				<xsl:element name="iso:assert">
					<xsl:attribute name="test"><xsl:value-of select="$element"/>/@dcds:sesURI</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> SES URI for Literal required by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>
			</xsl:when>

			<xsl:when test="dsp:SyntaxEncodingSchemeOccurrence='disallowed'">

				<xsl:element name="iso:report">
					<xsl:attribute name="test"><xsl:value-of select="$element"/>/@dcds:sesURI</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> SES URI for Literal disallowed by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:otherwise />

		</xsl:choose>

		<!-- DSP 6.5.5 : Match against list of SES URI -->
		<xsl:if test="dsp:SyntaxEncodingScheme">

			<xsl:variable name="sesURICompare">
				<xsl:call-template name="makeSesURICompare">
					<xsl:with-param name="litConst" select="." />
					<xsl:with-param name="element" select="$element" />
				</xsl:call-template>
			</xsl:variable>

			<xsl:element name="iso:assert">
				<!-- ++++ FIXME: check this out... tasos: added to avoid false Errors by empty Statements (Withoug ValueString) -->
				<!-- <xsl:attribute name="test"><xsl:value-of select="$sesURICompare" /></xsl:attribute>-->
				<xsl:attribute name="test">((@dcds:valueURI) or (<xsl:value-of select="$sesURICompare" />))</xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> SES URI must be from list specified by statement template </xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

		</xsl:if>

	</xsl:template>


	<xsl:template match="dsp:NonLiteralConstraint">
		<xsl:param name="st-id" />

		<!-- DSP 6.6.1 Description Template Reference -->

		<xsl:choose>
			<xsl:when test="@descriptionTemplateRef">

				<!-- DT ref present, so value must be described, so statement must provide valueURI or valueRef -->

				<xsl:element name="iso:assert">
					<xsl:attribute name="test">@dcds:valueURI or @dcds:valueRef</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> DescriptionTemplateRef specified, so either a valueURI attribute or a valueRef attribute must be present.</xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

				<xsl:element name="iso:let">
					<xsl:attribute name="name">valueURI</xsl:attribute>
					<xsl:attribute name="value">@dcds:valueURI</xsl:attribute>
				</xsl:element>

				<xsl:element name="iso:let">
					<xsl:attribute name="name">valueRef</xsl:attribute>
					<xsl:attribute name="value">@dcds:valueRef</xsl:attribute>
				</xsl:element>

				<!-- DT ref present, so value must be described, and description must match template specified -->

				<xsl:variable name="dtref" select="@descriptionTemplateRef" />

				<xsl:variable name="valueDescriptionPath">
					<xsl:call-template name="makeDescriptionPath">
						<xsl:with-param name="dt" select="/dsp:DescriptionSetTemplate/dsp:DescriptionTemplate[@ID = $dtref]" />
					</xsl:call-template>
				</xsl:variable>

				<xsl:element name="iso:report">
					<xsl:attribute name="test">(@dcds:valueURI and not(/dcds:descriptionSet/<xsl:value-of select="$valueDescriptionPath" />[@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/<xsl:value-of select="$valueDescriptionPath" />[@dcds:resourceId = $valueRef]))</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> DescriptionTemplateRef specified, so either the valueRef attribute value must match a resourceId attribute value, or the valueURI attribute value must match a resourceURI attribute value, on a Description Element matching the specified description template.</xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>
			<xsl:otherwise>

				<!-- DT ref absent, so valueRef not permitted and value must not be described -->

				<xsl:element name="iso:assert">
					<xsl:attribute name="test">not(@dcds:valueRef)</xsl:attribute>
					<xsl:text>Error: DescriptionTemplateRef not specified, so a valueRef attribute value must not be present.</xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

				<!-- DT ref absent, so although valueURI permitted, value must not be described -->

				<xsl:element name="iso:let">
					<xsl:attribute name="name">valueURI</xsl:attribute>
					<xsl:attribute name="value">@dcds:valueURI</xsl:attribute>
				</xsl:element>

				<xsl:element name="iso:report">
					<xsl:attribute name="test">@dcds:valueURI and /dcds:descriptionSet/dcds:description[@dcds:resourceURI = $valueURI]</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> DescriptionTemplateRef not specified, so the valueURI attribute value must not match a resourceURI attribute value.</xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:otherwise>
		</xsl:choose>

		<!-- DSP 6.6.2 : Value Class -->

		<xsl:if test="dsp:ValueClass">

			<!-- Value Class, so value must be described, so statement must provide valueURI or valueRef -->

			<xsl:element name="iso:assert">
				<xsl:attribute name="test">@dcds:valueURI or @dcds:valueRef</xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> DescriptionTemplateRef specified, so either a valueURI attribute or a valueRef attribute must be present.</xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

			<xsl:element name="iso:let">
				<xsl:attribute name="name">valueURI</xsl:attribute>
				<xsl:attribute name="value">@dcds:valueURI</xsl:attribute>
			</xsl:element>

			<xsl:element name="iso:let">
				<xsl:attribute name="name">valueRef</xsl:attribute>
				<xsl:attribute name="value">@dcds:valueRef</xsl:attribute>
			</xsl:element>

			<!-- Value Class, so value must be described, and description must be of instance of one of specified classes -->

			<xsl:variable name="valueDescriptionPath">
				<xsl:call-template name="makeValueDescriptionPath">
					<xsl:with-param name="nonLitConst" select="." />
				</xsl:call-template>
			</xsl:variable>

			<xsl:element name="iso:report">
				<xsl:attribute name="test">(@dcds:valueURI and not(/dcds:descriptionSet/<xsl:value-of select="$valueDescriptionPath" />[@dcds:resourceURI = $valueURI])) or (@dcds:valueRef and not(/dcds:descriptionSet/<xsl:value-of select="$valueDescriptionPath" />[@dcds:resourceId = $valueRef]))</xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> ValueClass specified, so either the valueRef attribute value must match a resourceId attribute value, or the valueURI attribute value must match a resourceURI attribute value, on a Description Element for one of the specified value types.</xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

		</xsl:if>

		<!-- DSP 6.6.3 -->

		<!-- DSP 6.6.3.1 : ValueURI required/disallowed -->

		<xsl:choose>
			<xsl:when test="dsp:ValueURIOccurrence='mandatory'">

				<xsl:element name="iso:assert">
					<xsl:attribute name="test">@dcds:valueURI</xsl:attribute>
					<xsl:text>Error: Value URI required by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:when test="dsp:ValueURIOccurrence='disallowed'">

				<xsl:element name="iso:report">
					<xsl:attribute name="test">@dcds:valueURI</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> Value URI disallowed by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:otherwise />

		</xsl:choose>

		<!-- DSP 6.6.3.2 : Match against list of Value URIs -->
		<xsl:if test="dsp:ValueURI">

			<xsl:variable name="valueURICompare">
				<xsl:call-template name="makeValueURICompare">
					<xsl:with-param name="nonLitConst" select="." />
				</xsl:call-template>
			</xsl:variable>

			<xsl:element name="iso:assert">
				<xsl:attribute name="test"><xsl:value-of select="$valueURICompare" /></xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> Value URI must be from list specified by statement template </xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

		</xsl:if>

		<!-- DSP 6.6.4 -->

		<!-- DSP 6.6.4.1 : VES URI required/disallowed -->

		<xsl:choose>
			<xsl:when test="dsp:VocabularyEncodingSchemeOccurrence='mandatory'">

				<xsl:element name="iso:assert">
					<xsl:attribute name="test">@dcds:vesURI</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> VES URI required by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:when test="dsp:VocabularyEncodingSchemeOccurrence='disallowed'">

				<xsl:element name="iso:report">
					<xsl:attribute name="test">@dcds:vesURI</xsl:attribute>
					<xsl:text>Error:</xsl:text>
					<xsl:call-template name="makeDescStmtPosition" />
					<xsl:text> VES URI disallowed by statement template </xsl:text>
					<xsl:value-of select="$st-id" />
				</xsl:element>

			</xsl:when>

			<xsl:otherwise />

		</xsl:choose>

		<!-- DSP 6.6.4.2 : Match against list of VES URIs -->
		<xsl:if test="dsp:VocabularyEncodingScheme">

			<xsl:variable name="vesURICompare">
				<xsl:call-template name="makeVesURICompare">
					<xsl:with-param name="nonLitConst" select="." />
				</xsl:call-template>
			</xsl:variable>

			<xsl:element name="iso:assert">
				<xsl:attribute name="test"><xsl:value-of select="$vesURICompare" /></xsl:attribute>
				<xsl:text>Error:</xsl:text>
				<xsl:call-template name="makeDescStmtPosition" />
				<xsl:text> VES URI must be from list specified by statement template </xsl:text>
				<xsl:value-of select="$st-id" />
			</xsl:element>

		</xsl:if>

		<!-- DSP 6.6.5 -->

		<xsl:apply-templates select="dsp:ValueStringConstraint">
			<xsl:with-param name="st-id" select="$st-id" />
		</xsl:apply-templates>

	</xsl:template>


	<xsl:template match="dsp:ValueStringConstraint">
		<xsl:param name="st-id" />

		<xsl:element name="iso:report">
			<xsl:attribute name="test">count(dcds:valueString)</xsl:attribute>
			<xsl:text>Report:</xsl:text>
			<xsl:call-template name="makeDescStmtPosition" />
			<xsl:text> Statement Element contains </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(dcds:valueString)</xsl:attribute>
			</xsl:element>
			<xsl:text> Value String Elements</xsl:text>
		</xsl:element>

		<!-- DSP 6.6.5.1 : Minimum number of value strings (if 0 (default), don't bother) -->

		<xsl:apply-templates select="@minOccurs[not(.='0')]" >
			<xsl:with-param name="st-id" select="$st-id" />
		</xsl:apply-templates>

		<!-- DSP 6.6.5.2 : Maximum number of value strings (if infinity (default), don't bother)  -->

		<xsl:apply-templates select="@maxOccurs[not(.='infinity')]" >
			<xsl:with-param name="st-id" select="$st-id" />
		</xsl:apply-templates>

		<!-- DSP 6.6.5.3 -->

		<!-- The same called template is used for both LiteralContraint and ValueStringConstraint -->

		<xsl:call-template name="processLiteralConstraint">
			<xsl:with-param name="literalConstraint" select="." />
			<!-- is this capital "V" the error ??????? -->
<!--
			<xsl:with-param name="element" select="'dcds:ValueString'" />
-->
			<xsl:with-param name="element" select="'dcds:valueString'" />
			<xsl:with-param name="st-id" select="$st-id" />
		</xsl:call-template>

	</xsl:template>

	<xsl:template match="dsp:ValueStringConstraint/@minOccurs">
		<xsl:param name="st-id" />

		<!-- DSP 6.6.5.1 : Minimum number of value strings -->

		<xsl:element name="iso:assert">
			<xsl:attribute name="test">count(dcds:valueString) &gt;= <xsl:value-of select="." /></xsl:attribute>
			<xsl:text>Error:</xsl:text>
			<xsl:call-template name="makeDescStmtPosition" />
			<xsl:text> Minimum number of Value String Elements matching statement template </xsl:text>
			<xsl:value-of select="$st-id" />
			<xsl:text> not present. </xsl:text>
			<xsl:text> Present: </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(dcds:valueString)</xsl:attribute>
			</xsl:element>
			<xsl:text> Minimum required: </xsl:text>
			<xsl:value-of select="." />
		</xsl:element>

	</xsl:template>

	<xsl:template match="dsp:ValueStringConstraint/@maxOccurs">
		<xsl:param name="st-id" />

		<!-- DSP 6.6.5.2 : Maximum number of value strings -->

		<xsl:element name="iso:assert">
			<xsl:attribute name="test">count(dcds:valueString) &lt;= <xsl:value-of select="." /></xsl:attribute>
			<xsl:text>Error:</xsl:text>
			<xsl:call-template name="makeDescStmtPosition" />
			<xsl:text> Maximum number of Value String Elements matching statement template </xsl:text>
			<xsl:value-of select="$st-id" />
			<xsl:text> exceeded.</xsl:text>
			<xsl:text> Present: </xsl:text>
			<xsl:element name="iso:value-of">
				<xsl:attribute name="select">count(dcds:valueString)</xsl:attribute>
			</xsl:element>
			<xsl:text> Maximum permitted: </xsl:text>
			<xsl:value-of select="." />
		</xsl:element>

	</xsl:template>

	<xsl:template name="makeDescriptionPath">
		<xsl:param name="dt" />

		<xsl:text>dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (</xsl:text>
		<xsl:for-each select="$dt/dsp:ResourceClass">
			<xsl:text>@dcds:valueURI='</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>'</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:text>)]]</xsl:text>

	</xsl:template>

	<xsl:template name="makeStatementPath">
		<xsl:param name="st" />

		<xsl:text>dcds:statement[</xsl:text>
		<xsl:for-each select="$st/dsp:Property">
			<xsl:text>@dcds:propertyURI='</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>'</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:text>]</xsl:text>

	</xsl:template>

	<xsl:template name="makeValueDescriptionPath">
		<xsl:param name="nonLitConst" />

		<xsl:text>dcds:description[dcds:statement[@dcds:propertyURI='http://www.w3.org/1999/02/22-rdf-syntax-ns#type' and (</xsl:text>
		<xsl:for-each select="$nonLitConst/dsp:ValueClass">
			<xsl:text>@dcds:valueURI='</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>'</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:text>)]]</xsl:text>

	</xsl:template>

	<xsl:template name="makeLiteralCompare">
		<xsl:param name="litConst" />
		<xsl:param name="element" />

		<xsl:for-each select="$litConst/dsp:LiteralOption">
			<xsl:text>(</xsl:text>
			<xsl:value-of select="$element" />
			<xsl:text> = '</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>'</xsl:text>
			<xsl:choose>
				<xsl:when test="@lang">
					<xsl:text>and </xsl:text>
					<xsl:value-of select="$element" />
					<xsl:text>/@xml:lang = '</xsl:text>
					<xsl:value-of select="@lang" />
					<xsl:text>'</xsl:text>
				</xsl:when>
				<xsl:when test="@SES">
					<xsl:text>and </xsl:text>
					<xsl:value-of select="$element" />
					<xsl:text>/@dcds:sesURI = '</xsl:text>
					<xsl:value-of select="@SES" />
					<xsl:text>'</xsl:text>
				</xsl:when>
				<xsl:otherwise />
			</xsl:choose>
			<xsl:text>)</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>

	</xsl:template>

	<xsl:template name="makeLanguageCompare">
		<xsl:param name="litConst" />
		<xsl:param name="element" />

		<xsl:for-each select="$litConst/dsp:Language">
			<xsl:text>(</xsl:text>
			<xsl:value-of select="$element" />
			<xsl:text>/@xml:lang = '</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>')</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>

	</xsl:template>

	<xsl:template name="makeSesURICompare">
		<xsl:param name="litConst" />
		<xsl:param name="element" />

		<xsl:for-each select="$litConst/dsp:SyntaxEncodingScheme">
			<xsl:text>(</xsl:text>
			<xsl:value-of select="$element" />
			<xsl:text>/@dcds:sesURI = '</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>')</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>

	</xsl:template>

	<xsl:template name="makeValueURICompare">
		<xsl:param name="nonLitConst" />

		<xsl:for-each select="$nonLitConst/dsp:ValueURI">
			<xsl:text>(@dcds:valueURI</xsl:text>
			<xsl:text> = '</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>')</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>

	</xsl:template>

	<xsl:template name="makeVesURICompare">
		<xsl:param name="nonLitConst" />

		<xsl:for-each select="$nonLitConst/dsp:VocabularyEncodingScheme">
			<xsl:text>(@dcds:vesURI</xsl:text>
			<xsl:text> = '</xsl:text>
			<xsl:value-of select="." />
			<xsl:text>')</xsl:text>
			<xsl:if test="position()!=last()">
				<xsl:text> or </xsl:text>
			</xsl:if>
		</xsl:for-each>

	</xsl:template>

	<xsl:template name="makeDescPosition">
		<xsl:text> Description Element: </xsl:text>
		<xsl:element name="iso:value-of">
			<xsl:attribute name="select">1 + count(preceding-sibling::dcds:description)</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<xsl:template name="makeDescStmtPosition">
		<xsl:text> Description Element: </xsl:text>
		<xsl:element name="iso:value-of">
			<xsl:attribute name="select">1 + count(../preceding-sibling::dcds:description)</xsl:attribute>
		</xsl:element>
		<xsl:text> Statement Element: </xsl:text>
		<xsl:element name="iso:value-of">
			<xsl:attribute name="select">1 + count(preceding-sibling::dcds:statement)</xsl:attribute>
		</xsl:element>
	</xsl:template>


	<xsl:template match="text()|@*" />

</xsl:stylesheet>
