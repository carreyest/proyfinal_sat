<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="{CCS_Style}" wizardThemeVersion="3.0" useDesign="False">
	<Components>
		<Panel id="2" visible="True" generateDiv="True" name="Panel12" PathID="Panel12" features="(assigned)" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components>
<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" name="periodos_carga" connection="con_xls" dataSource="SELECT distinct id_periodo, anio, nombre_mes, mes, fecha_limite, num_intentos_permitidos, tipo_periodo, periodos_carga.id_proveedor AS periodos_carga_id_proveedor,
nom_proveedor 
FROM periodos_carga,
usuario
WHERE usuario.id_proveedor=periodos_carga.id_proveedor
and 	periodos_carga.id_proveedor = {s_id_proveedor}
AND periodos_carga.anio = {s_anio}
AND periodos_carga.nombre_mes LIKE '%{s_nombre_mes}%' " pageSizeLimit="100" pageSize="True" wizardCaption=" Lista de Periodos de Carga " wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Centered" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="field" wizardGridRecordLinkField="id_periodo" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="Panel12periodos_carga" composition="6" isParent="True" useJqueryFeatures="True" wizardTheme="Austere4" wizardThemeVersion="3.0" editableComponentTypeString="Grid" childId="36;42">
<Components>
<Link id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="periodos_carga_Insert" hrefSource="periodos3.ccp" removeParameters="id_periodo" wizardThemeItem="FooterA" wizardDefaultValue="Agregar Nuevo" wizardUseTemplateBlock="False" PathID="Panel12periodos_cargaperiodos_carga_Insert" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Sorter id="11" visible="True" name="Sorter_id_periodo" column="id_periodo" wizardCaption="Id Periodo" wizardSortingType="SimpleDir" wizardControl="id_periodo" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_id_periodo" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="12" visible="True" name="Sorter_anio" column="anio" wizardCaption="Anio" wizardSortingType="SimpleDir" wizardControl="anio" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_anio" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="13" visible="True" name="Sorter_nombre_mes" column="nombre_mes" wizardCaption="Nombre Mes" wizardSortingType="SimpleDir" wizardControl="nombre_mes" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_nombre_mes" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="14" visible="True" name="Sorter_mes" column="mes" wizardCaption="Mes" wizardSortingType="SimpleDir" wizardControl="mes" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_mes" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="15" visible="True" name="Sorter_fecha_limite" column="fecha_limite" wizardCaption="Fecha Limite" wizardSortingType="SimpleDir" wizardControl="fecha_limite" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_fecha_limite" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="16" visible="True" name="Sorter_num_intentos_permitidos" column="num_intentos_permitidos" wizardCaption="Num Intentos Permitidos" wizardSortingType="SimpleDir" wizardControl="num_intentos_permitidos" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_num_intentos_permitidos" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="17" visible="True" name="Sorter_tipo_periodo" column="tipo_periodo" wizardCaption="Tipo Periodo" wizardSortingType="SimpleDir" wizardControl="tipo_periodo" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_tipo_periodo" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="18" visible="True" name="Sorter_id_proveedor" column="id_proveedor" wizardCaption="Id Proveedor" wizardSortingType="SimpleDir" wizardControl="id_proveedor" wizardAddNbsp="False" PathID="Panel12periodos_cargaSorter_id_proveedor" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Link id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" preserveParameters="GET" name="id_periodo" fieldSource="id_periodo" wizardCaption="Id Periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" linkProperties="''" wizardAlign="right" wizardAddNbsp="True" wizardThemeItem="GridA" PathID="Panel12periodos_cargaid_periodo" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="20" sourceType="DataField" format="yyyy-mm-dd" name="id_periodo" source="id_periodo"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="22" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="anio" fieldSource="anio" wizardCaption="Anio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel12periodos_cargaanio" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="nombre_mes" fieldSource="nombre_mes" wizardCaption="Nombre Mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel12periodos_carganombre_mes" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="mes" fieldSource="mes" wizardCaption="Mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel12periodos_cargames" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="28" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_limite" fieldSource="fecha_limite" wizardCaption="Fecha Limite" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel12periodos_cargafecha_limite" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="30" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="num_intentos_permitidos" fieldSource="num_intentos_permitidos" wizardCaption="Num Intentos Permitidos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel12periodos_carganum_intentos_permitidos" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo_periodo" fieldSource="tipo_periodo" wizardCaption="Tipo Periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel12periodos_cargatipo_periodo" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_proveedor" fieldSource="nom_proveedor" wizardCaption="Id Proveedor" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel12periodos_cargaid_proveedor" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Navigator id="35" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardImagesScheme="{ccs_style}" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
</Components>
<Events/>
<TableParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
<SPParameters/>
<SQLParameters>
<SQLParameter id="106" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
<SQLParameter id="107" dataType="Integer" defaultValue="0" designDefaultValue="2015" parameterSource="s_anio" parameterType="URL" variable="s_anio"/>
<SQLParameter id="108" dataType="Text" designDefaultValue="Enero" parameterSource="s_nombre_mes" parameterType="URL" variable="s_nombre_mes"/>
</SQLParameters>
<SecurityGroups/>
<Attributes/>
<Features/>
</Grid>
<Record id="36" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="periodos_cargaSearch" searchIds="36" fictitiousConnection="con_xls" wizardCaption="  Buscar" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="periodos3.ccp" PathID="Panel12periodos_cargaSearch" composition="6" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components>
<Button id="37" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Buscar" PathID="Panel12periodos_cargaSearchButton_DoSearch" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<ListBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_id_proveedor" fieldSource="id_proveedor" wizardIsPassword="False" wizardCaption="Id Proveedor" caption="Id Proveedor" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Panel12periodos_cargaSearchs_id_proveedor" sourceType="SQL" connection="con_xls" dataSource="SELECT distinct id_proveedor, nom_proveedor 
FROM usuario 
where capc_cds&lt;&gt;'CAPC'
" boundColumn="id_proveedor" textColumn="nom_proveedor" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
</ListBox>
<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_anio" fieldSource="anio" wizardIsPassword="False" wizardCaption="Anio" caption="Anio" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel12periodos_cargaSearchs_anio" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<ListBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_nombre_mes" fieldSource="nombre_mes" wizardIsPassword="False" wizardCaption="Nombre Mes" caption="Nombre Mes" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel12periodos_cargaSearchs_nombre_mes" sourceType="ListOfValues" dataSource="Enero;Enero;Febrero;Febrero;Marzo;Marzo;Abril;Abril;Mayo;Mayo;Junio;Junio;Julio;Julio;Agosto;Agosto;Septiembre;Septiembre;Octubre;Octubre;Noviembre;Noviembre;Diciembre;Diciembre" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
</ListBox>
</Components>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
<ISPParameters/>
<ISQLParameters/>
<IFormElements/>
<USPParameters/>
<USQLParameters/>
<UConditions/>
<UFormElements/>
<DSPParameters/>
<DSQLParameters/>
<DConditions/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Record>
<Panel id="41" visible="True" generateDiv="True" name="Panel2" PathID="Panel12Panel2" features="(assigned)" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components>
<Record id="42" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="periodos_carga1" connection="con_xls" dataSource="periodos_carga" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="id_periodo" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Agregar/Editar Periodos de Carga " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Program Files (x86)/CodeChargeStudio5/Templates/Record/Dialog.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="Panel12Panel2periodos_carga1" composition="6" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components>
<Button id="44" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Agregar" PathID="Panel12Panel2periodos_carga1Button_Insert" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Enviar" PathID="Panel12Panel2periodos_carga1Button_Update" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="46" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Borrar" PathID="Panel12Panel2periodos_carga1Button_Delete" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="47" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancelar" PathID="Panel12Panel2periodos_carga1Button_Cancel" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="anio" fieldSource="anio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Anio" caption="Anio" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel12Panel2periodos_carga1anio" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<ListBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="nombre_mes" fieldSource="nombre_mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Nombre Mes" caption="Nombre Mes" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel12Panel2periodos_carga1nombre_mes" sourceType="ListOfValues" dataSource="Enero;Enero;Febrero;Febrero;Marzo;Marzo;Abril;Abril;Mayo;Mayo;Junio;Junio;Julio;Julio;Agosto;Agosto;Septiembre;Septiembre;Octubre;Octubre;Noviembre;Noviembre;Diciembre;Diciembre" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
</ListBox>
<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="mes" fieldSource="mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Mes" caption="Mes" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel12Panel2periodos_carga1mes" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="fecha_limite" fieldSource="fecha_limite" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Fecha Limite" caption="Fecha Limite" required="True" format="dd/mm/yyyy hh:mm" unique="False" wizardSize="8" wizardMaxLength="100" PathID="Panel12Panel2periodos_carga1fecha_limite" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features>
<JDateTimePicker id="53" show_weekend="True" name="InlineDatePicker1" category="jQuery" enabled="True">
<Components/>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<Features/>
</JDateTimePicker>
</Features>
</TextBox>
<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="num_intentos_permitidos" fieldSource="num_intentos_permitidos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Num Intentos Permitidos" caption="Num Intentos Permitidos" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel12Panel2periodos_carga1num_intentos_permitidos" wizardTheme="Austere4" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<ListBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="tipo_periodo" fieldSource="tipo_periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Tipo Periodo" caption="Tipo Periodo" required="True" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel12Panel2periodos_carga1tipo_periodo" sourceType="ListOfValues" wizardTheme="Austere4" wizardThemeVersion="3.0" dataSource="Normal;Normal;Extraordinario;Extraordinario">
<Components/>
<Events/>
<Attributes/>
<Features/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
</ListBox>
<ListBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="id_proveedor" fieldSource="id_proveedor" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Id Proveedor" caption="Id Proveedor" required="True" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Panel12Panel2periodos_carga1id_proveedor" sourceType="SQL" wizardTheme="Austere4" wizardThemeVersion="3.0" connection="con_xls" dataSource="SELECT distinct id_proveedor, nom_proveedor 
FROM usuario 
	union select 0,'Todos'"><Components/>
