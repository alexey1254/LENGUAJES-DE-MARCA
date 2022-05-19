let $profesores:=doc("bailes.xml")/bailes/baile/profesor
let $distinct-prof:=distinct-values($profesores)
let $salas:=doc("bailes.xml")/bailes/baile[profesor=$distinct-prof]


