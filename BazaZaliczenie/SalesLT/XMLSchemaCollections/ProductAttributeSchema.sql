CREATE XML SCHEMA COLLECTION [SalesLT].[ProductAttributeSchema]
    AS N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <xsd:element name="ProductAttributes">
    <xsd:complexType>
      <xsd:complexContent>
        <xsd:restriction base="xsd:anyType">
          <xsd:sequence>
            <xsd:element name="Weight" type="xsd:decimal" minOccurs="0" />
            <xsd:element name="Color" type="xsd:string" minOccurs="0" />
            <xsd:element name="Material" type="xsd:string" minOccurs="0" />
            <xsd:element name="WarrantyYears" type="xsd:int" minOccurs="0" />
            <xsd:element name="CountryOfOrigin" type="xsd:string" minOccurs="0" />
          </xsd:sequence>
        </xsd:restriction>
      </xsd:complexContent>
    </xsd:complexType>
  </xsd:element>
</xsd:schema>';

