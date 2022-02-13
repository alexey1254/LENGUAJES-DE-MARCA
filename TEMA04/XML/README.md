# Definicion de XML

- XML puede ser usado para definir otros lenguajes. Por ejemplo, el lenguaje XHTML, ampliamente usado hoy en dia en la web, se ha constituido como base XML.

# Estructura y sintaxis

- Un documento XML está formado, en principio, por lo que se conoce como "texto plano", esto es, texto en el cual todos los caracteres se representan visualmente, sin existir caracteres no visibles exceptuando los de salto de línea, tabulador o espacio.

- Como ya sabemos los documentos escritos usando XML contendrán marcas para separar la información que estructura el documento de la información que se quiere almacenar. Para construir dichas marcas, en XML se usan los caracteres "<" y ">" para delimitar el texto que se desea marcar, mientras que el carácter "/" sirve para indicar la etiqueta de finalización del marcado. Un posible ejemplo de documento XML sería el siguiente:

```
<nombre>Pepe</nombre>
<persona nombre="Pepe" />
```

- Esta construcción se denomina elemento y constituye la base principal de los documentos XML. Además de los elementos, un documento XML puede contener otros tipos de información.

# Etiquetas elementos y atributos.

### Etiquetas:

- Las etiquetas son el componente de XML que permite definir los elementos que conformarán un documento de la siguiente forma.

```
<etiqueta>Valor</etiqueta>
```

- Como se puede observar los elementos se formarán usando una etiqueta de inicio, otra de fin, delimitadas mediante los caracteres "<" y ">", y que comparten el identificador textual pero añadiendo el carácter "/' a la etiqueta del final. En medio de las etiquetas de inicio y fin del elemento se representará el contenido que se desee almacenar en ese elemento. Este contenido puede a su vez englobar otros elementos. Por otro lado, los elementos pueden no contener ningún valor, pero en ese caso se deberá usar solamente una etiqueta de finalización que termina en un espacio opcional y el carácter "/", p.ej.: el elemento ``<br />`` de XHTML.

### Ejemplo de XML

```
<alumno>
    <nombre>Luisa</nombre>
    <apellido1>Giménez</apellido1>
    <apellido2>Martínez</apellido2>
    <teléfono>655332244</teléfono>
    <dirección>C/ Gran Vía, 33.</dirección>
    <sexo>Mujer</sexo>
</alumno>
```

### Los elementos de XML deben seguir las siguientes reglas:
- Los nombres de los elementos son case sensitive
- Los nombres de los elementos deben empezar por una letra, guion bajo o dos puntos
- Los elementos no deben empezar por ninguna combinacion de las letras xml
- Los nombres no pueden tener espacios

### Atributos:

- Los elementos pueden asimismo contener atributos, los cuales se especificarán en la etiqueta de inicio del elemento. El objetivo de los atributos es poder proporcionar una información adicional sobre un elemento concreto. La sintaxis para representar los atributos consiste en especificar el nombre del atributo dentro de la etiqueta de inicio, a continuación un símbolo "=" y finalmente el valor del atributo elimitado por comillas dobles o por comillas simples.

```
<alumno nombre=""></alumno>
```
### Caracteres especiales:

```
&quot; "
&amp; &
&apos; '
&lt; <
&gt; >
```