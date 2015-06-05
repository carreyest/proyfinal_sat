<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="{CCS_Style}" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="20" name="tabla_layout3" connection="con_xls" dataSource="SELECT l.*, u.nombre_usuario 
FROM tabla_layout3 l, usuario u 
WHERE u.id_usuario=l.id_usuario and
	(l.id_usuario = {s_id_usuario} or 0= {s_id_usuario})
AND (convert(date,fecha_registro,111) = '{s_fecha_registro}' or ''= '{s_fecha_registro}') " pageSizeLimit="100" pageSize="True" wizardCaption="Histórico de Cargas" wizardTheme="Fresh" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="True" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="tabla_layout3" wizardThemeVersion="3.0" composition="1" isParent="True">
			<Components>
				<Sorter id="6" visible="True" name="Sorter_id_registro" column="id_registro" wizardCaption="Id Registro" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="id_registro" wizardAddNbsp="False" PathID="tabla_layout3Sorter_id_registro" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_id_usuario" column="id_usuario" wizardCaption="Id Usuario" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="id_usuario" wizardAddNbsp="False" PathID="tabla_layout3Sorter_id_usuario" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_fecha_registro" column="fecha_registro" wizardCaption="Fecha Registro" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="fecha_registro" wizardAddNbsp="False" PathID="tabla_layout3Sorter_fecha_registro" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_estatus" column="estatus" wizardCaption="Estatus" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="estatus" wizardAddNbsp="False" PathID="tabla_layout3Sorter_estatus" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_id_incidencia" column="id_incidencia" wizardCaption="Id Incidencia" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="id_incidencia" wizardAddNbsp="False" PathID="tabla_layout3Sorter_id_incidencia" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_servicio_negocio" column="servicio_negocio" wizardCaption="Servicio Negocio" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="servicio_negocio" wizardAddNbsp="False" PathID="tabla_layout3Sorter_servicio_negocio" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_nombre_producto" column="nombre_producto" wizardCaption="Nombre Producto" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="nombre_producto" wizardAddNbsp="False" PathID="tabla_layout3Sorter_nombre_producto" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_severidad" column="severidad" wizardCaption="Severidad" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="severidad" wizardAddNbsp="False" PathID="tabla_layout3Sorter_severidad" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_ta_manejo_incidencias" column="ta_manejo_incidencias" wizardCaption="Ta Manejo Incidencias" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="ta_manejo_incidencias" wizardAddNbsp="False" PathID="tabla_layout3Sorter_ta_manejo_incidencias" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_ts_manejo_incidencias" column="ts_manejo_incidencias" wizardCaption="Ts Manejo Incidencias" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="ts_manejo_incidencias" wizardAddNbsp="False" PathID="tabla_layout3Sorter_ts_manejo_incidencias" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="16" visible="True" name="Sorter_disp_personal_sop" column="disp_personal_sop" wizardCaption="Disp Personal Sop" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="disp_personal_sop" wizardAddNbsp="False" PathID="tabla_layout3Sorter_disp_personal_sop" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_observaciones" column="observaciones" wizardCaption="Observaciones" wizardTheme="Fresh" wizardSortingType="Extended" wizardControl="observaciones" wizardAddNbsp="False" PathID="tabla_layout3Sorter_observaciones" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="18" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="id_registro" fieldSource="id_registro" wizardCaption="Id Registro" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3id_registro" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_usuario" fieldSource="nombre_usuario" wizardCaption="Id Usuario" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="tabla_layout3id_usuario" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="fecha_registro" fieldSource="fecha_registro" wizardCaption="Fecha Registro" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3fecha_registro" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="estatus" fieldSource="estatus" wizardCaption="Estatus" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3estatus" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_incidencia" fieldSource="id_incidencia" wizardCaption="Id Incidencia" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3id_incidencia" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_negocio" fieldSource="servicio_negocio" wizardCaption="Servicio Negocio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3servicio_negocio" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="nombre_producto" fieldSource="nombre_producto" wizardCaption="Nombre Producto" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3nombre_producto" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="severidad" fieldSource="severidad" wizardCaption="Severidad" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3severidad" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ta_manejo_incidencias" fieldSource="ta_manejo_incidencias" wizardCaption="Ta Manejo Incidencias" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3ta_manejo_incidencias" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ts_manejo_incidencias" fieldSource="ts_manejo_incidencias" wizardCaption="Ts Manejo Incidencias" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3ts_manejo_incidencias" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="disp_personal_sop" fieldSource="disp_personal_sop" wizardCaption="Disp Personal Sop" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="tabla_layout3disp_personal_sop" wizardTheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="30" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Fresh" wizardImagesScheme="Fresh" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Label1" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3Label1" fieldSource="observaciones">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Label2" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3Label2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_vermas" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3id_vermas">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_info" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3id_info">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_infocomp" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3id_infocomp">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_vermenos" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3id_vermenos">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_infoparam" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3id_infoparam">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_vermas1" wizardTheme="Fresh" wizardThemeType="File" wizardThemeVersion="3.0" PathID="tabla_layout3id_vermas1">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="38"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
<SQLParameter id="39" dataType="Integer" defaultValue="0" parameterSource="s_id_usuario" parameterType="URL" variable="s_id_usuario"/>
<SQLParameter id="40" DBFormat="yyyy-mm-dd HH:nn:ss" dataType="Date" format="ShortDate" parameterSource="s_fecha_registro" parameterType="URL" variable="s_fecha_registro"/>
</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Record id="31" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="tabla_layout3Search" searchIds="31" fictitiousConnection="con_xls" wizardCaption="  Buscar" wizardTheme="Fresh" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Component" addTemplatePanel="False" wizardType="Grid" returnPage="hist_cargas.ccp" PathID="tabla_layout3Search" wizardThemeVersion="3.0" composition="1">
			<Components>
				<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardTheme="Fresh" wizardCaption="Buscar" PathID="tabla_layout3SearchButton_DoSearch" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="33" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_id_usuario" fieldSource="id_usuario" wizardTheme="Fresh" wizardIsPassword="False" wizardEmptyCaption="Seleccionar Valor" wizardCaption="Id Usuario" caption="Id Usuario" required="False" unique="False" PathID="tabla_layout3Searchs_id_usuario" wizardThemeVersion="3.0" connection="con_xls" dataSource="usuario" boundColumn="id_usuario" textColumn="nombre_usuario">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="s_fecha_registro" fieldSource="fecha_registro" wizardTheme="Fresh" wizardIsPassword="False" features="(assigned)" wizardCaption="Fecha Registro" caption="Fecha Registro" required="False" format="ShortDate" unique="False" wizardSize="8" wizardMaxLength="100" PathID="tabla_layout3Searchs_fecha_registro" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<JDateTimePicker id="35" show_weekend="True" name="InlineDatePicker1" category="jQuery" enabled="True">
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
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="hist_cargas.php" forShow="True" url="hist_cargas.php" comment="//" codePage="windows-1252"/>
		<CodeFile id="Events" language="PHPTemplates" name="hist_cargas_events.php" forShow="False" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="45"/>
</Actions>
</Event>
</Events>
</Page>
