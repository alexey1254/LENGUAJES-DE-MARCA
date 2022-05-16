for $baile in doc("bailes.xml")//baile
order by $baile/nombre
return 

<baile>
{
    $baile/nombre,
    $baile/precio,
    <precioDescuento>
    {
        $baile/(precio*0.85)
    }</precioDescuento>
}
</baile>
