# DTD's

- DTD (Document Type Definition – Definición de Tipo de Documento) es la definición de como se construye un documento XML
para que se ajuste a las necesidades previamente analizadas. Es decir, establece que elementos son aceptados (léxico) y en que
posiciones deben estar dentro de un documento XML (sintaxis)

- Cuando se define una DTD y se referencia dentro de un documento XML, se establece una relación de:

Que léxico es el que se espera (sobre todo qué nombres de elementos y atributos).

Que reglas sintácticas debe cumplir nuestro documento XML (el orden y el número de veces que pueden aparecer los elementos que constituyen el léxico).

## Ejemplos de DTD

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE BDsms SYSTEM "BDsms.dtd">
<BDsms>
    <sms>
        <teléfono>955 55 66 55</teléfono>
        <fecha>1/7/2011</fecha>
        <hora>23:55</hora>
        <mensaje>Juego: Tetris</mensaje>
    </sms>
    <sms>
        <teléfono>745 15 56 11</teléfono>
        <fecha>22/9/2011</fecha>
        <hora>15:05</hora>
        <mensaje>Juego2: Arkanoid</mensaje>
    </sms>
    <sms>
        <teléfono>842 35 22 00</teléfono>
        <fecha>10/11/2011</fecha>
        <hora>09:22</hora>
        <mensaje>Juego3: Comecocos</mensaje>
    </sms>
</BDsms>
```

```
<!ELEMENT BDsms (sms*)>
    <!ELEMENT sms (teléfono, fecha, hora, mensaje)>
        <!ELEMENT teléfono (#PCDATA)>
        <!ELEMENT fecha (#PCDATA)>
        <!ELEMENT hora (#PCDATA)>
        <!ELEMENT mensaje (#PCDATA)>
```

## Elementos para construir un DTD

- #PCDATA: su significado en inglés es Parsed Character Data. Indica que entre la etiqueta de apertura y cierre de ese elemento, se almacenarán caracteres como texto y serán analizados por un parser. Como es lógico, al analizarse mediante el parser el contenido del texto para encontrar entidades y elementos, no podrá encontrarse ninguno de los caracteres anteriormente mencionados (< > & ” ' ) que deberán ser sustituidos por sus respectivas entidades, pues el parser podría confundirse al analizar
el contenido del elemento. Ejemplo: <!ELEMENT teléfono (#PCDATA)>

- EMPTY: indica que el elemento está vacío. Un ejemplo de uso es la etiqueta ``<br />`` de XHTML.
Esta etiqueta permite establecer un salto de línea que debería estar indicado como ``<br></br>``. Si se declara como EMPTY, entonces se simplifica el salto de línea de la siguiente manera: ``<br />``. Resulta
más cómodo.
Ejemplo: ``<!ELEMENT saltoLinea EMPTY> => <saltoLinea/>``

- ANY: indica que el elemento puede contener cualquier cosa, PCDATA o incluso otros elementos anidados

- CHOICES (elección de uno de entre varios hijos): indica que un elemento estará compuesto por
uno de entre varios hijos.
Ejemplo:

```
<!ELEMENT dibujo (figura+)>
    <!ELEMENT figura (circulo | cuadrado)>
        <!ELEMENT circulo (centro,radio)>
            <!ELEMENT centro (#PCDATA)>
            <!ELEMENT radio (#PCDATA)>
        <!ELEMENT cuadrado (lado)>
            <!ELEMENT lado (#PCDATA)>

```
- Contenido mezclado.
Ejemplo:
```
<!ELEMENT diccionario (definición*)>
<!ELEMENT definición (#PCDATA | termino)*>
<!ELEMENT termino (#PCDATA)>

<diccionario>
    <definición>
        Una <termino>Máquina de Turing</termino> se refiere a un autómata finito con infinita memoria.
    </definición>
</diccionario>
```

## Atributos de las DTD:

 La manera de declarar atributos que forman parte de los elementos en una DTD es de esta forma:

- CDATA: texto que podrá tener cualquier carácter.
- ID: es un identificador que permite identificar al elemento de manera única en todo un documento
XML (por desgracia su valor debe comenzar con _ : o una letra, no lo vamos a poder usar para
identificadores que empiezan por número, como suelen ser los campos ID de la mayoría de tablas)
- IDREF: es un identificador de otro elemento del propio documento XML.
- IDREFS: es una lista de identificadores a otros elementos, separados por espacios.
Enumerados (valor1 | valor2 | valor3 | ...): el valor es uno de los indicados en esta lista
(definida por el usuario).
- NMTOKEN: es un texto que sólo podrá tener letras, dígitos, guion "-", subrayado “_”, punto "." y dos
puntos ":". Es un nombre válido XML, aunque menos restrictivo, los valores de este tipo de atributo
pueden empezar por “.” , “-” , "_", ":" o una letra.
- NMTOKENS: es una lista de nombres XML validos. Es como un NMTOKEN pero se incluyen los
espacios en blanco " ", tabuladores o retornos de carro.
- ENTITY: el tipo del atributo es una entidad que se ha declarado anteriormente.
- ENTITIES: Es una lista de entidades.
valor_por_defecto: puede indicarse lo siguiente:
- #REQUIRED. El atributo es obligatorio.
- #IMPLIED. El atributo es opcional (puede omitirse)
- #FIXED. El atributo toma siempre un valor fijo, como en el siguiente ejemplo:
``<!ATTLIST documento version CDATA #FIXED "1.0">`` si se omite dicho atributo es como si estuviera presente con el citado valor.