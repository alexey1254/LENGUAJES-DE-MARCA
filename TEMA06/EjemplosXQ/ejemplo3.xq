(:
El número de libros de menos de 100 páginas. Utilizamos la función count().
:)

let $x:=count(doc("libros.xml")/biblioteca/libros/libro[paginas<100]) return $x