<?php
//BindEvents Method @1-E972D6B1
function BindEvents()
{
    global $periodos_carga1;
    global $Panel2;
    global $CCSEvents;
    $periodos_carga1->fecha_limite->CCSEvents["BeforeShow"] = "periodos_carga1_fecha_limite_BeforeShow";
    $Panel2->CCSEvents["BeforeShow"] = "Panel2_BeforeShow";
}
//End BindEvents Method

//periodos_carga1_fecha_limite_BeforeShow @57-1CC89539
function periodos_carga1_fecha_limite_BeforeShow(& $sender)
{
    $periodos_carga1_fecha_limite_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos_carga1; //Compatibility
//End periodos_carga1_fecha_limite_BeforeShow

//Close periodos_carga1_fecha_limite_BeforeShow @57-9D0563F8
    return $periodos_carga1_fecha_limite_BeforeShow;
}
//End Close periodos_carga1_fecha_limite_BeforeShow

//Panel2_BeforeShow @44-96696C3D
function Panel2_BeforeShow(& $sender)
{
    $Panel2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel2; //Compatibility
//End Panel2_BeforeShow

//Close Panel2_BeforeShow @44-AE7F9FB3
    return $Panel2_BeforeShow;
}
//End Close Panel2_BeforeShow

//Page_BeforeInitialize @1-EA2D154F
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos; //Compatibility
//End Page_BeforeInitialize

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize
?>
