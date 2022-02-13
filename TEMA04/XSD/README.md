# XSD

### [Diagrama de flujo de xsd](DefinicionElementosAtributosXsd.pdf)

# ¿Qué es XSD?
- Se puede decir que un XSD (o esquema de ahora en adelante), es la evolución natural de un DTD. Permite expresar con mayor potencia, gramáticas más complejas utilizando la misma sintaxis de XML (lo que facilita enormemente el trabajo). Nació en 1998 y se recomendó el uso en el 2001 por el W3C (World Wide Web Consortium). Las características principales de un esquema son las siguientes:

    - Define que elementos pueden aparecer en un documento XML.
    - Define que atributos pueden aparecer en un documento XML.
    - Define que elementos son compuestos, indicando que elementos hijos deben aparecer y en que orden.
    - Define que elementos pueden ser vacíos o que pueden incluir texto asociado.
    - Define los tipos que pueden utilizarse en cada elemento o atributo.
    - Define la obligatoriedad, la optatividad de elementos y/o atributos.

### Aqui tenemos un XML

```
<?xml version="1.0" encoding="UTF-8"?>
<BDsms xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="BDsms.xsd">
<!-- <!DOCTYPE BDsms SYSTEM "BDsms.dtd">
<BDsms>-->
    <sms>
        <teléfono>955556655</teléfono>
        <fecha>2001-07-01</fecha>
        <hora>23:55:00</hora>
        <mensaje>Juego: Tetris</mensaje>
        </sms>
    <sms>
        <teléfono>745155611</teléfono>
        <fecha>2020-02-29</fecha>
        <hora>15:05:00</hora>
        <mensaje>Juego2: Arkanoid</mensaje>
        </sms>
    <sms>
        <teléfono>842352200</teléfono>
        <fecha>2011-11-10</fecha>
        <hora>13:00:00</hora>
        <hora>13:00:00</hora>
        <mensaje>Juego3: Comecocos</mensaje>
    </sms>
</BDsms>
```

### Y este seria su XSD

```
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1" xml:lang="es">
    <xs:element name="BDsms">
        <xs:complexType> <!-- Porque está compuesto por otros elementos -->
            <xs:sequence> <!-- Para decir que está compuesto de -->
                <xs:element name="sms" minOccurs="0" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="teléfono" type="xs:integer" />
                            <xs:element name="fecha" type="xs:date" />
                            <xs:element name="hora" type="xs:time" minOccurs="1" maxOccurs="2" />
                            <xs:element name="mensaje" type="xs:string" />
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

