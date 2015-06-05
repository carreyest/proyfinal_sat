<?php
//Include Common Files @1-24F6DF78
define("RelativePath", ".");
define("PathToCurrentPage", "/");
define("FileName", "hist_cargas.php");
include_once(RelativePath . "/Common.php");
include_once(RelativePath . "/Template.php");
include_once(RelativePath . "/Sorter.php");
include_once(RelativePath . "/Navigator.php");
//End Include Common Files

class clsGridtabla_layout3 { //tabla_layout3 class @2-45A6A95D

//Variables @2-78C1CD10

    // Public variables
    public $ComponentType = "Grid";
    public $ComponentName;
    public $Visible;
    public $Errors;
    public $ErrorBlock;
    public $ds;
    public $DataSource;
    public $PageSize;
    public $IsEmpty;
    public $ForceIteration = false;
    public $HasRecord = false;
    public $SorterName = "";
    public $SorterDirection = "";
    public $PageNumber;
    public $RowNumber;
    public $ControlsVisible = array();

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";
    public $Attributes;

    // Grid Controls
    public $StaticControls;
    public $RowControls;
    public $Sorter_id_registro;
    public $Sorter_id_usuario;
    public $Sorter_fecha_registro;
    public $Sorter_estatus;
    public $Sorter_id_incidencia;
    public $Sorter_servicio_negocio;
    public $Sorter_nombre_producto;
    public $Sorter_severidad;
    public $Sorter_ta_manejo_incidencias;
    public $Sorter_ts_manejo_incidencias;
    public $Sorter_disp_personal_sop;
    public $Sorter_observaciones;
//End Variables

//Class_Initialize Event @2-0425ED7B
    function clsGridtabla_layout3($RelativePath, & $Parent)
    {
        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->ComponentName = "tabla_layout3";
        $this->Visible = True;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Grid tabla_layout3";
        $this->Attributes = new clsAttributes($this->ComponentName . ":");
        $this->DataSource = new clstabla_layout3DataSource($this);
        $this->ds = & $this->DataSource;
        $this->PageSize = CCGetParam($this->ComponentName . "PageSize", "");
        if(!is_numeric($this->PageSize) || !strlen($this->PageSize))
            $this->PageSize = 20;
        else
            $this->PageSize = intval($this->PageSize);
        if ($this->PageSize > 100)
            $this->PageSize = 100;
        if($this->PageSize == 0)
            $this->Errors->addError("<p>Form: Grid " . $this->ComponentName . "<BR>Error: (CCS06) Invalid page size.</p>");
        $this->PageNumber = intval(CCGetParam($this->ComponentName . "Page", 1));
        if ($this->PageNumber <= 0) $this->PageNumber = 1;
        $this->SorterName = CCGetParam("tabla_layout3Order", "");
        $this->SorterDirection = CCGetParam("tabla_layout3Dir", "");

        $this->id_registro = new clsControl(ccsLabel, "id_registro", "id_registro", ccsFloat, "", CCGetRequestParam("id_registro", ccsGet, NULL), $this);
        $this->id_usuario = new clsControl(ccsLabel, "id_usuario", "id_usuario", ccsText, "", CCGetRequestParam("id_usuario", ccsGet, NULL), $this);
        $this->fecha_registro = new clsControl(ccsLabel, "fecha_registro", "fecha_registro", ccsText, "", CCGetRequestParam("fecha_registro", ccsGet, NULL), $this);
        $this->estatus = new clsControl(ccsLabel, "estatus", "estatus", ccsText, "", CCGetRequestParam("estatus", ccsGet, NULL), $this);
        $this->id_incidencia = new clsControl(ccsLabel, "id_incidencia", "id_incidencia", ccsText, "", CCGetRequestParam("id_incidencia", ccsGet, NULL), $this);
        $this->servicio_negocio = new clsControl(ccsLabel, "servicio_negocio", "servicio_negocio", ccsText, "", CCGetRequestParam("servicio_negocio", ccsGet, NULL), $this);
        $this->nombre_producto = new clsControl(ccsLabel, "nombre_producto", "nombre_producto", ccsText, "", CCGetRequestParam("nombre_producto", ccsGet, NULL), $this);
        $this->severidad = new clsControl(ccsLabel, "severidad", "severidad", ccsText, "", CCGetRequestParam("severidad", ccsGet, NULL), $this);
        $this->ta_manejo_incidencias = new clsControl(ccsLabel, "ta_manejo_incidencias", "ta_manejo_incidencias", ccsText, "", CCGetRequestParam("ta_manejo_incidencias", ccsGet, NULL), $this);
        $this->ts_manejo_incidencias = new clsControl(ccsLabel, "ts_manejo_incidencias", "ts_manejo_incidencias", ccsText, "", CCGetRequestParam("ts_manejo_incidencias", ccsGet, NULL), $this);
        $this->disp_personal_sop = new clsControl(ccsLabel, "disp_personal_sop", "disp_personal_sop", ccsText, "", CCGetRequestParam("disp_personal_sop", ccsGet, NULL), $this);
        $this->Label1 = new clsControl(ccsLabel, "Label1", "Label1", ccsText, "", CCGetRequestParam("Label1", ccsGet, NULL), $this);
        $this->Label2 = new clsControl(ccsLabel, "Label2", "Label2", ccsText, "", CCGetRequestParam("Label2", ccsGet, NULL), $this);
        $this->id_vermas = new clsControl(ccsLabel, "id_vermas", "id_vermas", ccsText, "", CCGetRequestParam("id_vermas", ccsGet, NULL), $this);
        $this->id_info = new clsControl(ccsLabel, "id_info", "id_info", ccsText, "", CCGetRequestParam("id_info", ccsGet, NULL), $this);
        $this->id_infocomp = new clsControl(ccsLabel, "id_infocomp", "id_infocomp", ccsText, "", CCGetRequestParam("id_infocomp", ccsGet, NULL), $this);
        $this->id_vermenos = new clsControl(ccsLabel, "id_vermenos", "id_vermenos", ccsText, "", CCGetRequestParam("id_vermenos", ccsGet, NULL), $this);
        $this->id_infoparam = new clsControl(ccsLabel, "id_infoparam", "id_infoparam", ccsText, "", CCGetRequestParam("id_infoparam", ccsGet, NULL), $this);
        $this->id_vermas1 = new clsControl(ccsLabel, "id_vermas1", "id_vermas1", ccsText, "", CCGetRequestParam("id_vermas1", ccsGet, NULL), $this);
        $this->Sorter_id_registro = new clsSorter($this->ComponentName, "Sorter_id_registro", $FileName, $this);
        $this->Sorter_id_usuario = new clsSorter($this->ComponentName, "Sorter_id_usuario", $FileName, $this);
        $this->Sorter_fecha_registro = new clsSorter($this->ComponentName, "Sorter_fecha_registro", $FileName, $this);
        $this->Sorter_estatus = new clsSorter($this->ComponentName, "Sorter_estatus", $FileName, $this);
        $this->Sorter_id_incidencia = new clsSorter($this->ComponentName, "Sorter_id_incidencia", $FileName, $this);
        $this->Sorter_servicio_negocio = new clsSorter($this->ComponentName, "Sorter_servicio_negocio", $FileName, $this);
        $this->Sorter_nombre_producto = new clsSorter($this->ComponentName, "Sorter_nombre_producto", $FileName, $this);
        $this->Sorter_severidad = new clsSorter($this->ComponentName, "Sorter_severidad", $FileName, $this);
        $this->Sorter_ta_manejo_incidencias = new clsSorter($this->ComponentName, "Sorter_ta_manejo_incidencias", $FileName, $this);
        $this->Sorter_ts_manejo_incidencias = new clsSorter($this->ComponentName, "Sorter_ts_manejo_incidencias", $FileName, $this);
        $this->Sorter_disp_personal_sop = new clsSorter($this->ComponentName, "Sorter_disp_personal_sop", $FileName, $this);
        $this->Sorter_observaciones = new clsSorter($this->ComponentName, "Sorter_observaciones", $FileName, $this);
        $this->Navigator = new clsNavigator($this->ComponentName, "Navigator", $FileName, 10, tpSimple, $this);
        $this->Navigator->PageSizes = array("1", "5", "10", "25", "50");
    }
//End Class_Initialize Event

//Initialize Method @2-90E704C5
    function Initialize()
    {
        if(!$this->Visible) return;

        $this->DataSource->PageSize = & $this->PageSize;
        $this->DataSource->AbsolutePage = & $this->PageNumber;
        $this->DataSource->SetOrder($this->SorterName, $this->SorterDirection);
    }
//End Initialize Method

//Show Method @2-505E0116
    function Show()
    {
        $Tpl = CCGetTemplate($this);
        global $CCSLocales;
        if(!$this->Visible) return;

        $this->RowNumber = 0;

        $this->DataSource->Parameters["urls_id_usuario"] = CCGetFromGet("s_id_usuario", NULL);
        $this->DataSource->Parameters["urls_fecha_registro"] = CCGetFromGet("s_fecha_registro", NULL);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);


