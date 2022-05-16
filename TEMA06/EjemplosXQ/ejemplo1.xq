(:
Título y editorial de todos los libros. Para devolver varios campos, los
envolvemos en un elemento
:)

for $libro in doc("libros.xml")/biblioteca/libros/libro return 
<libro>
  {
    $libro/titulo,
    $libro/editorial
  }
</libro>