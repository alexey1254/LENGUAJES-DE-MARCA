let $enero:=doc("bailes.xml")//baile[starts-with(comienzo, "2022-01")] (:contains(comienzo,"-01-"):)
(: where contains($baile/comienzo,"-01-") :)
return 
<ComienzoEnero>
{
$enero/nombre,
$enero/comienzo
}
</ComienzoEnero>