        $this->DataSource->Prepare();
        $this->DataSource->Open();
        $this->HasRecord = $this->DataSource->has_next_record();
        $this->IsEmpty = ! $this->HasRecord;
        $this->Attributes->Show();

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        if(!$this->Visible) return;

        $GridBlock = "Grid " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $GridBlock;


        if (!$this->IsEmpty) {
            $this->ControlsVisible["id_registro"] = $this->id_registro->Visible;
            $this->ControlsVisible["id_usuario"] = $this->id_usuario->Visible;
            $this->ControlsVisible["fecha_registro"] = $this->fecha_registro->Visible;
            $this->ControlsVisible["estatus"] = $this->estatus->Visible;
            $this->ControlsVisible["id_incidencia"] = $this->id_incidencia->Visible;
            $this->ControlsVisible["servicio_negocio"] = $this->servicio_negocio->Visible;
            $this->ControlsVisible["nombre_producto"] = $this->nombre_producto->Visible;
            $this->ControlsVisible["severidad"] = $this->severidad->Visible;
            $this->ControlsVisible["ta_manejo_incidencias"] = $this->ta_manejo_incidencias->Visible;
            $this->ControlsVisible["ts_manejo_incidencias"] = $this->ts_manejo_incidencias->Visible;
            $this->ControlsVisible["disp_personal_sop"] = $this->disp_personal_sop->Visible;
            $this->ControlsVisible["Label1"] = $this->Label1->Visible;
            $this->ControlsVisible["Label2"] = $this->Label2->Visible;
            $this->ControlsVisible["id_vermas"] = $this->id_vermas->Visible;
            $this->ControlsVisible["id_info"] = $this->id_info->Visible;
            $this->ControlsVisible["id_infocomp"] = $this->id_infocomp->Visible;
            $this->ControlsVisible["id_vermenos"] = $this->id_vermenos->Visible;
            $this->ControlsVisible["id_infoparam"] = $this->id_infoparam->Visible;
            $this->ControlsVisible["id_vermas1"] = $this->id_vermas1->Visible;
            while ($this->ForceIteration || (($this->RowNumber < $this->PageSize) &&  ($this->HasRecord = $this->DataSource->has_next_record()))) {
                $this->RowNumber++;
                if ($this->HasRecord) {
                    $this->DataSource->next_record();
                    $this->DataSource->SetValues();
                }
                $Tpl->block_path = $ParentPath . "/" . $GridBlock . "/Row";
                $this->id_registro->SetValue($this->DataSource->id_registro->GetValue());
                $this->id_usuario->SetValue($this->DataSource->id_usuario->GetValue());
                $this->fecha_registro->SetValue($this->DataSource->fecha_registro->GetValue());
                $this->estatus->SetValue($this->DataSource->estatus->GetValue());
                $this->id_incidencia->SetValue($this->DataSource->id_incidencia->GetValue());
                $this->servicio_negocio->SetValue($this->DataSource->servicio_negocio->GetValue());
                $this->nombre_producto->SetValue($this->DataSource->nombre_producto->GetValue());
                $this->severidad->SetValue($this->DataSource->severidad->GetValue());
                $this->ta_manejo_incidencias->SetValue($this->DataSource->ta_manejo_incidencias->GetValue());
                $this->ts_manejo_incidencias->SetValue($this->DataSource->ts_manejo_incidencias->GetValue());
                $this->disp_personal_sop->SetValue($this->DataSource->disp_personal_sop->GetValue());
                $this->Label1->SetValue($this->DataSource->Label1->GetValue());
                $this->Attributes->SetValue("rowNumber", $this->RowNumber);
                $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShowRow", $this);
                $this->Attributes->Show();
                $this->id_registro->Show();
                $this->id_usuario->Show();
                $this->fecha_registro->Show();
                $this->estatus->Show();
                $this->id_incidencia->Show();
                $this->servicio_negocio->Show();
                $this->nombre_producto->Show();
                $this->severidad->Show();
                $this->ta_manejo_incidencias->Show();
                $this->ts_manejo_incidencias->Show();
                $this->disp_personal_sop->Show();
                $this->Label1->Show();
                $this->Label2->Show();
                $this->id_vermas->Show();
                $this->id_info->Show();
                $this->id_infocomp->Show();
                $this->id_vermenos->Show();
                $this->id_infoparam->Show();
                $this->id_vermas1->Show();
                $Tpl->block_path = $ParentPath . "/" . $GridBlock;
                $Tpl->parse("Row", true);
            }
        }
        else { // Show NoRecords block if no records are found
            $this->Attributes->Show();
            $Tpl->parse("NoRecords", false);
        }

