<?php
//BindEvents Method @1-5335C0C0
function BindEvents()
{
    global $usuario;
    $usuario->Navigator->CCSEvents["BeforeShow"] = "usuario_Navigator_BeforeShow";
}
//End BindEvents Method

//usuario_Navigator_BeforeShow @25-36783E2C
function usuario_Navigator_BeforeShow(& $sender)
{
    $usuario_Navigator_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $usuario; //Compatibility
//End usuario_Navigator_BeforeShow

//Hide-Show Component @26-0DB41530
    $Parameter1 = $Container->DataSource->PageCount();
    $Parameter2 = 2;
    if (((is_array($Parameter1) || strlen($Parameter1)) && (is_array($Parameter2) || strlen($Parameter2))) && 0 >  CCCompareValues($Parameter1, $Parameter2, ccsInteger))
        $Component->Visible = false;
//End Hide-Show Component

//Close usuario_Navigator_BeforeShow @25-3A19B8F5
    return $usuario_Navigator_BeforeShow;
}
//End Close usuario_Navigator_BeforeShow


?>
