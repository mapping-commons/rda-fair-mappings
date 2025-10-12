<?xml version="1.0" encoding="UTF-8"?>

<!--

  Copyright 2016-2021 EUROPEAN UNION
  Licensed under the EUPL, Version 1.2 or - as soon they will be approved by
  the European Commission - subsequent versions of the EUPL (the "Licence");
  You may not use this work except in compliance with the Licence.
  You may obtain a copy of the Licence at:

  https://joinup.ec.europa.eu/collection/eupl

  Unless required by applicable law or agreed to in writing, software
  distributed under the Licence is distributed on an "AS IS" basis,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the Licence for the specific language governing permissions and
  limitations under the Licence.


-->

<!--

  Example XSLT mapping specification created for the RDA FAIR Mappings Working Group. 

  This example has been create by creating a subset of the CiteDCAP-AP XSLT script (https://raw.githubusercontent.com/ec-jrc/datacite-to-dcat-ap/master/datacite-to-dcat-ap.xsl) created by European Commission, Joint Research Centre (JRC) and Andrea Perego (https://github.com/andrea-perego).


-->

<xsl:transform
    xmlns:dct    = "http://purl.org/dc/terms/"
    xmlns:dctype = "http://purl.org/dc/dcmitype/"
    xmlns:dcat   = "http://www.w3.org/ns/dcat#"
    xmlns:rdf    = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs   = "http://www.w3.org/2000/01/rdf-schema#"
    xmlns:xsl    = "http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="xml" indent="yes" encoding="utf-8" />
  <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'"/>
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>

  <xsl:template match="/">
    <rdf:RDF>
      <rdf:Description rdf:about="http://example.com/fair-mappings/1">
        <xsl:apply-templates select="*[local-name() = 'resource' and starts-with(namespace-uri(), 'http://datacite.org/schema/kernel-')]|//*[local-name() = 'resource' and starts-with(namespace-uri(), 'http://datacite.org/schema/kernel-')]"/>
      </rdf:Description>
    </rdf:RDF>
  </xsl:template>

  <xsl:template match="*[local-name() = 'resource' and starts-with(namespace-uri(), 'http://datacite.org/schema/kernel-')]|//*[local-name() = 'resource' and starts-with(namespace-uri(), 'http://datacite.org/schema/kernel-')]">
    <xsl:apply-templates select="*[local-name() = 'dates']/*[local-name() = 'date']"/>
    <xsl:apply-templates select="*[local-name() = 'language']"/>
  </xsl:template>


  <xsl:template name="Language" match="*[local-name() = 'language']">
    <xsl:variable name="langCodeAlpha3">
      <xsl:call-template name="LanguageAlpha3">
        <xsl:with-param name="langCode" select="normalize-space(.)"/>
      </xsl:call-template>
    </xsl:variable>
    <dct:language rdf:resource="http://publications.europa.eu/resource/authority/language/{translate($langCodeAlpha3,$lowercase,$uppercase)}"/>
  </xsl:template>

  <xsl:template name="LanguageAlpha3">
    <xsl:param name="langCode"/>
    <xsl:variable name="alpha2">
      <xsl:choose>
        <xsl:when test="string-length($langCode) = 2">
          <xsl:value-of select="translate($langCode,$uppercase,$lowercase)"/>
        </xsl:when>
        <xsl:when test="string-length($langCode) > 3 and string-length(substring-before($langCode, '-')) = 2">
          <xsl:value-of select="translate(substring-before($langCode, '-'),$uppercase,$lowercase)"/>
        </xsl:when>
      </xsl:choose>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="string-length($langCode) = 3">
        <xsl:value-of select="translate($langCode,$uppercase,$lowercase)"/>
      </xsl:when>
      <xsl:when test="$alpha2 != ''">
        <xsl:choose>
          <xsl:when test="$alpha2 = 'bg'">
            <xsl:text>bul</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'cs'">
            <xsl:text>cze</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'da'">
            <xsl:text>dan</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'de'">
            <xsl:text>ger</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'el'">
            <xsl:text>gre</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'en'">
            <xsl:text>eng</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'es'">
            <xsl:text>spa</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'et'">
            <xsl:text>est</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'fi'">
            <xsl:text>fin</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'fr'">
            <xsl:text>fre</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'ga'">
            <xsl:text>gle</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'hr'">
            <xsl:text>hrv</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'it'">
            <xsl:text>ita</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'lv'">
            <xsl:text>lav</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'lt'">
            <xsl:text>lit</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'hu'">
            <xsl:text>hun</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'mt'">
            <xsl:text>mlt</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'nl'">
            <xsl:text>dut</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'pl'">
            <xsl:text>pol</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'pt'">
            <xsl:text>por</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'ru'">
            <xsl:text>rum</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'sk'">
            <xsl:text>slo</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'sl'">
            <xsl:text>slv</xsl:text>
          </xsl:when>
          <xsl:when test="$alpha2 = 'sv'">
            <xsl:text>swe</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="translate($langCode,$uppercase,$lowercase)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="Dates" match="*[local-name() = 'dates']/*[local-name() = 'date']">
    <xsl:variable name="date" select="normalize-space(.)"/>

    <xsl:variable name="period">
      <xsl:choose>
        <xsl:when test="not(contains($date, '/'))">
          <dcat:startDate rdf:datatype="xsd:date">
            <xsl:value-of select="$date"/>
          </dcat:startDate>
          <dcat:endDate rdf:datatype="xsd:date">
            <xsl:value-of select="$date"/>
          </dcat:endDate>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="start" select="substring-before($date, '/')"/>
          <xsl:variable name="end" select="substring-after($date, '/')"/>
          <dcat:startDate rdf:datatype="xsd:date">
            <xsl:value-of select="$start"/>
          </dcat:startDate>
          <dcat:endDate rdf:datatype="xsd:date">
            <xsl:value-of select="$end"/>
          </dcat:endDate>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>


    <dct:temporal>
      <dct:PeriodOfTime>
        <xsl:copy-of select="$period"/>
      </dct:PeriodOfTime>
    </dct:temporal>
  </xsl:template>
</xsl:transform>