        $errors = $this->GetErrors();
        if(strlen($errors))
        {
            $Tpl->replaceblock("", $errors);
            $Tpl->block_path = $ParentPath;
            return;
        }
        $this->Navigator->PageNumber = $this->DataSource->AbsolutePage;
        $this->Navigator->PageSize = $this->PageSize;
        if ($this->DataSource->RecordsCount == "CCS not counted")
            $this->Navigator->TotalPages = $this->DataSource->AbsolutePage + ($this->DataSource->next_record() ? 1 : 0);
        else
            $this->Navigator->TotalPages = $this->DataSource->PageCount();
        if (($this->Navigator->TotalPages <= 1 && $this->Navigator->PageNumber == 1) || $this->Navigator->PageSize == "") {
            $this->Navigator->Visible = false;
        }
        $this->Sorter_id_registro->Show();
        $this->Sorter_id_usuario->Show();
        $this->Sorter_fecha_registro->Show();
        $this->Sorter_estatus->Show();
        $this->Sorter_id_incidencia->Show();
        $this->Sorter_servicio_negocio->Show();
        $this->Sorter_nombre_producto->Show();
        $this->Sorter_severidad->Show();
        $this->Sorter_ta_manejo_incidencias->Show();
        $this->Sorter_ts_manejo_incidencias->Show();
        $this->Sorter_disp_personal_sop->Show();
        $this->Sorter_observaciones->Show();
        $this->Navigator->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
        $this->DataSource->close();
    }
