<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Austere4" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" generateDiv="True" name="Panel1" PathID="Panel1" features="(assigned)">
<Components>
<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="periodos_carga" connection="con_xls" dataSource="periodos_carga" pageSizeLimit="100" pageSize="True" wizardCaption=" Periodos Carga Lista de" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Centered" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="field" wizardGridRecordLinkField="id_periodo" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="Panel1periodos_carga" composition="5" isParent="True" useJqueryFeatures="True">
<Components>
<Link id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="periodos_carga_Insert" hrefSource="periodos2.ccp" removeParameters="id_periodo" wizardThemeItem="FooterA" wizardDefaultValue="Agregar Nuevo" wizardUseTemplateBlock="False" PathID="Panel1periodos_cargaperiodos_carga_Insert">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Sorter id="11" visible="True" name="Sorter_id_periodo" column="id_periodo" wizardCaption="Id Periodo" wizardSortingType="SimpleDir" wizardControl="id_periodo" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_id_periodo">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="12" visible="True" name="Sorter_anio" column="anio" wizardCaption="Anio" wizardSortingType="SimpleDir" wizardControl="anio" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_anio">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="13" visible="True" name="Sorter_nombre_mes" column="nombre_mes" wizardCaption="Nombre Mes" wizardSortingType="SimpleDir" wizardControl="nombre_mes" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_nombre_mes">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="14" visible="True" name="Sorter_mes" column="mes" wizardCaption="Mes" wizardSortingType="SimpleDir" wizardControl="mes" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_mes">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="15" visible="True" name="Sorter_fecha_limite" column="fecha_limite" wizardCaption="Fecha Limite" wizardSortingType="SimpleDir" wizardControl="fecha_limite" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_fecha_limite">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="16" visible="True" name="Sorter_num_intentos_permitidos" column="num_intentos_permitidos" wizardCaption="Num Intentos Permitidos" wizardSortingType="SimpleDir" wizardControl="num_intentos_permitidos" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_num_intentos_permitidos">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="17" visible="True" name="Sorter_tipo_periodo" column="tipo_periodo" wizardCaption="Tipo Periodo" wizardSortingType="SimpleDir" wizardControl="tipo_periodo" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_tipo_periodo">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="18" visible="True" name="Sorter_id_proveedor" column="id_proveedor" wizardCaption="Id Proveedor" wizardSortingType="SimpleDir" wizardControl="id_proveedor" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_id_proveedor">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Link id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Database" preserveParameters="GET" name="id_periodo" fieldSource="id_periodo" wizardCaption="Id Periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="id_periodo" linkProperties="{'textSource':'','textSourceDB':'id_periodo','hrefSource':'','hrefSourceDB':'id_periodo','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}" wizardAlign="right" wizardAddNbsp="True" wizardThemeItem="GridA" PathID="Panel1periodos_cargaid_periodo">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="20" sourceType="DataField" format="yyyy-mm-dd" name="id_periodo" source="id_periodo"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="22" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="anio" fieldSource="anio" wizardCaption="Anio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_cargaanio">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="nombre_mes" fieldSource="nombre_mes" wizardCaption="Nombre Mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1periodos_carganombre_mes">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="mes" fieldSource="mes" wizardCaption="Mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_cargames">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="28" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_limite" fieldSource="fecha_limite" wizardCaption="Fecha Limite" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1periodos_cargafecha_limite">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="30" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="num_intentos_permitidos" fieldSource="num_intentos_permitidos" wizardCaption="Num Intentos Permitidos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_carganum_intentos_permitidos">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo_periodo" fieldSource="tipo_periodo" wizardCaption="Tipo Periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1periodos_cargatipo_periodo">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="id_proveedor" fieldSource="id_proveedor" wizardCaption="Id Proveedor" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_cargaid_proveedor">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Navigator id="35" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardImagesScheme="Austere4">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
</Components>
<Events/>
<TableParameters>
<TableParameter id="7" conditionType="Parameter" useIsNull="False" field="id_proveedor" parameterSource="s_id_proveedor" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" searchFormParameter="True"/>
<TableParameter id="8" conditionType="Parameter" useIsNull="False" field="anio" parameterSource="s_anio" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="2" searchFormParameter="True"/>
<TableParameter id="9" conditionType="Parameter" useIsNull="False" field="tipo_periodo" parameterSource="s_tipo_periodo" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="3" searchFormParameter="True"/>
<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="nombre_mes" parameterSource="s_nombre_mes" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="4" searchFormParameter="True"/>
</TableParameters>
<JoinTables>
<JoinTable id="4" schemaName="dbo" tableName="periodos_carga"/>
</JoinTables>
<JoinLinks/>
<Fields>
<Field id="5" tableName="periodos_carga" fieldName="id_periodo"/>
<Field id="21" tableName="periodos_carga" fieldName="anio"/>
<Field id="23" tableName="periodos_carga" fieldName="nombre_mes"/>
<Field id="25" tableName="periodos_carga" fieldName="mes"/>
<Field id="27" tableName="periodos_carga" fieldName="fecha_limite"/>
<Field id="29" tableName="periodos_carga" fieldName="num_intentos_permitidos"/>
<Field id="31" tableName="periodos_carga" fieldName="tipo_periodo"/>
<Field id="33" tableName="periodos_carga" fieldName="id_proveedor"/>
</Fields>
<PKFields/>
<SPParameters/>
<SQLParameters/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Grid>
<Record id="36" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="periodos_cargaSearch" searchIds="36" fictitiousConnection="con_xls" wizardCaption="  Buscar" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="periodos2.ccp" PathID="Panel1periodos_cargaSearch" composition="5">
<Components>
<Button id="37" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Buscar" PathID="Panel1periodos_cargaSearchButton_DoSearch">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_id_proveedor" fieldSource="id_proveedor" wizardIsPassword="False" wizardCaption="Id Proveedor" caption="Id Proveedor" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Panel1periodos_cargaSearchs_id_proveedor">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_anio" fieldSource="anio" wizardIsPassword="False" wizardCaption="Anio" caption="Anio" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1periodos_cargaSearchs_anio">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_tipo_periodo" fieldSource="tipo_periodo" wizardIsPassword="False" wizardCaption="Tipo Periodo" caption="Tipo Periodo" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1periodos_cargaSearchs_tipo_periodo">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_nombre_mes" fieldSource="nombre_mes" wizardIsPassword="False" wizardCaption="Nombre Mes" caption="Nombre Mes" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1periodos_cargaSearchs_nombre_mes">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
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
<Panel id="42" visible="True" generateDiv="True" name="Panel2" PathID="Panel1Panel2" features="(assigned)">
<Components>
<Record id="43" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="periodos_carga1" connection="con_xls" dataSource="periodos_carga" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="id_periodo" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Agregar/Editar Periodos Carga " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Program Files (x86)/CodeChargeStudio5/Templates/Record/Dialog.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="Panel1Panel2periodos_carga1" composition="5">
<Components>
<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Agregar" PathID="Panel1Panel2periodos_carga1Button_Insert">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="46" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Enviar" PathID="Panel1Panel2periodos_carga1Button_Update">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="47" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Borrar" PathID="Panel1Panel2periodos_carga1Button_Delete">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="48" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancelar" PathID="Panel1Panel2periodos_carga1Button_Cancel">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="anio" fieldSource="anio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Anio" caption="Anio" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1Panel2periodos_carga1anio">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="nombre_mes" fieldSource="nombre_mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Nombre Mes" caption="Nombre Mes" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1Panel2periodos_carga1nombre_mes">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="mes" fieldSource="mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Mes" caption="Mes" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1Panel2periodos_carga1mes">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="fecha_limite" fieldSource="fecha_limite" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Fecha Limite" caption="Fecha Limite" required="True" format="ShortDate" unique="False" wizardSize="8" wizardMaxLength="100" PathID="Panel1Panel2periodos_carga1fecha_limite">
<Components/>
<Events/>
<Attributes/>
<Features>
<JDateTimePicker id="54" show_weekend="True" name="InlineDatePicker1" category="jQuery" enabled="True">
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
<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="num_intentos_permitidos" fieldSource="num_intentos_permitidos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Num Intentos Permitidos" caption="Num Intentos Permitidos" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1Panel2periodos_carga1num_intentos_permitidos">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="tipo_periodo" fieldSource="tipo_periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Tipo Periodo" caption="Tipo Periodo" required="True" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1Panel2periodos_carga1tipo_periodo">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="id_proveedor" fieldSource="id_proveedor" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Id Proveedor" caption="Id Proveedor" required="True" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Panel1Panel2periodos_carga1id_proveedor">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
</Components>
<Events/>
<TableParameters>
<TableParameter id="49" conditionType="Parameter" useIsNull="False" field="id_periodo" parameterSource="id_periodo" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables>
<JoinTable id="44" schemaName="dbo" tableName="periodos_carga"/>
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
<JDialog id="86" modal="True" visible="False" enabled="True" name="DialogPanel1" category="jQuery" title="Agregar/Editar Periodos Carga " show="Panel1condition_for_show.ontrue;" hide="Panel1condition_for_hide.ontrue;">
<Components/>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<ControlPoints>
<ControlPoint id="87" name="Panel1condition_for_show.ontrue" relProperty="show">
<Items>
<ControlPointItem id="88" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="89" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="90" name="condition_for_show" ccpId="59" type="Condition" isFeature="True" PathID="Panel1condition_for_show"/>
</Items>
</ControlPoint>
<ControlPoint id="91" name="Panel1condition_for_hide.ontrue" relProperty="hide">
<Items>
<ControlPointItem id="92" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="93" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="94" name="condition_for_hide" ccpId="64" type="Condition" isFeature="True" PathID="Panel1condition_for_hide"/>
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
<JUpdatePanel id="58" enabled="True" childrenAsTriggers="True" name="UpdatePanel1" category="jQuery">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</JUpdatePanel>
<Condition id="59" name="condition_for_show" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;link&quot;)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="60" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
<Items>
<ControlPointItem id="61" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="62" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="63" name="UpdatePanel1" ccpId="58" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="64" name="condition_for_hide" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;submit&quot; &amp;&amp; $(&quot;#ErrorBlock&quot;).length == 0)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="65" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
<Items>
<ControlPointItem id="66" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="67" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="68" name="UpdatePanel1" ccpId="58" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="69" name="ccc_link_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;link&quot;)" sourceType2="Expression" start="Panel1periodos_cargaperiodos_carga_Insert.onclick;Panel1periodos_cargaid_periodo.onclick;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="70" name="Panel1periodos_cargaperiodos_carga_Insert.onclick" relProperty="start">
<Items>
<ControlPointItem id="71" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="72" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="73" name="periodos_carga" ccpId="3" type="Grid" isFeature="False" PathID="Panel1periodos_carga"/>
<ControlPointItem id="74" name="periodos_carga_Insert" ccpId="6" type="Link" isFeature="False" PathID="Panel1periodos_cargaperiodos_carga_Insert"/>
</Items>
</ControlPoint>
<ControlPoint id="75" name="Panel1periodos_cargaid_periodo.onclick" relProperty="start">
<Items>
<ControlPointItem id="76" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="77" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="78" name="periodos_carga" ccpId="3" type="Grid" isFeature="False" PathID="Panel1periodos_carga"/>
<ControlPointItem id="79" name="id_periodo" ccpId="19" type="Link" isFeature="False" PathID="Panel1periodos_cargaid_periodo"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="80" name="ccc_submit_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;submit&quot;)" sourceType2="Expression" start="Panel1Panel2periodos_carga1.onsubmit;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="81" name="Panel1Panel2periodos_carga1.onsubmit" relProperty="start">
<Items>
<ControlPointItem id="82" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="83" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="84" name="Panel2" ccpId="42" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="85" name="periodos_carga1" ccpId="43" type="Record" isFeature="False" PathID="Panel1Panel2periodos_carga1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="95" name="ccc_others_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;&quot;)" sourceType2="Expression" start="Panel1Panel2DialogPanel1.onshow;Panel1Panel2DialogPanel1.onhide;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="96" name="Panel1Panel2DialogPanel1.onshow" relProperty="start">
<Items>
<ControlPointItem id="97" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="98" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="99" name="Panel2" ccpId="42" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="100" name="DialogPanel1" ccpId="86" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
</Items>
</ControlPoint>
<ControlPoint id="101" name="Panel1Panel2DialogPanel1.onhide" relProperty="start">
<Items>
<ControlPointItem id="102" name="periodos2" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="103" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="104" name="Panel2" ccpId="42" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="105" name="DialogPanel1" ccpId="86" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
</Features>
</Panel>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="periodos2_events.php" forShow="False" comment="//" codePage="windows-1252"/>
<CodeFile id="Code" language="PHPTemplates" name="periodos2.php" forShow="True" url="periodos2.php" comment="//" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
