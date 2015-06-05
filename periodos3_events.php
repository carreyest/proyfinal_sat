<?php
//BindEvents Method @1-BC729EBD
function BindEvents()
{
    global $periodos_carga1;
    global $Panel2;
    global $Panel12;
    global $CCSEvents;
    $periodos_carga1->fecha_limite->CCSEvents["BeforeShow"] = "periodos_carga1_fecha_limite_BeforeShow";
    $Panel2->CCSEvents["BeforeShow"] = "Panel2_BeforeShow";
    $Panel12->CCSEvents["BeforeShow"] = "Panel12_BeforeShow";
    $CCSEvents["AfterInitialize"] = "Page_AfterInitialize";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
    $CCSEvents["BeforeOutput"] = "Page_BeforeOutput";
    $CCSEvents["BeforeUnload"] = "Page_BeforeUnload";
}
//End BindEvents Method

//periodos_carga1_fecha_limite_BeforeShow @52-1CC89539
function periodos_carga1_fecha_limite_BeforeShow(& $sender)
{
    $periodos_carga1_fecha_limite_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos_carga1; //Compatibility
//End periodos_carga1_fecha_limite_BeforeShow

//Close periodos_carga1_fecha_limite_BeforeShow @52-9D0563F8
    return $periodos_carga1_fecha_limite_BeforeShow;
}
//End Close periodos_carga1_fecha_limite_BeforeShow

//Panel2_BeforeShow @41-96696C3D
function Panel2_BeforeShow(& $sender)
{
    $Panel2_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel2; //Compatibility
//End Panel2_BeforeShow

//Close Panel2_BeforeShow @41-AE7F9FB3
    return $Panel2_BeforeShow;
}
//End Close Panel2_BeforeShow

//Panel12_BeforeShow @2-3A9FD022
function Panel12_BeforeShow(& $sender)
{
    $Panel12_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Panel12; //Compatibility
//End Panel12_BeforeShow

//Panel12UpdatePanel1 Page BeforeShow @57-C20DEA62
    global $CCSFormFilter;
    if ($CCSFormFilter == "Panel12") {
        $Component->BlockPrefix = "";
        $Component->BlockSuffix = "";
    } else {
        $Component->BlockPrefix = "<div id=\"Panel12\">";
        $Component->BlockSuffix = "</div>";
    }
//End Panel12UpdatePanel1 Page BeforeShow

//Close Panel12_BeforeShow @2-088E96E3
    return $Panel12_BeforeShow;
}
//End Close Panel12_BeforeShow

//Page_BeforeInitialize @1-30CACDD8
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos3; //Compatibility
//End Page_BeforeInitialize

//Panel12UpdatePanel1 PageBeforeInitialize @57-7509641F
    if (CCGetFromGet("FormFilter") == "Panel12" && CCGetFromGet("IsParamsEncoded") != "true") {
        global $TemplateEncoding, $CCSIsParamsEncoded;
        CCConvertDataArrays("UTF-8", $TemplateEncoding);
        $CCSIsParamsEncoded = true;
    }
//End Panel12UpdatePanel1 PageBeforeInitialize

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize

//Page_AfterInitialize @1-317E1504
function Page_AfterInitialize(& $sender)
{
    $Page_AfterInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos3; //Compatibility
//End Page_AfterInitialize

//Close Page_AfterInitialize @1-379D319D
    return $Page_AfterInitialize;
}
//End Close Page_AfterInitialize

//Page_BeforeShow @1-8ABC3D30
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos3; //Compatibility
//End Page_BeforeShow

//Panel12UpdatePanel1 Page BeforeShow @57-545AD4AD
    global $CCSFormFilter;
    if (CCGetFromGet("FormFilter") == "Panel12") {
        $CCSFormFilter = CCGetFromGet("FormFilter");
        unset($_GET["FormFilter"]);
        if (isset($_GET["IsParamsEncoded"])) unset($_GET["IsParamsEncoded"]);
    }
//End Panel12UpdatePanel1 Page BeforeShow

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow

//Page_BeforeOutput @1-DC5A6B4E
function Page_BeforeOutput(& $sender)
{
    $Page_BeforeOutput = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos3; //Compatibility
//End Page_BeforeOutput

//Panel12UpdatePanel1 PageBeforeOutput @57-2CABCFCB
    global $CCSFormFilter, $Tpl, $main_block;
    if ($CCSFormFilter == "Panel12") {
        $main_block = $_SERVER["REQUEST_URI"] . "|" . $Tpl->getvar("/Panel Panel12");
    }
//End Panel12UpdatePanel1 PageBeforeOutput

//Close Page_BeforeOutput @1-8964C188
    return $Page_BeforeOutput;
}
//End Close Page_BeforeOutput

//Page_BeforeUnload @1-FF3D1E89
function Page_BeforeUnload(& $sender)
{
    $Page_BeforeUnload = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $periodos3; //Compatibility
//End Page_BeforeUnload

//Panel12UpdatePanel1 PageBeforeUnload @57-3C71CBA9
    global $Redirect, $CCSFormFilter, $CCSIsParamsEncoded;
    if ($Redirect && $CCSFormFilter == "Panel12") {
        if ($CCSIsParamsEncoded) $Redirect = CCAddParam($Redirect, "IsParamsEncoded", "true");
        $Redirect = CCAddParam($Redirect, "FormFilter", $CCSFormFilter);
    }
//End Panel12UpdatePanel1 PageBeforeUnload

//Close Page_BeforeUnload @1-CFAEC742
    return $Page_BeforeUnload;
}
//End Close Page_BeforeUnload


?>