//End Show Method

//GetErrors Method @2-796C0233
    function GetErrors()
    {
        $errors = "";
        $errors = ComposeStrings($errors, $this->id_registro->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_usuario->Errors->ToString());
        $errors = ComposeStrings($errors, $this->fecha_registro->Errors->ToString());
        $errors = ComposeStrings($errors, $this->estatus->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_incidencia->Errors->ToString());
        $errors = ComposeStrings($errors, $this->servicio_negocio->Errors->ToString());
        $errors = ComposeStrings($errors, $this->nombre_producto->Errors->ToString());
        $errors = ComposeStrings($errors, $this->severidad->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ta_manejo_incidencias->Errors->ToString());
        $errors = ComposeStrings($errors, $this->ts_manejo_incidencias->Errors->ToString());
        $errors = ComposeStrings($errors, $this->disp_personal_sop->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Label1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Label2->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_vermas->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_info->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_infocomp->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_vermenos->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_infoparam->Errors->ToString());
        $errors = ComposeStrings($errors, $this->id_vermas1->Errors->ToString());
        $errors = ComposeStrings($errors, $this->Errors->ToString());
        $errors = ComposeStrings($errors, $this->DataSource->Errors->ToString());
        return $errors;
    }
//End GetErrors Method

} //End tabla_layout3 Class @2-FCB6E20C

class clstabla_layout3DataSource extends clsDBcon_xls {  //tabla_layout3DataSource Class @2-1F2EFF06

//DataSource Variables @2-C48EC22E
    public $Parent = "";
    public $CCSEvents = "";
    public $CCSEventResult;
    public $ErrorBlock;
    public $CmdExecution;

    public $CountSQL;
    public $wp;


