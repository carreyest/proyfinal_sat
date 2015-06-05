<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="{CCS_Style}" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<Panel id="2" visible="Dynamic" generateDiv="False" name="Panel1" PathID="Panel1">
			<Components>
				<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" name="periodos_carga" connection="con_xls" dataSource="SELECT id_periodo, num_intentos_permitidos, anio, CONVERT(datetime ,fecha_limite,105) as  fecha_limite, tipo_periodo, id_proveedor, nombre_mes, mes 
FROM periodos_carga
WHERE (id_proveedor = {s_id_proveedor} or  0= {s_id_proveedor})
AND (anio = {s_anio} or  {s_anio}='' )
AND nombre_mes LIKE '%{s_nombre_mes}%'
AND tipo_periodo LIKE '%{s_tipo_periodo}%' " pageSizeLimit="100" pageSize="True" wizardCaption=" Lista de Periodos de Carga " wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Centered" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="field" wizardGridRecordLinkField="id_periodo" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="Panel1periodos_carga" composition="3" isParent="True" useJqueryFeatures="True" childId="38;45" editableComponentTypeString="Grid">
					<Components>
						<Link id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="periodos_carga_Insert" hrefSource="periodos.ccp" removeParameters="id_periodo" wizardThemeItem="FooterA" wizardDefaultValue="Agregar Nuevo" wizardUseTemplateBlock="False" PathID="Panel1periodos_cargaperiodos_carga_Insert">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Sorter id="22" visible="True" name="Sorter_id_periodo" column="id_periodo" wizardCaption="Id Periodo" wizardSortingType="SimpleDir" wizardControl="id_periodo" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_id_periodo">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="23" visible="True" name="Sorter_anio" column="anio" wizardCaption="Anio" wizardSortingType="SimpleDir" wizardControl="anio" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_anio">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="24" visible="True" name="Sorter_nombre_mes" column="nombre_mes" wizardCaption="Nombre Mes" wizardSortingType="SimpleDir" wizardControl="nombre_mes" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_nombre_mes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="25" visible="True" name="Sorter_fecha_limite" column="fecha_limite" wizardCaption="Fecha Limite" wizardSortingType="SimpleDir" wizardControl="fecha_limite" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_fecha_limite">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="26" visible="True" name="Sorter_num_intentos_permitidos" column="num_intentos_permitidos" wizardCaption="Num Intentos Permitidos" wizardSortingType="SimpleDir" wizardControl="num_intentos_permitidos" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_num_intentos_permitidos">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="27" visible="True" name="Sorter_tipo_periodo" column="tipo_periodo" wizardCaption="Tipo Periodo" wizardSortingType="SimpleDir" wizardControl="tipo_periodo" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_tipo_periodo">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="28" visible="True" name="Sorter_id_proveedor" column="id_proveedor" wizardCaption="Id Proveedor" wizardSortingType="SimpleDir" wizardControl="id_proveedor" wizardAddNbsp="False" PathID="Panel1periodos_cargaSorter_id_proveedor">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="29" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" preserveParameters="GET" name="id_periodo" fieldSource="id_periodo" wizardCaption="Id Periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" linkProperties="''" wizardAlign="right" wizardAddNbsp="True" wizardThemeItem="GridA" PathID="Panel1periodos_cargaid_periodo" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="30" sourceType="DataField" format="yyyy-mm-dd" name="id_periodo" source="id_periodo"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="31" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="anio" fieldSource="anio" wizardCaption="Anio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_cargaanio">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="nombre_mes" fieldSource="nombre_mes" wizardCaption="Nombre Mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1periodos_carganombre_mes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="33" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_limite" fieldSource="fecha_limite" wizardCaption="Fecha Limite" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1periodos_cargafecha_limite">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="num_intentos_permitidos" fieldSource="num_intentos_permitidos" wizardCaption="Num Intentos Permitidos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_carganum_intentos_permitidos">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo_periodo" fieldSource="tipo_periodo" wizardCaption="Tipo Periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1periodos_cargatipo_periodo">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="36" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="id_proveedor" fieldSource="id_proveedor" wizardCaption="Id Proveedor" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1periodos_cargaid_proveedor">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="37" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardImagesScheme="None">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
					</TableParameters>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="108" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
						<SQLParameter id="109" dataType="Integer" defaultValue="0" designDefaultValue="2015" parameterSource="s_anio" parameterType="URL" variable="s_anio"/>
						<SQLParameter id="110" dataType="Text" designDefaultValue="Enero" parameterSource="s_nombre_mes" parameterType="URL" variable="s_nombre_mes"/>
						<SQLParameter id="111" dataType="Text" designDefaultValue="Normal" parameterSource="s_tipo_periodo" parameterType="URL" variable="s_tipo_periodo"/>
					</SQLParameters>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="38" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="periodos_cargaSearch" searchIds="38" fictitiousConnection="con_xls" wizardCaption="  Buscar" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="periodos.ccp" PathID="Panel1periodos_cargaSearch" composition="3">
					<Components>
						<Button id="39" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Buscar" PathID="Panel1periodos_cargaSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<ListBox id="40" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="s_id_proveedor" fieldSource="id_proveedor" wizardIsPassword="False" wizardEmptyCaption="Seleccionar Valor" wizardCaption="Id Proveedor" caption="Id Proveedor" required="False" unique="False" connection="con_xls" dataSource="SELECT distinct id_proveedor, nom_proveedor 
