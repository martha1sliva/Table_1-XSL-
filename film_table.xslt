<?xml version="1.0" ?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/"> 
<html>
<head>

<title> My XML WP </title>

//connecting to stylesheet
<link rel="stylesheet" type="text/css" href="myXMLstyle.css" />

</head>

<body>
<h1> Channel Information: </h1>

<xsl:apply-templates select="/channel" />
<h1> Item Information: </h1>

<table >
<tr>
<th>Title</th>
<th>Publication Date</th>
<th>Description</th>
</tr>
<xsl:apply-templates select="/channel/item" />
</table>

</body>

</html>

</xsl:template>

//draws information from "channel"
//inserts into table
<xsl:template match="channel"> 


<h2>
<xsl:value-of select = "title"/>
</h2>

<xsl:value-of select = "pubDate"/>
<br />

<xsl:value-of select = "link"/>
<br />

<xsl:value-of select = "description"/>
<br />

//template
</xsl:template>

<xsl:template match = "item"> 


<tr>
<td>
<xsl:value-of select = "title"/>
</td>
<td>
<xsl:value-of select = "pubDate"/>
</td>
<td>
<xsl:value-of select = "description"/>
</td>
</tr>

</xsl:template>
</xsl:stylesheet>