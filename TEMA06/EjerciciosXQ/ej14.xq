for $profesor in distinct-values(doc("bailes.xml")//profesor)
let $salas:=distinct-values(doc("bailes.xml")//baile[profesor=$profesor]/sala)
return
<profesor>
    <nombre>{$profesor}</nombre>
    <salas>{$salas}</salas>
</profesor>


