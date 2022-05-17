for $baile in doc("bailes.xml")/bailes/baile
order by $baile/sala
return
 ($baile/profesor,
 $baile/sala)