    // Datasource fields
    public $id_registro;
    public $id_usuario;
    public $fecha_registro;
    public $estatus;
    public $id_incidencia;
    public $servicio_negocio;
    public $nombre_producto;
    public $severidad;
    public $ta_manejo_incidencias;
    public $ts_manejo_incidencias;
    public $disp_personal_sop;
    public $Label1;
//End DataSource Variables

//DataSourceClass_Initialize Event @2-6B936066
    function clstabla_layout3DataSource(& $Parent)
    {
        $this->Parent = & $Parent;
        $this->ErrorBlock = "Grid tabla_layout3";
        $this->Initialize();
        $this->id_registro = new clsField("id_registro", ccsFloat, "");
        
        $this->id_usuario = new clsField("id_usuario", ccsText, "");
        
        $this->fecha_registro = new clsField("fecha_registro", ccsText, "");
        
        $this->estatus = new clsField("estatus", ccsText, "");
        
        $this->id_incidencia = new clsField("id_incidencia", ccsText, "");
        
        $this->servicio_negocio = new clsField("servicio_negocio", ccsText, "");
        
        $this->nombre_producto = new clsField("nombre_producto", ccsText, "");
        
        $this->severidad = new clsField("severidad", ccsText, "");
        
        $this->ta_manejo_incidencias = new clsField("ta_manejo_incidencias", ccsText, "");
        
        $this->ts_manejo_incidencias = new clsField("ts_manejo_incidencias", ccsText, "");
        
        $this->disp_personal_sop = new clsField("disp_personal_sop", ccsText, "");
        
        $this->Label1 = new clsField("Label1", ccsText, "");
        

    }
//End DataSourceClass_Initialize Event

//SetOrder Method @2-231804D2
    function SetOrder($SorterName, $SorterDirection)
    {
        $this->Order = "";
        $this->Order = CCGetOrder($this->Order, $SorterName, $SorterDirection, 
            array("Sorter_id_registro" => array("id_registro", ""), 
            "Sorter_id_usuario" => array("id_usuario", ""), 
            "Sorter_fecha_registro" => array("fecha_registro", ""), 
            "Sorter_estatus" => array("estatus", ""), 
            "Sorter_id_incidencia" => array("id_incidencia", ""), 
            "Sorter_servicio_negocio" => array("servicio_negocio", ""), 
            "Sorter_nombre_producto" => array("nombre_producto", ""), 
            "Sorter_severidad" => array("severidad", ""), 
            "Sorter_ta_manejo_incidencias" => array("ta_manejo_incidencias", ""), 
            "Sorter_ts_manejo_incidencias" => array("ts_manejo_incidencias", ""), 
            "Sorter_disp_personal_sop" => array("disp_personal_sop", ""), 
            "Sorter_observaciones" => array("observaciones", "")));
    }
//End SetOrder Method

//Prepare Method @2-8F57EC40
    function Prepare()
    {
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->wp = new clsSQLParameters($this->ErrorBlock);
        $this->wp->AddParameter("1", "urls_id_usuario", ccsInteger, "", "", $this->Parameters["urls_id_usuario"], 0, false);
        $this->wp->AddParameter("2", "urls_fecha_registro", ccsDate, array("ShortDate"), array("yyyy", "-", "mm", "-", "dd", " ", "HH", ":", "nn", ":", "ss"), $this->Parameters["urls_fecha_registro"], "", false);
    }
//End Prepare Method

//Open Method @2-9A778694
    function Open()
    {
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeBuildSelect", $this->Parent);
        $this->CountSQL = "SELECT COUNT(*) FROM (SELECT l.*, u.nombre_usuario \n" .
        "FROM tabla_layout3 l, usuario u \n" .
        "WHERE u.id_usuario=l.id_usuario and\n" .
        "	(l.id_usuario = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or 0= " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . ")\n" .
        "AND (convert(date,fecha_registro,111) = '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsDate) . "' or ''= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsDate) . "') ) cnt";
        $this->SQL = "SELECT l.*, u.nombre_usuario \n" .
        "FROM tabla_layout3 l, usuario u \n" .
        "WHERE u.id_usuario=l.id_usuario and\n" .
        "	(l.id_usuario = " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . " or 0= " . $this->SQLValue($this->wp->GetDBValue("1"), ccsInteger) . ")\n" .
        "AND (convert(date,fecha_registro,111) = '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsDate) . "' or ''= '" . $this->SQLValue($this->wp->GetDBValue("2"), ccsDate) . "') ";
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeExecuteSelect", $this->Parent);
        if ($this->CountSQL) 
            $this->RecordsCount = CCGetDBValue(CCBuildSQL($this->CountSQL, $this->Where, ""), $this);
        else
            $this->RecordsCount = "CCS not counted";
        $this->query($this->OptimizeSQL(CCBuildSQL($this->SQL, $this->Where, $this->Order)));
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "AfterExecuteSelect", $this->Parent);
        $this->MoveToPage($this->AbsolutePage);
    }
