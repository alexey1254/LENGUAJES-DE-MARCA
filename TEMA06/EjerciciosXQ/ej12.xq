for $baile in doc ("bailes.xml")//baile[profesor="Jesús Lozano"]
let $total:=sum($baile/(plazas*precio))
return 

  <beneficios>
    {$baile/nombre,
    <dinero>{$baile/(plazas * precio)}</dinero>
    }
  </beneficios>

(:let $euros:=sum(doc("bailes.xml")//baile[precio/@moneda='euro']/(plazas*precio))
let $dolares:=sum(doc("bailes.xml")//baile[precio/@moneda='dolares']/(plazas*precio))
return concat($euros + $dolares * 0.95,"€":)

