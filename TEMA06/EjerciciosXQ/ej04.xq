for $baile in doc("bailes.xml")/bailes/baile[precio>30 and precio/@moneda='euro']
return $baile/nombre