//End Open Method

//SetValues Method @2-B2CC65B0
    function SetValues()
    {
        $this->id_registro->SetDBValue(trim($this->f("id_registro")));
        $this->id_usuario->SetDBValue($this->f("nombre_usuario"));
        $this->fecha_registro->SetDBValue($this->f("fecha_registro"));
        $this->estatus->SetDBValue($this->f("estatus"));
        $this->id_incidencia->SetDBValue($this->f("id_incidencia"));
        $this->servicio_negocio->SetDBValue($this->f("servicio_negocio"));
        $this->nombre_producto->SetDBValue($this->f("nombre_producto"));
        $this->severidad->SetDBValue($this->f("severidad"));
        $this->ta_manejo_incidencias->SetDBValue($this->f("ta_manejo_incidencias"));
        $this->ts_manejo_incidencias->SetDBValue($this->f("ts_manejo_incidencias"));
        $this->disp_personal_sop->SetDBValue($this->f("disp_personal_sop"));
        $this->Label1->SetDBValue($this->f("observaciones"));
    }
//End SetValues Method

} //End tabla_layout3DataSource Class @2-FCB6E20C

class clsRecordtabla_layout3Search { //tabla_layout3Search Class @31-7689C6FE

//Variables @31-9E315808

    // Public variables
    public $ComponentType = "Record";
    public $ComponentName;
    public $Parent;
    public $HTMLFormAction;
    public $PressedButton;
    public $Errors;
    public $ErrorBlock;
    public $FormSubmitted;
    public $FormEnctype;
    public $Visible;
    public $IsEmpty;

    public $CCSEvents = "";
    public $CCSEventResult;

    public $RelativePath = "";

    public $InsertAllowed = false;
    public $UpdateAllowed = false;
    public $DeleteAllowed = false;
    public $ReadAllowed   = false;
    public $EditMode      = false;
    public $ds;
    public $DataSource;
    public $ValidatingControls;
    public $Controls;
    public $Attributes;

    // Class variables
//End Variables

//Class_Initialize Event @31-1EF6F2E5
    function clsRecordtabla_layout3Search($RelativePath, & $Parent)
    {

        global $FileName;
        global $CCSLocales;
        global $DefaultDateFormat;
        $this->Visible = true;
        $this->Parent = & $Parent;
        $this->RelativePath = $RelativePath;
        $this->Errors = new clsErrors();
        $this->ErrorBlock = "Record tabla_layout3Search/Error";
        $this->ReadAllowed = true;
        if($this->Visible)
        {
            $this->ComponentName = "tabla_layout3Search";
            $this->Attributes = new clsAttributes($this->ComponentName . ":");
            $CCSForm = explode(":", CCGetFromGet("ccsForm", ""), 2);
            if(sizeof($CCSForm) == 1)
                $CCSForm[1] = "";
            list($FormName, $FormMethod) = $CCSForm;
            $this->FormEnctype = "application/x-www-form-urlencoded";
            $this->FormSubmitted = ($FormName == $this->ComponentName);
            $Method = $this->FormSubmitted ? ccsPost : ccsGet;
            $this->Button_DoSearch = new clsButton("Button_DoSearch", $Method, $this);
            $this->s_id_usuario = new clsControl(ccsListBox, "s_id_usuario", "Id Usuario", ccsInteger, "", CCGetRequestParam("s_id_usuario", $Method, NULL), $this);
            $this->s_id_usuario->DSType = dsTable;
            $this->s_id_usuario->DataSource = new clsDBcon_xls();
            $this->s_id_usuario->ds = & $this->s_id_usuario->DataSource;
            $this->s_id_usuario->DataSource->SQL = "SELECT * \n" .
"FROM usuario {SQL_Where} {SQL_OrderBy}";
            list($this->s_id_usuario->BoundColumn, $this->s_id_usuario->TextColumn, $this->s_id_usuario->DBFormat) = array("id_usuario", "nombre_usuario", "");
            $this->s_fecha_registro = new clsControl(ccsTextBox, "s_fecha_registro", "Fecha Registro", ccsDate, array("ShortDate"), CCGetRequestParam("s_fecha_registro", $Method, NULL), $this);
        }
    }
//End Class_Initialize Event

//Validate Method @31-B0DA1A54
    function Validate()
    {
        global $CCSLocales;
        $Validation = true;
        $Where = "";
        $Validation = ($this->s_id_usuario->Validate() && $Validation);
        $Validation = ($this->s_fecha_registro->Validate() && $Validation);
        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "OnValidate", $this);
        $Validation =  $Validation && ($this->s_id_usuario->Errors->Count() == 0);
        $Validation =  $Validation && ($this->s_fecha_registro->Errors->Count() == 0);
        return (($this->Errors->Count() == 0) && $Validation);
    }