FROM usuario " boundColumn="id_proveedor" textColumn="nom_proveedor" PathID="Panel1periodos_cargaSearchs_id_proveedor">
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
						<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_anio" fieldSource="anio" wizardIsPassword="False" wizardCaption="Anio" caption="Anio" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1periodos_cargaSearchs_anio">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="42" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="s_nombre_mes" fieldSource="nombre_mes" wizardIsPassword="False" wizardEmptyCaption="Seleccionar Valor" wizardCaption="Nombre Mes" caption="Nombre Mes" required="False" unique="False" dataSource="Enero;Enero;Febrero;Febrero;Marzo;Marzo;Abril;Abril;Mayo;Mayo;Junio;Junio;Julio;Julio;Agosto;Agosto;Septiembre;Septiembre;Octubre;Octubre;Noviembre;Noviembre;Diciembre;Diciembre" PathID="Panel1periodos_cargaSearchs_nombre_mes">
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
						<ListBox id="43" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="s_tipo_periodo" fieldSource="tipo_periodo" wizardIsPassword="False" wizardEmptyCaption="Seleccionar Valor" wizardCaption="Tipo Periodo" caption="Tipo Periodo" required="False" unique="False" dataSource="Normal;Normal;Extraordinario;Extraordinario" PathID="Panel1periodos_cargaSearchs_tipo_periodo">
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
				<Panel id="44" visible="True" generateDiv="True" name="Panel2" PathID="Panel1Panel2" features="(assigned)">
					<Components>
						<Record id="45" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="periodos_carga1" connection="con_xls" dataSource="periodos_carga" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="id_periodo" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Agregar/Editar Periodos Carga " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Program Files (x86)/CodeChargeStudio5/Templates/Record/Dialog.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="Panel1Panel2periodos_carga1" composition="3">
							<Components>
								<Button id="48" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Agregar" PathID="Panel1Panel2periodos_carga1Button_Insert">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="49" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Enviar" PathID="Panel1Panel2periodos_carga1Button_Update">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="50" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Borrar" PathID="Panel1Panel2periodos_carga1Button_Delete">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="51" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancelar" PathID="Panel1Panel2periodos_carga1Button_Cancel">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="anio" fieldSource="anio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Anio" caption="Anio" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1Panel2periodos_carga1anio">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<ListBox id="56" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="nombre_mes" fieldSource="nombre_mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Nombre Mes" caption="Nombre Mes" required="False" unique="False" connection="con_xls" wizardEmptyCaption="Seleccionar Valor" dataSource="Enero;Enero;Febrero;Febrero;Marzo;Marzo;Abril;Abril;Mayo;Mayo;Junio;Junio;Julio;Julio;Agosto;Agosto;Septiembre;Septiembre;Octubre;Octubre;Noviembre;Noviembre;Diciembre;Diciembre" PathID="Panel1Panel2periodos_carga1nombre_mes">
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
								<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="num_intentos_permitidos" fieldSource="num_intentos_permitidos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Num Intentos Permitidos" caption="Num Intentos Permitidos" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1Panel2periodos_carga1num_intentos_permitidos">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<ListBox id="53" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="tipo_periodo" fieldSource="tipo_periodo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Tipo Periodo" caption="Tipo Periodo" required="True" unique="False" wizardEmptyCaption="Seleccionar Valor" dataSource="Normal;Normal;Extraordinario;Extraordinario" PathID="Panel1Panel2periodos_carga1tipo_periodo">
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
								<ListBox id="54" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="id_proveedor" fieldSource="id_proveedor" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Id Proveedor" caption="Id Proveedor" required="True" unique="False" connection="con_xls" wizardEmptyCaption="Seleccionar Valor" dataSource="SELECT distinct id_proveedor, nom_proveedor 
FROM usuario 
	union select 0,'Todos'" PathID="Panel1Panel2periodos_carga1id_proveedor">
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
								<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="mes" fieldSource="mes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Mes" caption="Mes" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="Panel1Panel2periodos_carga1mes">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<TextBox id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="fecha_limite" fieldSource="fecha_limite" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Fecha Limite" caption="Fecha Limite" required="True" format="dd/mm/yyyy hh:mm" unique="False" wizardSize="8" wizardMaxLength="100" PathID="Panel1Panel2periodos_carga1fecha_limite" defaultValue="CurrentDateTime">
									<Components/>
									<Events/>
									<Attributes/>
									<Features>
										<JDateTimePicker id="58" show_weekend="True" name="JDateTimePicker1" category="jQuery" enabled="True">
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
							<TableParameters>
								<TableParameter id="47" conditionType="Parameter" useIsNull="False" field="id_periodo" parameterSource="id_periodo" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
							</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="46" schemaName="dbo" tableName="periodos_carga"/>
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
						<JDialog id="88" modal="True" visible="False" enabled="True" name="DialogPanel1" category="jQuery" title="Agregar/Editar Periodos Carga " show="Panel1condition_for_show.ontrue;" hide="Panel1condition_for_hide.ontrue;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<ControlPoints>
								<ControlPoint id="89" name="Panel1condition_for_show.ontrue" relProperty="show">
									<Items>
										<ControlPointItem id="90" name="periodos" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="91" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
										<ControlPointItem id="92" name="condition_for_show" ccpId="61" type="Condition" isFeature="True" PathID="Panel1condition_for_show"/>
									</Items>
								</ControlPoint>
								<ControlPoint id="93" name="Panel1condition_for_hide.ontrue" relProperty="hide">
									<Items>
										<ControlPointItem id="94" name="periodos" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="95" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
										<ControlPointItem id="96" name="condition_for_hide" ccpId="66" type="Condition" isFeature="True" PathID="Panel1condition_for_hide"/>
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
			</Features>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="periodos_events.php" forShow="False" comment="//" codePage="windows-1252"/>
		<CodeFile id="Code" language="PHPTemplates" name="periodos.php" forShow="True" url="periodos.php" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
