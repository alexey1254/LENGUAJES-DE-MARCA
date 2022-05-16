let $suma:=sum(doc("bailes.xml")/bailes/baile[profesor='Miriam Gutiérrez']/(plazas*precio))
return $suma