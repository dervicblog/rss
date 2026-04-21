<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:html="http://www.w3.org/TR/REC-html40" 
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>&#160;RSS Feed</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <style>
                    body { 
                        background: #0f172a; 
                        color: #f1f5f9; 
                        font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; 
                        margin: 0; 
                        padding: 40px; 
                        line-height: 1.5;
                    }
                    #content { 
                        max-width: 1000px; 
                        margin: 0 auto; 
                        background: #1e293b; 
                        padding: 30px; 
                        border-radius: 12px; 
                        box-shadow: 0 10px 25px rgba(0,0,0,0.3); 
                        border: 1px solid #334155;
                    }
                    h1 { 
                        color: #38bdf8; 
                        font-size: 24px; 
                        margin: 0 0 20px 0; 
                        border-bottom: 2px solid #334155; 
                        padding-bottom: 10px; 
                    }
                    table { 
                        width: 100%; 
                        border-collapse: collapse; 
                        margin-top: 10px; 
                    }
                    th { 
                        text-align: left; 
                        background: #0f172a; 
                        color: #94a3b8; 
                        padding: 12px; 
                        font-size: 12px; 
                        text-transform: uppercase; 
                        letter-spacing: 1px; 
                    }
                    td { 
                        padding: 12px; 
                        border-bottom: 1px solid #334155; 
                    }
                    tr:hover td { 
                        background: #2d3e50; 
                    }
                    a { 
                        color: #38bdf8; 
                        text-decoration: none; 
                        font-weight: 600; 
                    }
                    a:hover { 
                        text-decoration: underline; 
                    }
                    .lastmod { 
                        color: #64748b; 
                        font-family: monospace; 
                        font-size: 13px; 
                    }
                </style>
            </head>
            <body>
                <div id="content">
                    <h1>&#160;RSS Feed</h1>
                    <p>&#160; <xsl:value-of select="count(rss/channel/item)"/> URLs.</p>
                    <table>
                        <thead>
                            <tr>
                                <th width="75%">Post title</th>
                                <th width="25%">Last change</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="rss/channel/item">
                                <tr>
                                    <td>
                                        <a href="{link}">
                                            <xsl:value-of select="title"/>
                                        </a>
                                    </td>
                                    <td>
                                        <span class="lastmod">
                                            <xsl:value-of select="pubDate"/>
                                        </span>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
