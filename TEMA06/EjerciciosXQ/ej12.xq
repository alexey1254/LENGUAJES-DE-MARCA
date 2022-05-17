for $baile in doc ("bailes.xml")//baile[profesor="Jesús Lozano"]
return 

  <beneficios>
    {$baile/nombre}
    <dinero>
    {$baile/(plazas * precio)}
    </dinero>
  </beneficios>


