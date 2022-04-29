for $libro in doc("libros.xml")/biblioteca/libros/libro return 
<libro>
  {
    $libro/titulo,
    $libro/editorial
  }
</libro>