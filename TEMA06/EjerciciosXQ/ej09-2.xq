<html lang="es">
    <head>
        <meta charset="utf-8"/>
        <title>Listado cursos de baile</title>
        <style>
            tr:nth-child(even) &#123; background-color: lightblue; &#125;
            tr:nth-child(odd) &#123; background-color: lightgray; &#125;
            .derecha &#123; text-align: right; &#125;
        </style>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Precio con Descuento</th>
                </tr>
            </thead>
            <tbody>
                {
                    for $baile in doc("bailes.xml")//baile
                    order by $baile/nombre
                    return
                    <tr>
                        <td class="derecha">{ data($baile/nombre)}</td>
                        <td class="derecha">{ data($baile/precio)}</td>
                        <td class="derecha">{ $baile/(precio*0.85)}</td>
                    </tr>
                }
            </tbody>
        </table>
    </body>
</html>