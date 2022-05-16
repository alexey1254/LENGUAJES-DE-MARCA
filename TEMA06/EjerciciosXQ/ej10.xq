let $salario:=sum(doc("bailes.xml")//baile[starts-with(profesor, "Miriam")]/precio*plazas)
return $salario