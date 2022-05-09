(:
Una lista HTML con el título de los libros de la editorial “O'Reilly” ordenados
por título. Podemos mezclar etiquetas HTML y XQuery y obtener HTML como resultado de una
consulta
:)

<ol>
{
  for $libro in doc("libros.xml")//libro[editorial="O'Reilly"]
  order by $libro/titulo
  return <li>{data($libro/titulo)}</li>  
}
</ol>