//End Validate Method

//CheckErrors Method @31-CF60F797
    function CheckErrors()
    {
        $errors = false;
        $errors = ($errors || $this->s_id_usuario->Errors->Count());
        $errors = ($errors || $this->s_fecha_registro->Errors->Count());
        $errors = ($errors || $this->Errors->Count());
        return $errors;
    }
//End CheckErrors Method

//Operation Method @31-7F61200C
    function Operation()
    {
        if(!$this->Visible)
            return;

        global $Redirect;
        global $FileName;

        if(!$this->FormSubmitted) {
            return;
        }

        if($this->FormSubmitted) {
            $this->PressedButton = "Button_DoSearch";
            if($this->Button_DoSearch->Pressed) {
                $this->PressedButton = "Button_DoSearch";
            }
        }
        $Redirect = "hist_cargas.php";
        if($this->Validate()) {
            if($this->PressedButton == "Button_DoSearch") {
                $Redirect = "hist_cargas.php" . "?" . CCMergeQueryStrings(CCGetQueryString("Form", array("Button_DoSearch", "Button_DoSearch_x", "Button_DoSearch_y")));
                if(!CCGetEvent($this->Button_DoSearch->CCSEvents, "OnClick", $this->Button_DoSearch)) {
                    $Redirect = "";
                }
            }
        } else {
            $Redirect = "";
        }
    }
//End Operation Method

//Show Method @31-E0D355DF
    function Show()
    {
        global $CCSUseAmp;
        $Tpl = CCGetTemplate($this);
        global $FileName;
        global $CCSLocales;
        $Error = "";

        if(!$this->Visible)
            return;

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeSelect", $this);

        $this->s_id_usuario->Prepare();

        $RecordBlock = "Record " . $this->ComponentName;
        $ParentPath = $Tpl->block_path;
        $Tpl->block_path = $ParentPath . "/" . $RecordBlock;
        $this->EditMode = $this->EditMode && $this->ReadAllowed;

        if($this->FormSubmitted || $this->CheckErrors()) {
            $Error = "";
            $Error = ComposeStrings($Error, $this->s_id_usuario->Errors->ToString());
            $Error = ComposeStrings($Error, $this->s_fecha_registro->Errors->ToString());
            $Error = ComposeStrings($Error, $this->Errors->ToString());
            $Tpl->SetVar("Error", $Error);
            $Tpl->Parse("Error", false);
        }
        $CCSForm = $this->EditMode ? $this->ComponentName . ":" . "Edit" : $this->ComponentName;
        $this->HTMLFormAction = $FileName . "?" . CCAddParam(CCGetQueryString("QueryString", ""), "ccsForm", $CCSForm);
        $Tpl->SetVar("Action", !$CCSUseAmp ? $this->HTMLFormAction : str_replace("&", "&amp;", $this->HTMLFormAction));
        $Tpl->SetVar("HTMLFormName", $this->ComponentName);
        $Tpl->SetVar("HTMLFormEnctype", $this->FormEnctype);

        $this->CCSEventResult = CCGetEvent($this->CCSEvents, "BeforeShow", $this);
        $this->Attributes->Show();
        if(!$this->Visible) {
            $Tpl->block_path = $ParentPath;
            return;
        }

        $this->Button_DoSearch->Show();
        $this->s_id_usuario->Show();
        $this->s_fecha_registro->Show();
        $Tpl->parse();
        $Tpl->block_path = $ParentPath;
    }
//End Show Method

} //End tabla_layout3Search Class @31-FCB6E20C

//Initialize Page @1-C31924ED
// Variables
$FileName = "";
$Redirect = "";
$Tpl = "";
$TemplateFileName = "";
$BlockToParse = "";
$ComponentName = "";
$Attributes = "";

