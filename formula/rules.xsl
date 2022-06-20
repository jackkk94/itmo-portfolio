<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=MML_HTMLorMML"></script>
        <title></title>
        <style>
          .formula{
            font-size:2em;
            text-align: center;
          }
        </style>
      </head>
      <body>
        <div class="formula">
          <math xmlns="http://www.w3.org/1998/Math/MathML">
            <xsl:copy>
              <xsl:apply-templates select="@*|node()" />
            </xsl:copy>
          </math>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="операнд">
    <mi>
      <xsl:apply-templates select="@*|node()" />
    </mi>
  </xsl:template>
  <xsl:template match="оператор">
    <mo>
      <xsl:apply-templates select="@*|node()" />
    </mo>
  </xsl:template>
  <xsl:template match="корень">
    <msqrt>
      <xsl:apply-templates select="@*|node()" />
    </msqrt>
  </xsl:template>
  <xsl:template match="строка">
    <mrow>
      <xsl:apply-templates select="@*|node()" />
    </mrow>
  </xsl:template>
  <xsl:template match="дробь">
    <mfrac>
      <xsl:apply-templates select="@*|node()" />
    </mfrac>
  </xsl:template>
  <xsl:template match="число">
    <mn>
      <xsl:apply-templates select="@*|node()" />
    </mn>
  </xsl:template>
  <xsl:template match="низверх">
    <munderover displaystyle="true">
      <xsl:apply-templates select="@*|node()" />
    </munderover>
  </xsl:template>
  <xsl:template match="верх">
    <msup>
      <xsl:apply-templates select="@*|node()" />
    </msup>
  </xsl:template>
  <xsl:template match="низ">
    <msub>
      <xsl:apply-templates select="@*|node()" />
    </msub>
  </xsl:template>
</xsl:stylesheet>