<Events/>
<Attributes/>
<Features/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
</ListBox>
</Components>
<Events/>
<TableParameters>
<TableParameter id="48" conditionType="Parameter" useIsNull="False" field="id_periodo" parameterSource="id_periodo" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables>
<JoinTable id="43" tableName="periodos_carga"/>
</JoinTables>
<JoinLinks/>
<Fields/>
<PKFields/>
<ISPParameters/>
<ISQLParameters/>
<IFormElements/>
<USPParameters/>
<USQLParameters/>
<UConditions/>
<UFormElements/>
<DSPParameters/>
<DSQLParameters/>
<DConditions/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Record>
</Components>
<Events/>
<Attributes/>
<Features>
<JDialog id="85" modal="True" visible="False" enabled="True" name="DialogPanel1" category="jQuery" title="Agregar/Editar Periodos de Carga " show="Panel1condition_for_show.ontrue;" hide="Panel1condition_for_hide.ontrue;">
<Components/>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<ControlPoints>
<ControlPoint id="86" name="Panel1condition_for_show.ontrue" relProperty="show">
<Items>
<ControlPointItem id="87" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="88" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="89" name="condition_for_show" ccpId="58" type="Condition" isFeature="True" PathID="Panel1condition_for_show"/>
</Items>
</ControlPoint>
<ControlPoint id="90" name="Panel1condition_for_hide.ontrue" relProperty="hide">
<Items>
<ControlPointItem id="91" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="92" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="93" name="condition_for_hide" ccpId="63" type="Condition" isFeature="True" PathID="Panel1condition_for_hide"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</JDialog>
</Features>
</Panel>
</Components>
<Events/>
<Attributes/>
<Features>
<JUpdatePanel id="57" enabled="True" childrenAsTriggers="True" name="UpdatePanel1" category="jQuery">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</JUpdatePanel>
<Condition id="58" name="condition_for_show" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;link&quot;)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="59" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
<Items>
<ControlPointItem id="60" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="61" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="62" name="UpdatePanel1" ccpId="57" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="63" name="condition_for_hide" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;submit&quot; &amp;&amp; $(&quot;#ErrorBlock&quot;).length == 0)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="64" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
<Items>
<ControlPointItem id="65" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="66" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="67" name="UpdatePanel1" ccpId="57" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="68" name="ccc_link_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;link&quot;)" sourceType2="Expression" start="Panel1periodos_cargaperiodos_carga_Insert.onclick;Panel1periodos_cargaid_periodo.onclick;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="69" name="Panel1periodos_cargaperiodos_carga_Insert.onclick" relProperty="start">
<Items>
<ControlPointItem id="70" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="71" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="72" name="periodos_carga" ccpId="3" type="Grid" isFeature="False" PathID="Panel1periodos_carga"/>
<ControlPointItem id="73" name="periodos_carga_Insert" ccpId="7" type="Link" isFeature="False" PathID="Panel1periodos_cargaperiodos_carga_Insert"/>
</Items>
</ControlPoint>
<ControlPoint id="74" name="Panel1periodos_cargaid_periodo.onclick" relProperty="start">
<Items>
<ControlPointItem id="75" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="76" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="77" name="periodos_carga" ccpId="3" type="Grid" isFeature="False" PathID="Panel1periodos_carga"/>
<ControlPointItem id="78" name="id_periodo" ccpId="19" type="Link" isFeature="False" PathID="Panel1periodos_cargaid_periodo"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="79" name="ccc_submit_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;submit&quot;)" sourceType2="Expression" start="Panel1Panel2periodos_carga1.onsubmit;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="80" name="Panel1Panel2periodos_carga1.onsubmit" relProperty="start">
<Items>
<ControlPointItem id="81" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="82" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="83" name="Panel2" ccpId="41" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="84" name="periodos_carga1" ccpId="42" type="Record" isFeature="False" PathID="Panel1Panel2periodos_carga1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="94" name="ccc_others_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;&quot;)" sourceType2="Expression" start="Panel1Panel2DialogPanel1.onshow;Panel1Panel2DialogPanel1.onhide;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="95" name="Panel1Panel2DialogPanel1.onshow" relProperty="start">
<Items>
<ControlPointItem id="96" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="97" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="98" name="Panel2" ccpId="41" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="99" name="DialogPanel1" ccpId="85" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
</Items>
</ControlPoint>
<ControlPoint id="100" name="Panel1Panel2DialogPanel1.onhide" relProperty="start">
<Items>
<ControlPointItem id="101" name="periodos3" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="102" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="103" name="Panel2" ccpId="41" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="104" name="DialogPanel1" ccpId="85" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
</Features>
</Panel>
<IncludePage id="105" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="periodos3_events.php" forShow="False" comment="//" codePage="windows-1252"/>
<CodeFile id="Code" language="PHPTemplates" name="periodos3.php" forShow="True" url="periodos3.php" comment="//" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
<CachingParameters/>
<Attributes/>
<Features/>
<Events/>
</Page>