// Events;
$CCSEvents = "";
$CCSEventResult = "";
$TemplateSource = "";

$FileName = FileName;
$Redirect = "";
$TemplateFileName = "hist_cargas.html";
$BlockToParse = "main";
$TemplateEncoding = "CP1252";
$ContentType = "text/html";
$PathToRoot = "./";
$PathToRootOpt = "";
$Scripts = "|js/jquery/jquery.js|js/jquery/event-manager.js|js/jquery/selectors.js|js/jquery/ui/jquery.ui.core.js|js/jquery/ui/jquery.ui.widget.js|js/jquery/ui/jquery.ui.datepicker.js|js/jquery/datepicker/ccs-date-timepicker.js|";
$Charset = $Charset ? $Charset : "windows-1252";
//End Initialize Page

//Include events file @1-346DDE9E
include_once("./hist_cargas_events.php");
//End Include events file

//Before Initialize @1-E870CEBC
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeInitialize", $MainPage);
//End Before Initialize

//Initialize Objects @1-E274472E
$DBcon_xls = new clsDBcon_xls();
$MainPage->Connections["con_xls"] = & $DBcon_xls;
$Attributes = new clsAttributes("page:");
$Attributes->SetValue("pathToRoot", $PathToRoot);
$MainPage->Attributes = & $Attributes;

// Controls
$tabla_layout3 = new clsGridtabla_layout3("", $MainPage);
$tabla_layout3Search = new clsRecordtabla_layout3Search("", $MainPage);
$MainPage->tabla_layout3 = & $tabla_layout3;
$MainPage->tabla_layout3Search = & $tabla_layout3Search;
$tabla_layout3->Initialize();
$ScriptIncludes = "";
$SList = explode("|", $Scripts);
foreach ($SList as $Script) {
    if ($Script != "") $ScriptIncludes = $ScriptIncludes . "<script src=\"" . $PathToRoot . $Script . "\" type=\"text/javascript\"></script>\n";
}
$Attributes->SetValue("scriptIncludes", $ScriptIncludes);

BindEvents();

$CCSEventResult = CCGetEvent($CCSEvents, "AfterInitialize", $MainPage);

if ($Charset) {
    header("Content-Type: " . $ContentType . "; charset=" . $Charset);
} else {
    header("Content-Type: " . $ContentType);
}
//End Initialize Objects

//Initialize HTML Template @1-FA3E6D4A
$CCSEventResult = CCGetEvent($CCSEvents, "OnInitializeView", $MainPage);
$Tpl = new clsTemplate($FileEncoding, $TemplateEncoding);
if (strlen($TemplateSource)) {
    $Tpl->LoadTemplateFromStr($TemplateSource, $BlockToParse, "CP1252");
} else {
    $Tpl->LoadTemplate(PathToCurrentPage . $TemplateFileName, $BlockToParse, "CP1252");
}
$Tpl->SetVar("CCS_PathToRoot", $PathToRoot);
$Tpl->block_path = "/$BlockToParse";
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeShow", $MainPage);
$Attributes->SetValue("pathToRoot", "");
$Attributes->Show();
//End Initialize HTML Template

//Execute Components @1-896513E1
$tabla_layout3Search->Operation();
//End Execute Components

//Go to destination page @1-A51CC048
if($Redirect)
{
    $CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
    $DBcon_xls->close();
    header("Location: " . $Redirect);
    unset($tabla_layout3);
    unset($tabla_layout3Search);
    unset($Tpl);
    exit;
}
//End Go to destination page

//Show Page @1-0B0007DA
$tabla_layout3->Show();
$tabla_layout3Search->Show();
$Tpl->block_path = "";
$Tpl->Parse($BlockToParse, false);
if (!isset($main_block)) $main_block = $Tpl->GetVar($BlockToParse);
$main_block = CCConvertEncoding($main_block, $FileEncoding, $TemplateEncoding);
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeOutput", $MainPage);
if ($CCSEventResult) echo $main_block;
//End Show Page

//Unload Page @1-40B36563
$CCSEventResult = CCGetEvent($CCSEvents, "BeforeUnload", $MainPage);
$DBcon_xls->close();
unset($tabla_layout3);
unset($tabla_layout3Search);
unset($Tpl);
//End Unload Page


?>
