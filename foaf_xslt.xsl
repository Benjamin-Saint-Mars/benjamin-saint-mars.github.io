<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:foaf="http://xmlns.com/foaf/0.1/"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">

    <!-- Sortie en XHTML -->
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>

    <!-- Template racine -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Profil FOAF de Benjamin SAINT-MARS</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            </head>
            <body>
                <h1>Profil FOAF de <xsl:value-of select="//foaf:Person/foaf:name"/></h1>
                <div>
                    <p><strong>Nom :</strong> <xsl:value-of select="//foaf:Person/foaf:name"/></p>
                    <p><strong>Prénom :</strong> <xsl:value-of select="//foaf:Person/foaf:givenName"/></p>
                    <p><strong>Nom de famille :</strong> <xsl:value-of select="//foaf:Person/foaf:familyName"/></p>
                    <p><strong>Pseudo :</strong> <xsl:value-of select="//foaf:Person/foaf:nick"/></p>
                    <p><strong>Genre :</strong> <xsl:value-of select="//foaf:Person/foaf:gender"/></p>
                    <!-- Lien vers l'email -->
                    <p><strong>Email :</strong> 
                        <a href="{//foaf:Person/foaf:mbox/@rdf:resource}">
                            <xsl:value-of select="substring-after(//foaf:Person/foaf:mbox/@rdf:resource, 'mailto:')"/>
                        </a>
                    </p>

                    <!-- Lien vers la page personnelle -->
                    <p><strong>Page personnelle :</strong> 
                        <a href="{//foaf:Person/foaf:homepage/@rdf:resource}">
                            <xsl:value-of select="//foaf:Person/foaf:homepage/@rdf:resource"/>
                        </a>
                    </p>
                    <p><strong>Titre :</strong> <xsl:value-of select="//foaf:Person/foaf:title"/></p>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
