<?xml version="1.0" encoding="UTF-8"?>
<!-- code by Ignacio Macam Jr. -->

<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- forward slash (/) indicates that it should first look into the root element of our xml file which is "heroes"-->
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="heroes_style.css" />
                <title>Heroes of Dota</title>
            </head>
            <body>
                <h1>List of Dota Heroes</h1>
                <b>Selected Heroes: <xsl:value-of select="/heroes/hero/hero_name[1]"/></b>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Alternate Name 1</th>
                        <th>Alternate Name 2</th>
                        <th>Type</th>
                        <th>Active Skill</th>
                        <th>Passive Skill</th>
                        <th>Gender</th>
                        <th>Weapon</th>
                        <th>Element</th>
                        <th>Undead</th>
                        <th>Attack Range</th>
                        <th>Release Date</th>                   
                        <th>Description</th>
                    </tr>

                    <xsl:for-each select="/heroes/hero">
                    <xsl:sort select="hero_name[1]"/>
                    <tr>
                        <td><xsl:value-of select="hero_name[1]"/></td>
                        <td><xsl:value-of select="hero_name[2]"/></td>
                        <td><xsl:value-of select="hero_name[3]"/></td>
                        <td><xsl:value-of select="hero_type"/></td>
                        <td><xsl:value-of select="skill[1]"/></td>
                        <td><xsl:value-of select="skill[2]"/></td>
                        <td><xsl:value-of select="hero_gender"/></td>
                        <td><xsl:value-of select="hero_weapon"/></td>
                        <td><xsl:value-of select="hero_element"/></td>
                        <td><xsl:value-of select="is_undead"/></td>
                        <td><xsl:value-of select="hero_attack_range"/></td>
                        <td><xsl:value-of select="hero_release_date"/></td>
                        <td><xsl:value-of select="hero_description"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>