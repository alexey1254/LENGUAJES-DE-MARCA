for $libro in doc("libros.xml")/biblioteca/libros/libro where $libro/paginas < 100
return $libro/titulo