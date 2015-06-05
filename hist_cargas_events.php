<?php
//BindEvents Method @1-4E612C03
function BindEvents()
{
    global $tabla_layout3;
    global $tabla_layout3Search;
    global $CCSEvents;
    $tabla_layout3->CCSEvents["BeforeShowRow"] = "tabla_layout3_BeforeShowRow";
    $tabla_layout3Search->s_fecha_registro->CCSEvents["BeforeShow"] = "tabla_layout3Search_s_fecha_registro_BeforeShow";
    $CCSEvents["BeforeShow"] = "Page_BeforeShow";
}
//End BindEvents Method

//tabla_layout3_BeforeShowRow @2-773718E1
function tabla_layout3_BeforeShowRow(& $sender)
{
    $tabla_layout3_BeforeShowRow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $tabla_layout3; //Compatibility
//End tabla_layout3_BeforeShowRow

//Custom Code @38-2A29BDB7
// -------------------------
    // Write your own code here.
    global $icont;
    
    $cad_obs=$tabla_layout3->Label1->GetValue();
    $tabla_layout3->Label2->SetValue(substr($cad_obs,0,125));
    $icont++;
    $tabla_layout3->id_info->SetValue("id_info".$icont);
    $tabla_layout3->id_infoparam->SetValue($icont);
      
    $tabla_layout3->id_infocomp->SetValue("id_infocomp".$icont);
    
    $tabla_layout3->id_vermas->SetValue("id_vermas".$icont);
    $tabla_layout3->id_vermas1->SetValue($icont);
    
   $tabla_layout3->id_vermenos->SetValue("id_vermenos".$icont); 
  
  
    
// -------------------------
//End Custom Code

//Close tabla_layout3_BeforeShowRow @2-150EDA03
    return $tabla_layout3_BeforeShowRow;
}
//End Close tabla_layout3_BeforeShowRow

//tabla_layout3Search_s_fecha_registro_BeforeShow @34-03CB2DF2
function tabla_layout3Search_s_fecha_registro_BeforeShow(& $sender)
{
    $tabla_layout3Search_s_fecha_registro_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $tabla_layout3Search; //Compatibility
//End tabla_layout3Search_s_fecha_registro_BeforeShow

//Close tabla_layout3Search_s_fecha_registro_BeforeShow @34-841C0A28
    return $tabla_layout3Search_s_fecha_registro_BeforeShow;
}
//End Close tabla_layout3Search_s_fecha_registro_BeforeShow

//Page_BeforeShow @1-6B941450
function Page_BeforeShow(& $sender)
{
    $Page_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $hist_cargas; //Compatibility
//End Page_BeforeShow

//Custom Code @45-2A29BDB7
// -------------------------
    // Write your own code here.
// -------------------------
 global $icont;
 $icont=0;
//End Custom Code

//Close Page_BeforeShow @1-4BC230CD
    return $Page_BeforeShow;
}
//End Close Page_BeforeShow


?>
