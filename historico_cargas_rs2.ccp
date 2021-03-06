<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="{CCS_Style}" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="56" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Label id="98" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lb_resumen" PathID="lb_resumen">
			<Components/>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="291"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Label>
		<Grid id="99" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" name="l_detalle_medicion_apertu" connection="con_xls" dataSource="SELECT a.* 
FROM l_detalle_medicion_apertura a
WHERE a.id_proveedor = {s_id_proveedor}
AND a.id_periodo ={s_id_periodo}
AND a.tipo_nivel_servicio = '{s_opt_slas}' 
AND a.estatus='F'
and  a.num_carga=(
SELECT max(b.num_carga)
FROM l_detalle_medicion_apertura b
WHERE b.id_proveedor = {s_id_proveedor}
AND b.id_periodo = {s_id_periodo}
AND b.tipo_nivel_servicio = '{s_opt_slas}' 
AND b.estatus='F'
)
ORDER BY a.contador" pageSizeLimit="100" pageSize="True" wizardCaption=" L Detalle Medicion Apertura Lista de" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="l_detalle_medicion_apertu" wizardThemeVersion="3.0">
			<Components>
				<Label id="101" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="l_detalle_medicion_apertu_TotalRecords" wizardUseTemplateBlock="False" PathID="l_detalle_medicion_apertul_detalle_medicion_apertu_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="102"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="103" visible="True" name="Sorter_contador" column="contador" wizardCaption="Contador" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="contador" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_contador" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="104" visible="True" name="Sorter_servicio_negocio" column="servicio_negocio" wizardCaption="Servicio Negocio" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicio_negocio" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_servicio_negocio" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="105" visible="True" name="Sorter_id_ppmc" column="id_ppmc" wizardCaption="Id Ppmc" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_ppmc" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_id_ppmc" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="106" visible="True" name="Sorter_id_estimacion" column="id_estimacion" wizardCaption="Id Estimacion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_estimacion" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_id_estimacion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="107" visible="True" name="Sorter_descripcion" column="descripcion" wizardCaption="Descripcion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="descripcion" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_descripcion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="108" visible="True" name="Sorter_herr_est_cost" column="herr_est_cost" wizardCaption="Herr Est Cost" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="herr_est_cost" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_herr_est_cost" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="109" visible="True" name="Sorter_req_serv" column="req_serv" wizardCaption="Req Serv" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="req_serv" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_req_serv" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="110" visible="True" name="Sorter_fecha_asignacion" column="fecha_asignacion" wizardCaption="Fecha Asignacion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="fecha_asignacion" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_fecha_asignacion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="111" visible="True" name="Sorter_fecha_entrega_prop" column="fecha_entrega_prop" wizardCaption="Fecha Entrega Prop" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="fecha_entrega_prop" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_fecha_entrega_prop" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="112" visible="True" name="Sorter_fecha_acepta_prop" column="fecha_acepta_prop" wizardCaption="Fecha Acepta Prop" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="fecha_acepta_prop" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_fecha_acepta_prop" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="113" visible="True" name="Sorter_horas_aprobadas" column="horas_aprobadas" wizardCaption="Horas Aprobadas" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="horas_aprobadas" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_horas_aprobadas" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="114" visible="True" name="Sorter_tiempo_limite_entrega_prop" column="tiempo_limite_entrega_prop" wizardCaption="Tiempo Limite Entrega Prop" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tiempo_limite_entrega_prop" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_tiempo_limite_entrega_prop" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="115" visible="True" name="Sorter_observaciones" column="observaciones" wizardCaption="Observaciones" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="observaciones" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_observaciones" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="116" visible="True" name="Sorter_tipo" column="tipo" wizardCaption="Tipo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tipo" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_tipo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="117" visible="True" name="Sorter_serv_contractual" column="serv_contractual" wizardCaption="Serv Contractual" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="serv_contractual" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_serv_contractual" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="118" visible="True" name="Sorter_total_unidades" column="total_unidades" wizardCaption="Total Unidades" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="total_unidades" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_total_unidades" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="119" visible="True" name="Sorter_tipo_unidades" column="tipo_unidades" wizardCaption="Tipo Unidades" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tipo_unidades" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_tipo_unidades" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="120" visible="True" name="Sorter_ppmc_padre" column="ppmc_padre" wizardCaption="Ppmc Padre" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="ppmc_padre" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_ppmc_padre" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="121" visible="True" name="Sorter_tipo_padre" column="tipo_padre" wizardCaption="Tipo Padre" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tipo_padre" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuSorter_tipo_padre" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="124" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="contador" fieldSource="contador" wizardCaption="Contador" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_detalle_medicion_apertucontador" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="125" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_negocio" fieldSource="servicio_negocio" wizardCaption="Servicio Negocio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuservicio_negocio" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="126" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_ppmc" fieldSource="id_ppmc" wizardCaption="Id Ppmc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuid_ppmc" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="127" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_estimacion" fieldSource="id_estimacion" wizardCaption="Id Estimacion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuid_estimacion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="128" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="descripcion" fieldSource="descripcion" wizardCaption="Descripcion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertudescripcion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="129" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="herr_est_cost" fieldSource="herr_est_cost" wizardCaption="Herr Est Cost" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuherr_est_cost" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="130" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="req_serv" fieldSource="req_serv" wizardCaption="Req Serv" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertureq_serv" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="131" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_asignacion" fieldSource="fecha_asignacion" wizardCaption="Fecha Asignacion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertufecha_asignacion" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="132" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_entrega_prop" fieldSource="fecha_entrega_prop" wizardCaption="Fecha Entrega Prop" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertufecha_entrega_prop" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="133" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_acepta_prop" fieldSource="fecha_acepta_prop" wizardCaption="Fecha Acepta Prop" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertufecha_acepta_prop" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="134" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="horas_aprobadas" fieldSource="horas_aprobadas" wizardCaption="Horas Aprobadas" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuhoras_aprobadas" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="135" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tiempo_limite_entrega_prop" fieldSource="tiempo_limite_entrega_prop" wizardCaption="Tiempo Limite Entrega Prop" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertutiempo_limite_entrega_prop" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="136" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="observaciones" fieldSource="observaciones" wizardCaption="Observaciones" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuobservaciones" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="137" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo" fieldSource="tipo" wizardCaption="Tipo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertutipo" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="138" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="serv_contractual" fieldSource="serv_contractual" wizardCaption="Serv Contractual" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuserv_contractual" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="139" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="total_unidades" fieldSource="total_unidades" wizardCaption="Total Unidades" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertutotal_unidades" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="140" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo_unidades" fieldSource="tipo_unidades" wizardCaption="Tipo Unidades" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertutipo_unidades" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="141" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ppmc_padre" fieldSource="ppmc_padre" wizardCaption="Ppmc Padre" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertuppmc_padre" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="142" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo_padre" fieldSource="tipo_padre" wizardCaption="Tipo Padre" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_apertutipo_padre" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="145" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="497" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_apert_herr_est_cost" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_apertulb_apert_herr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="498" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_apert_req_serv" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_apertulb_apert_req_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="408"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="474" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="475" dataType="Integer" defaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="476" dataType="Text" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Grid id="160" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" name="l_detalle_medicion_cierre" connection="con_xls" dataSource="SELECT a.* 
FROM l_detalle_medicion_cierre  a
WHERE a.id_proveedor = {s_id_proveedor}
AND a.id_periodo =  {s_id_periodo} 
AND a.tipo_nivel_servicio = '{s_opt_slas}' 
AND a.estatus='F'
and  a.num_carga=(
SELECT max(b.num_carga)
FROM l_detalle_medicion_cierre  b
WHERE b.id_proveedor = {s_id_proveedor}
AND b.id_periodo =  {s_id_periodo}
AND b.tipo_nivel_servicio = '{s_opt_slas}' 
AND b.estatus='F'
)
ORDER BY a.contador" pageSizeLimit="100" pageSize="True" wizardCaption=" L Detalle Medicion Cierre Lista de" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="l_detalle_medicion_cierre" wizardThemeVersion="3.0">
			<Components>
				<Label id="162" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="l_detalle_medicion_cierre_TotalRecords" wizardUseTemplateBlock="False" PathID="l_detalle_medicion_cierrel_detalle_medicion_cierre_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="163"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="164" visible="True" name="Sorter_contador" column="contador" wizardCaption="Contador" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="contador" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_contador" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="165" visible="True" name="Sorter_servicio_negocio" column="servicio_negocio" wizardCaption="Servicio Negocio" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicio_negocio" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_servicio_negocio" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="166" visible="True" name="Sorter_id_ppmc" column="id_ppmc" wizardCaption="Id Ppmc" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_ppmc" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_id_ppmc" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="167" visible="True" name="Sorter_id_estimacion" column="id_estimacion" wizardCaption="Id Estimacion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_estimacion" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_id_estimacion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="168" visible="True" name="Sorter_descripcion" column="descripcion" wizardCaption="Descripcion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="descripcion" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_descripcion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="169" visible="True" name="Sorter_cump_req_func" column="cump_req_func" wizardCaption="Cump Req Func" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="cump_req_func" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_cump_req_func" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="170" visible="True" name="Sorter_calific_req_func" column="calific_req_func" wizardCaption="Calific Req Func" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="calific_req_func" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_calific_req_func" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="171" visible="True" name="Sorter_retraso_entregables" column="retraso_entregables" wizardCaption="Retraso Entregables" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="retraso_entregables" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_retraso_entregables" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="172" visible="True" name="Sorter_dias_retraso" column="dias_retraso" wizardCaption="Dias Retraso" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="dias_retraso" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_dias_retraso" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="173" visible="True" name="Sorter_calidad_prod_term" column="calidad_prod_term" wizardCaption="Calidad Prod Term" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="calidad_prod_term" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_calidad_prod_term" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="174" visible="True" name="Sorter_total_defectos_func" column="total_defectos_func" wizardCaption="Total Defectos Func" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="total_defectos_func" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_total_defectos_func" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="175" visible="True" name="Sorter_total_defectos_docu" column="total_defectos_docu" wizardCaption="Total Defectos Docu" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="total_defectos_docu" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_total_defectos_docu" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="176" visible="True" name="Sorter_pena_contractual" column="pena_contractual" wizardCaption="Pena Contractual" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="pena_contractual" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_pena_contractual" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="177" visible="True" name="Sorter_calidad_codigo" column="calidad_codigo" wizardCaption="Calidad Codigo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="calidad_codigo" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_calidad_codigo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="178" visible="True" name="Sorter_porcentaje_cumpli" column="porcentaje_cumpli" wizardCaption="Porcentaje Cumpli" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="porcentaje_cumpli" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_porcentaje_cumpli" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="179" visible="True" name="Sorter_defectos_fugados_amb_prod" column="defectos_fugados_amb_prod" wizardCaption="Defectos Fugados Amb Prod" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="defectos_fugados_amb_prod" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_defectos_fugados_amb_prod" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="180" visible="True" name="Sorter_total_defectos_fugados" column="total_defectos_fugados" wizardCaption="Total Defectos Fugados" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="total_defectos_fugados" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_total_defectos_fugados" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="181" visible="True" name="Sorter_observaciones" column="observaciones" wizardCaption="Observaciones" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="observaciones" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_observaciones" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="182" visible="True" name="Sorter_tipo" column="tipo" wizardCaption="Tipo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tipo" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_tipo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="183" visible="True" name="Sorter_serv_contractual" column="serv_contractual" wizardCaption="Serv Contractual" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="serv_contractual" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_serv_contractual" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="184" visible="True" name="Sorter_fecha_caes" column="fecha_caes" wizardCaption="Fecha Caes" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="fecha_caes" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_fecha_caes" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="185" visible="True" name="Sorter_total_unidades" column="total_unidades" wizardCaption="Total Unidades" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="total_unidades" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_total_unidades" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="186" visible="True" name="Sorter_tipo_unidades" column="tipo_unidades" wizardCaption="Tipo Unidades" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tipo_unidades" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreSorter_tipo_unidades" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="189" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="contador" fieldSource="contador" wizardCaption="Contador" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrecontador" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="190" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_negocio" fieldSource="servicio_negocio" wizardCaption="Servicio Negocio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreservicio_negocio" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="191" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_ppmc" fieldSource="id_ppmc" wizardCaption="Id Ppmc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreid_ppmc" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="192" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_estimacion" fieldSource="id_estimacion" wizardCaption="Id Estimacion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreid_estimacion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="193" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="descripcion" fieldSource="descripcion" wizardCaption="Descripcion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierredescripcion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="194" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="cump_req_func" fieldSource="cump_req_func" wizardCaption="Cump Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrecump_req_func" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="195" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="calific_req_func" fieldSource="calific_req_func" wizardCaption="Calific Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrecalific_req_func" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="196" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="retraso_entregables" fieldSource="retraso_entregables" wizardCaption="Retraso Entregables" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreretraso_entregables" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="197" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="dias_retraso" fieldSource="dias_retraso" wizardCaption="Dias Retraso" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierredias_retraso" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="198" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="calidad_prod_term" fieldSource="calidad_prod_term" wizardCaption="Calidad Prod Term" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrecalidad_prod_term" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="199" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="total_defectos_func" fieldSource="total_defectos_func" wizardCaption="Total Defectos Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierretotal_defectos_func" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="200" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="total_defectos_docu" fieldSource="total_defectos_docu" wizardCaption="Total Defectos Docu" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierretotal_defectos_docu" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="201" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="pena_contractual" fieldSource="pena_contractual" wizardCaption="Pena Contractual" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrepena_contractual" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="202" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="calidad_codigo" fieldSource="calidad_codigo" wizardCaption="Calidad Codigo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrecalidad_codigo" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="203" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="porcentaje_cumpli" fieldSource="porcentaje_cumpli" wizardCaption="Porcentaje Cumpli" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreporcentaje_cumpli" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="204" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="defectos_fugados_amb_prod" fieldSource="defectos_fugados_amb_prod" wizardCaption="Defectos Fugados Amb Prod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierredefectos_fugados_amb_prod" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="205" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="total_defectos_fugados" fieldSource="total_defectos_fugados" wizardCaption="Total Defectos Fugados" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierretotal_defectos_fugados" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="206" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="observaciones" fieldSource="observaciones" wizardCaption="Observaciones" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreobservaciones" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="207" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo" fieldSource="tipo" wizardCaption="Tipo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierretipo" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="208" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="serv_contractual" fieldSource="serv_contractual" wizardCaption="Serv Contractual" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierreserv_contractual" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="209" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_caes" fieldSource="fecha_caes" wizardCaption="Fecha Caes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierrefecha_caes" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="210" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="total_unidades" fieldSource="total_unidades" wizardCaption="Total Unidades" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierretotal_unidades" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="211" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo_unidades" fieldSource="tipo_unidades" wizardCaption="Tipo Unidades" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_cierretipo_unidades" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="214" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="492" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_cierre_cump_req_func" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_cierrelb_cierre_cump_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="493" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_cierre_retraso_entregables" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_cierrelb_cierre_retraso_entregables">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="494" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_cierre_calidad_prod_term" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_cierrelb_cierre_calidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="495" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_cierre_calidad_codigo" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_cierrelb_cierre_calidad_codigo">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="496" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_cierre_defectos_fugados_amb_prod" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_cierrelb_cierre_defectos_fugados_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="412"/>
					</Actions>
				</Event>
				<Event name="AfterExecuteSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="522"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="477" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="478" dataType="Integer" defaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="479" dataType="Text" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Grid id="221" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" name="l_detalle_medicion_inc" connection="con_xls" dataSource="SELECT a.* 
FROM l_detalle_medicion_inc  a
WHERE a.id_proveedor = {s_id_proveedor}
AND a.id_periodo =  {s_id_periodo} 
AND a.tipo_nivel_servicio = '{s_opt_slas}' 
AND a.estatus='F'
and  a.num_carga=(
SELECT max(b.num_carga)
FROM l_detalle_medicion_inc  b
WHERE b.id_proveedor = {s_id_proveedor}
AND b.id_periodo =  {s_id_periodo}
AND b.tipo_nivel_servicio = '{s_opt_slas}' 
AND b.estatus='F'
)
ORDER BY a.contador" pageSizeLimit="100" pageSize="True" wizardCaption=" L Detalle Medicion Inc Lista de" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="l_detalle_medicion_inc" wizardThemeVersion="3.0">
			<Components>
				<Label id="223" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="l_detalle_medicion_inc_TotalRecords" wizardUseTemplateBlock="False" PathID="l_detalle_medicion_incl_detalle_medicion_inc_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="224"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="225" visible="True" name="Sorter_contador" column="contador" wizardCaption="Contador" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="contador" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_contador" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="226" visible="True" name="Sorter_id_incidencia" column="id_incidencia" wizardCaption="Id Incidencia" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_incidencia" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_id_incidencia" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="227" visible="True" name="Sorter_servicio_negocio" column="servicio_negocio" wizardCaption="Servicio Negocio" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicio_negocio" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_servicio_negocio" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="228" visible="True" name="Sorter_nombre_producto" column="nombre_producto" wizardCaption="Nombre Producto" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="nombre_producto" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_nombre_producto" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="229" visible="True" name="Sorter_severidad" column="severidad" wizardCaption="Severidad" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="severidad" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_severidad" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="230" visible="True" name="Sorter_estado" column="estado" wizardCaption="Estado" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="estado" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_estado" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="231" visible="True" name="Sorter_nuevo" column="nuevo" wizardCaption="Nuevo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="nuevo" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_nuevo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="232" visible="True" name="Sorter_asignado" column="asignado" wizardCaption="Asignado" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="asignado" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_asignado" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="233" visible="True" name="Sorter_en_curso" column="en_curso" wizardCaption="En Curso" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="en_curso" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_en_curso" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="234" visible="True" name="Sorter_pendiente" column="pendiente" wizardCaption="Pendiente" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="pendiente" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_pendiente" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="235" visible="True" name="Sorter_resuelto" column="resuelto" wizardCaption="Resuelto" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="resuelto" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_resuelto" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="236" visible="True" name="Sorter_cerrado" column="cerrado" wizardCaption="Cerrado" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="cerrado" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_cerrado" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="237" visible="True" name="Sorter_fecha_entrega_avl" column="fecha_entrega_avl" wizardCaption="Fecha Entrega Avl" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="fecha_entrega_avl" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_fecha_entrega_avl" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="238" visible="True" name="Sorter_manejo_incid_tiempo_atencion" column="manejo_incid_tiempo_atencion" wizardCaption="Manejo Incid Tiempo Atencion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="manejo_incid_tiempo_atencion" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_manejo_incid_tiempo_atencion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="239" visible="True" name="Sorter_manejo_incid_tiempo_solu" column="manejo_incid_tiempo_solu" wizardCaption="Manejo Incid Tiempo Solu" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="manejo_incid_tiempo_solu" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_manejo_incid_tiempo_solu" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="240" visible="True" name="Sorter_observaciones" column="observaciones" wizardCaption="Observaciones" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="observaciones" wizardAddNbsp="False" PathID="l_detalle_medicion_incSorter_observaciones" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="243" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="contador" fieldSource="contador" wizardCaption="Contador" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_detalle_medicion_inccontador" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="244" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_incidencia" fieldSource="id_incidencia" wizardCaption="Id Incidencia" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incid_incidencia" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="245" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_negocio" fieldSource="servicio_negocio" wizardCaption="Servicio Negocio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incservicio_negocio" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="246" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="nombre_producto" fieldSource="nombre_producto" wizardCaption="Nombre Producto" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incnombre_producto" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="247" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="severidad" fieldSource="severidad" wizardCaption="Severidad" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incseveridad" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="248" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="estado" fieldSource="estado" wizardCaption="Estado" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incestado" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="249" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="nuevo" fieldSource="nuevo" wizardCaption="Nuevo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incnuevo" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="250" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="asignado" fieldSource="asignado" wizardCaption="Asignado" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incasignado" wizardTheme="Austere4" wizardThemeVersion="3.0" DBFormat="yyyy-mm-dd HH:nn:ss.S" format="dd/mm/yyyy  H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="251" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="en_curso" fieldSource="en_curso" wizardCaption="En Curso" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incen_curso" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="252" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="pendiente" fieldSource="pendiente" wizardCaption="Pendiente" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incpendiente" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="253" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="resuelto" fieldSource="resuelto" wizardCaption="Resuelto" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incresuelto" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="254" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="cerrado" fieldSource="cerrado" wizardCaption="Cerrado" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_inccerrado" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="255" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="fecha_entrega_avl" fieldSource="fecha_entrega_avl" wizardCaption="Fecha Entrega Avl" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incfecha_entrega_avl" wizardTheme="Austere4" wizardThemeVersion="3.0" format="dd/mm/yyyy  H:nn" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="256" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="manejo_incid_tiempo_atencion" fieldSource="manejo_incid_tiempo_atencion" wizardCaption="Manejo Incid Tiempo Atencion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incmanejo_incid_tiempo_atencion" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="257" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="manejo_incid_tiempo_solu" fieldSource="manejo_incid_tiempo_solu" wizardCaption="Manejo Incid Tiempo Solu" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incmanejo_incid_tiempo_solu" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="258" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="observaciones" fieldSource="observaciones" wizardCaption="Observaciones" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_medicion_incobservaciones" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="261" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="501" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_inci_manejo_incid_tiempo_atencion" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_inclb_inci_manejo_incid_tiempo_atencion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="502" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_inci_manejo_incid_tiempo_solu" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_medicion_inclb_inci_manejo_incid_tiempo_solu">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="413"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="480" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" designDefaultValue="2" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="481" dataType="Integer" defaultValue="0" designDefaultValue="4" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="482" dataType="Text" designDefaultValue="SLO" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Grid id="264" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" name="l_detalle_eficiencia_pres" connection="con_xls" dataSource="SELECT a.* 
FROM l_detalle_eficiencia_presupuestal a
WHERE a.id_proveedor ={s_id_proveedor}
AND a.id_periodo ={s_id_periodo}
AND a.tipo_nivel_servicio = '{s_opt_slas}' 
AND a.estatus='F'
and  a.num_carga=(
SELECT max(b.num_carga)
FROM l_detalle_eficiencia_presupuestal  b
WHERE b.id_proveedor = {s_id_proveedor}
AND b.id_periodo = {s_id_periodo} 
AND b.tipo_nivel_servicio = '{s_opt_slas}' 
AND b.estatus='F'
)
ORDER BY a.contador" pageSizeLimit="100" pageSize="True" wizardCaption=" L Detalle Eficiencia Presupuestal Lista de" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="l_detalle_eficiencia_pres" wizardThemeVersion="3.0">
			<Components>
				<Label id="266" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="l_detalle_eficiencia_pres_TotalRecords" wizardUseTemplateBlock="False" PathID="l_detalle_eficiencia_presl_detalle_eficiencia_pres_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="267"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="268" visible="True" name="Sorter_contador" column="contador" wizardCaption="Contador" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="contador" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_contador" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="269" visible="True" name="Sorter_grupo_aplicativos" column="grupo_aplicativos" wizardCaption="Grupo Aplicativos" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="grupo_aplicativos" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_grupo_aplicativos" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="270" visible="True" name="Sorter_servicios_negocio_rela" column="servicios_negocio_rela" wizardCaption="Servicios Negocio Rela" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicios_negocio_rela" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_servicios_negocio_rela" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="271" visible="True" name="Sorter_promedio_cfm" column="promedio_cfm" wizardCaption="Promedio Cfm" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="promedio_cfm" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_promedio_cfm" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="272" visible="True" name="Sorter_cfm_nuevo" column="cfm_nuevo" wizardCaption="Cfm Nuevo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="cfm_nuevo" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_cfm_nuevo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="273" visible="True" name="Sorter_result_efic_presupuestal" column="result_efic_presupuestal" wizardCaption="Result Efic Presupuestal" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="result_efic_presupuestal" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_result_efic_presupuestal" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="274" visible="True" name="Sorter_efic_presupuestal" column="efic_presupuestal" wizardCaption="Efic Presupuestal" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="efic_presupuestal" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_efic_presupuestal" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="275" visible="True" name="Sorter_observaciones" column="observaciones" wizardCaption="Observaciones" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="observaciones" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presSorter_observaciones" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="278" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="contador" fieldSource="contador" wizardCaption="Contador" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_detalle_eficiencia_prescontador" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="279" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="grupo_aplicativos" fieldSource="grupo_aplicativos" wizardCaption="Grupo Aplicativos" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presgrupo_aplicativos" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="280" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicios_negocio_rela" fieldSource="servicios_negocio_rela" wizardCaption="Servicios Negocio Rela" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presservicios_negocio_rela" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="281" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="promedio_cfm" fieldSource="promedio_cfm" wizardCaption="Promedio Cfm" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_prespromedio_cfm" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="282" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="cfm_nuevo" fieldSource="cfm_nuevo" wizardCaption="Cfm Nuevo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_prescfm_nuevo" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="283" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="result_efic_presupuestal" fieldSource="result_efic_presupuestal" wizardCaption="Result Efic Presupuestal" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presresult_efic_presupuestal" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="284" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="efic_presupuestal" fieldSource="efic_presupuestal" wizardCaption="Efic Presupuestal" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presefic_presupuestal" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="285" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="observaciones" fieldSource="observaciones" wizardCaption="Observaciones" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_detalle_eficiencia_presobservaciones" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="288" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="503" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_efic_presupuestal1" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_detalle_eficiencia_preslb_efic_presupuestal1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="414"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="483" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="484" dataType="Integer" defaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="485" dataType="Text" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Grid id="308" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" name="l_calificacion_rs_AUT" connection="con_xls" dataSource="
SELECT a.* 
FROM  l_calificacion_rs_AUT  a
WHERE a.id_proveedor = {s_id_proveedor}
AND a.id_periodo = {s_id_periodo}
AND a.tipo_nivel_servicio = '{s_opt_slas}' 
AND a.estatus='F'
and  a.num_carga=(
SELECT max(b.num_carga)
FROM  l_calificacion_rs_AUT   b
WHERE b.id_proveedor = {s_id_proveedor}
AND b.id_periodo = {s_id_periodo} 
AND b.tipo_nivel_servicio = '{s_opt_slas}'
AND b.estatus='F' 
)
ORDER BY a.contador" pageSizeLimit="100" pageSize="True" wizardCaption="Grid1" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="l_calificacion_rs_AUT" wizardThemeVersion="3.0">
			<Components>
				<Label id="312" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="l_calificacion_rs_AUT_TotalRecords" wizardUseTemplateBlock="False" PathID="l_calificacion_rs_AUTl_calificacion_rs_AUT_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="313"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="314" visible="True" name="Sorter_contador" column="contador" wizardCaption="Contador" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="contador" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_contador" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="315" visible="True" name="Sorter_servicio_cont" column="servicio_cont" wizardCaption="Servicio Cont" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicio_cont" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_servicio_cont" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="316" visible="True" name="Sorter_servicio_negocio" column="servicio_negocio" wizardCaption="Servicio Negocio" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicio_negocio" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_servicio_negocio" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="317" visible="True" name="Sorter_id_ppmc" column="id_ppmc" wizardCaption="Id Ppmc" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_ppmc" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_id_ppmc" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="318" visible="True" name="Sorter_id_estimacion" column="id_estimacion" wizardCaption="Id Estimacion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_estimacion" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_id_estimacion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="319" visible="True" name="Sorter_tipo" column="tipo" wizardCaption="Tipo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="tipo" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_tipo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="320" visible="True" name="Sorter_descripcion" column="descripcion" wizardCaption="Descripcion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="descripcion" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_descripcion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="321" visible="True" name="Sorter_herr_est_cost" column="herr_est_cost" wizardCaption="Herr Est Cost" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="herr_est_cost" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_herr_est_cost" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="322" visible="True" name="Sorter_req_serv" column="req_serv" wizardCaption="Req Serv" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="req_serv" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_req_serv" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="323" visible="True" name="Sorter_cumpl_req_func" column="cumpl_req_func" wizardCaption="Cumpl Req Func" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="cumpl_req_func" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_cumpl_req_func" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="324" visible="True" name="Sorter_retr_entregable" column="retr_entregable" wizardCaption="Retr Entregable" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="retr_entregable" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_retr_entregable" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="325" visible="True" name="Sorter_calidad_prod_term" column="calidad_prod_term" wizardCaption="Calidad Prod Term" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="calidad_prod_term" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_calidad_prod_term" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="326" visible="True" name="Sorter_calidad_codigo" column="calidad_codigo" wizardCaption="Calidad Codigo" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="calidad_codigo" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_calidad_codigo" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="327" visible="True" name="Sorter_def_fug_amb_prod" column="def_fug_amb_prod" wizardCaption="Def Fug Amb Prod" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="def_fug_amb_prod" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_def_fug_amb_prod" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="328" visible="True" name="Sorter_obs_manuales" column="obs_manuales" wizardCaption="Obs Manuales" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="obs_manuales" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTSorter_obs_manuales" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="331" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="contador" fieldSource="contador" wizardCaption="Contador" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTcontador" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="332" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_cont" fieldSource="servicio_cont" wizardCaption="Servicio Cont" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTservicio_cont" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="333" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_negocio" fieldSource="servicio_negocio" wizardCaption="Servicio Negocio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTservicio_negocio" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="334" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="id_ppmc" fieldSource="id_ppmc" wizardCaption="Id Ppmc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTid_ppmc" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="335" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="id_estimacion" fieldSource="id_estimacion" wizardCaption="Id Estimacion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTid_estimacion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="336" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="tipo" fieldSource="tipo" wizardCaption="Tipo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTtipo" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="337" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="descripcion" fieldSource="descripcion" wizardCaption="Descripcion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTdescripcion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="338" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="herr_est_cost" fieldSource="herr_est_cost" wizardCaption="Herr Est Cost" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTherr_est_cost" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="339" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="req_serv" fieldSource="req_serv" wizardCaption="Req Serv" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTreq_serv" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="340" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="cumpl_req_func" fieldSource="cumpl_req_func" wizardCaption="Cumpl Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTcumpl_req_func" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="341" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="retr_entregable" fieldSource="retr_entregable" wizardCaption="Retr Entregable" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTretr_entregable" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="342" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="calidad_prod_term" fieldSource="calidad_prod_term" wizardCaption="Calidad Prod Term" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTcalidad_prod_term" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="343" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="calidad_codigo" fieldSource="calidad_codigo" wizardCaption="Calidad Codigo" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTcalidad_codigo" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="344" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="def_fug_amb_prod" fieldSource="def_fug_amb_prod" wizardCaption="Def Fug Amb Prod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTdef_fug_amb_prod" wizardTheme="Austere4" wizardThemeVersion="3.0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="345" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="obs_manuales" fieldSource="obs_manuales" wizardCaption="Obs Manuales" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_rs_AUTobs_manuales" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="348" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="504" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_herr_est_cost" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_herr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="505" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_req_serv" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_req_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="506" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_cumpl_req_func" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_cumpl_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="507" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_retr_entregable" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_retr_entregable">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="508" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_calidad_prod_term" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_calidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="509" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_calidad_codigo" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_calidad_codigo">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="510" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb11_def_fug_amb_prod" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_rs_AUTlb11_def_fug_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="433"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="486" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="487" dataType="Integer" defaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="488" dataType="Text" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Record id="352" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="l_calificacion_incidentes1" searchIds="352" fictitiousConnection="con_xls" fictitiousDataSource="l_calificacion_incidentes_AUT" wizardCaption="  Buscar" changedCaptionSearch="False" wizardTheme="Austere4" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Component" addTemplatePanel="False" wizardSpecifyResultsForm="False" PathID="l_calificacion_incidentes1" wizardThemeVersion="3.0">
			<Components>
				<Button id="353" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardTheme="Austere4" wizardCaption="Buscar" PathID="l_calificacion_incidentes1Button_DoSearch" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="354" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="s_id_proveedor" fieldSource="id_proveedor,id_periodo,tipo_nivel_servicio" wizardTheme="Austere4" wizardIsPassword="False" wizardEmptyCaption="Seleccionar Valor" wizardCaption="Id Proveedor" caption="Id Proveedor" required="False" unique="False" PathID="l_calificacion_incidentes1s_id_proveedor" wizardThemeVersion="3.0" connection="con_xls" dataSource="SELECT distinct id_proveedor, nom_proveedor 
FROM usuario 
where id_proveedor&lt;&gt;0 and 
id_proveedor not in(Select id_proveedor u2 from usuario as u2 where u2.capc_cds='CAPC')
and (id_proveedor={id_proveedor}
	or '{capc_cds}'='CAPC')


" boundColumn="id_proveedor" textColumn="nom_proveedor">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="511" dataType="Integer" defaultValue="0" designDefaultValue="2" parameterSource="id_proveedor" parameterType="Session" variable="id_proveedor"/>
						<SQLParameter id="512" dataType="Text" designDefaultValue="CDS" parameterSource="capc_cds" parameterType="Session" variable="capc_cds"/>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="355" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="s_id_periodo" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" wizardEmptyCaption="Seleccionar Valor" PathID="l_calificacion_incidentes1s_id_periodo" connection="con_xls" dataSource="select distinct id_periodo,  periodo+tipo_periodo as periodo
from periodos_hist
where (id_proveedor=0 or id_proveedor={s_id_proveedor} or {s_id_proveedor} =1)" boundColumn="id_periodo" textColumn="periodo">
					<Components/>
					<Events>
						<Event name="BeforeExecuteSelect" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="520"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="521" dataType="Integer" defaultValue="0" designDefaultValue="1" parameterSource="id_proveedor" parameterType="Session" variable="s_id_proveedor"/>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="356" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="s_opt_slas" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" wizardEmptyCaption="Seleccionar Valor" PathID="l_calificacion_incidentes1s_opt_slas" dataSource="SLA;SLA;SLO;SLO">
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
				<Label id="515" fieldSourceType="DBColumn" dataType="Date" html="True" generateSpan="False" name="lb_periodo_fecha_carga2" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_incidentes1lb_periodo_fecha_carga2" format="dd/mm/yyyy hh:mm" DBFormat="yyyy-mm-dd HH:nn:ss.S">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="516" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lb_nom_periodo" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_incidentes1lb_nom_periodo">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="518" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Label1" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_incidentes1Label1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
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
		<Grid id="382" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" name="l_calificacion_incidentes" connection="con_xls" dataSource="SELECT a.* 
FROM l_calificacion_incidentes_AUT a
WHERE a.id_proveedor = {s_id_proveedor}
AND a.id_periodo = {s_id_periodo}
AND a.tipo_nivel_servicio = '{s_opt_slas}' 
AND a.estatus='F'
and  a.num_carga=(
SELECT max(b.num_carga)
FROM l_calificacion_incidentes_AUT b
WHERE b.id_proveedor = {s_id_proveedor}
AND b.id_periodo = {s_id_periodo} 
AND b.tipo_nivel_servicio = '{s_opt_slas}' 
AND b.estatus='F'
)
ORDER BY a.contador" pageSizeLimit="100" pageSize="True" wizardCaption="Lista de calificacion de Incidentes" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="l_calificacion_incidentes" wizardThemeVersion="3.0">
			<Components>
				<Label id="384" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="l_calificacion_incidentes_TotalRecords" wizardUseTemplateBlock="False" PathID="l_calificacion_incidentesl_calificacion_incidentes_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="385"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="386" visible="True" name="Sorter_contador" column="contador" wizardCaption="Contador" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="contador" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_contador" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="387" visible="True" name="Sorter_id_incidencia" column="id_incidencia" wizardCaption="Id Incidencia" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="id_incidencia" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_id_incidencia" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="388" visible="True" name="Sorter_servicio_de_negocio" column="servicio_de_negocio" wizardCaption="Servicio De Negocio" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="servicio_de_negocio" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_servicio_de_negocio" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="389" visible="True" name="Sorter_nombre_del_producto" column="nombre_del_producto" wizardCaption="Nombre Del Producto" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="nombre_del_producto" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_nombre_del_producto" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="390" visible="True" name="Sorter_severidad" column="severidad" wizardCaption="Severidad" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="severidad" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_severidad" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="391" visible="True" name="Sorter_Cumple_Inc_TiempoAsignacion" column="Cumple_Inc_TiempoAsignacion" wizardCaption="Cumple Inc Tiempo Asignacion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="Cumple_Inc_TiempoAsignacion" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_Cumple_Inc_TiempoAsignacion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="392" visible="True" name="Sorter_Cumple_Inc_TiempoSolucion" column="Cumple_Inc_TiempoSolucion" wizardCaption="Cumple Inc Tiempo Solucion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="Cumple_Inc_TiempoSolucion" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_Cumple_Inc_TiempoSolucion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="393" visible="True" name="Sorter_Obs_Proceso" column="Obs_Proceso" wizardCaption="Obs Proceso" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="Obs_Proceso" wizardAddNbsp="False" PathID="l_calificacion_incidentesSorter_Obs_Proceso" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="396" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="contador" fieldSource="contador" wizardCaption="Contador" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_calificacion_incidentescontador" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="397" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="id_incidencia" fieldSource="id_incidencia" wizardCaption="Id Incidencia" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_incidentesid_incidencia" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="398" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="servicio_de_negocio" fieldSource="servicio_de_negocio" wizardCaption="Servicio De Negocio" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_incidentesservicio_de_negocio" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="399" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="nombre_del_producto" fieldSource="nombre_del_producto" wizardCaption="Nombre Del Producto" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_incidentesnombre_del_producto" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="400" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="severidad" fieldSource="severidad" wizardCaption="Severidad" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="l_calificacion_incidentesseveridad" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="401" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Cumple_Inc_TiempoAsignacion" fieldSource="Cumple_Inc_TiempoAsignacion" wizardCaption="Cumple Inc Tiempo Asignacion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_incidentesCumple_Inc_TiempoAsignacion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="402" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Cumple_Inc_TiempoSolucion" fieldSource="Cumple_Inc_TiempoSolucion" wizardCaption="Cumple Inc Tiempo Solucion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_incidentesCumple_Inc_TiempoSolucion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="403" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Obs_Proceso" fieldSource="Obs_Proceso" wizardCaption="Obs Proceso" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="l_calificacion_incidentesObs_Proceso" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="406" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="435" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_Cumple_In_TiempoAsignacion" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_incidenteslb_Cumple_In_TiempoAsignacion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="436" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_Cumple_Inc_TiempoSolucion" wizardTheme="Austere4" wizardThemeType="File" wizardThemeVersion="3.0" PathID="l_calificacion_incidenteslb_Cumple_Inc_TiempoSolucion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="407"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="471" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="472" dataType="Integer" defaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="473" dataType="Text" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Grid id="440" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="20" name="resumen" connection="con_xls" dataSource="SELECT * 
FROM resumen
WHERE id_proveedor = {s_id_proveedor}
AND id_periodo = {s_id_periodo}
AND tipo_nivel_servicio = '{s_opt_slas}' 
and   fecha_visible&lt;=getDATE()
" pageSizeLimit="100" pageSize="True" wizardCaption=" Resumen de Carga de Archivos" wizardTheme="Austere4" wizardThemeApplyTo="Component" wizardGridType="Tabular" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Controls" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="resumen" wizardThemeVersion="3.0">
			<Components>
				<Label id="442" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="resumen_TotalRecords" wizardUseTemplateBlock="False" PathID="resumenresumen_TotalRecords" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="443"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="444" visible="True" name="Sorter_Medicion" column="Medicion" wizardCaption="Medicion" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="Medicion" wizardAddNbsp="False" PathID="resumenSorter_Medicion" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="445" visible="True" name="Sorter_Total" column="Total" wizardCaption="Total" wizardTheme="Austere4" wizardSortingType="Extended" wizardControl="Total" wizardAddNbsp="False" PathID="resumenSorter_Total" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="446" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Medicion" fieldSource="Medicion" wizardCaption="Medicion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="resumenMedicion" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="447" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="Total" fieldSource="Total" wizardCaption="Total" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False" PathID="resumenTotal" wizardTheme="Austere4" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="448" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardTheme="Austere4" wizardImagesScheme="Austere4" wizardThemeVersion="3.0">
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
				<SQLParameter id="531" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" designDefaultValue="2" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="532" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="533" dataType="Text" defaultValue="''" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Label id="514" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lb_periodo_fecha_carga" PathID="lb_periodo_fecha_carga">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="15" name="Grid1" connection="con_xls" dataSource="select  sc.descripcion,
	 sum(case when herr_est_cost='1' or herr_est_cost='0' then 1 else 0 end) totherr_est_cost, 
		sum(case when isnumeric(herr_est_cost)=1 then cast(herr_est_cost as int) else 0 end) cumplenherr_est_cost, 
		case when sum(case when herr_est_cost='1' or herr_est_cost='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(herr_est_cost)=1 then cast(herr_est_cost as int) else 0 end)/cast((sum(case when herr_est_cost='1' or herr_est_cost='0' then 1 else 0 end)) as float)*100 
		else 0 end herr_est_cost,	 
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='herr_est_cost') as meta_herr_est_cost,
	 
	 sum(case when req_serv='1' or req_serv='0' then 1 else 0 end) totreq_serv, 
		sum(case when isnumeric(req_serv)=1 then cast(req_serv as int) else 0 end) cumplenreq_serv, 
		case when sum(case when req_serv='1' or req_serv='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(req_serv)=1 then cast(req_serv as int) else 0 end)/cast((sum(case when req_serv='1' or req_serv='0' then 1 else 0 end)) as float)*100 
		else 0 end req_serv,	 
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='req_serv') as meta_req_serv,
	 
	 sum(case when cumpl_req_func='1' or cumpl_req_func='0' then 1 else 0 end) totcumpl_req_func, 
		sum(case when isnumeric(cumpl_req_func)=1 then cast(cumpl_req_func as int) else 0 end) cumplencumpl_req_func, 
		case when sum(case when cumpl_req_func='1' or cumpl_req_func='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(cumpl_req_func)=1 then cast(cumpl_req_func as int) else 0 end)/cast((sum(case when cumpl_req_func='1' or cumpl_req_func='0' then 1 else 0 end)) as float)*100 
		else 0 end cumpl_req_func ,
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='cumpl_req_func') as meta_cumpl_req_func,
	 
	 
	 sum(case when calidad_prod_term='1' or calidad_prod_term='0' then 1 else 0 end) totcalidad_prod_term, 
		sum(case when isnumeric(calidad_prod_term)=1 then cast(calidad_prod_term as int) else 0 end) cumplencalidad_prod_term, 
		case when sum(case when calidad_prod_term='1' or calidad_prod_term='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(calidad_prod_term)=1 then cast(calidad_prod_term as int) else 0 end)/
		 cast(	(sum(case when calidad_prod_term='1' or calidad_prod_term='0' then 1 else 0 end))AS float)*100 
		else 0 end calidad_prod_term,
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='calidad_prod_term') as meta_calidad_prod_term,
	
	
	 sum(case when retr_entregable='1' or retr_entregable='0' then 1 else 0 end) totretr_entregable, 
		sum(case when isnumeric(retr_entregable)=1 then cast(retr_entregable as int) else 0 end) cumplenretr_entregable, 
		case when sum(case when retr_entregable='1' or retr_entregable='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(retr_entregable)=1 then cast(retr_entregable as int) else 0 end)/cast((sum(case when retr_entregable='1' or retr_entregable='0' then 1 else 0 end)) as float)*100 
		else 0 end retr_entregable,	 
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='retr_entregable') as meta_retr_entregable,
	 
	 sum(case when calidad_codigo='1' or calidad_codigo='0' then 1 else 0 end) totcal_cod, 
		sum(case when isnumeric(calidad_codigo)=1 then cast(calidad_codigo  as int) else 0 end) cumplencal_cod, 
		case when sum(case when calidad_codigo='1' or calidad_codigo='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(calidad_codigo)=1 then cast(calidad_codigo  as int) else 0 end)/cast((sum(case when calidad_codigo='1' or calidad_codigo='0' then 1 else 0 end)) as float)*100 
		else 0 end cal_cod,	 
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='cal_cod') as meta_cal_cod,
	 
	 sum(case when def_fug_amb_prod='1' or def_fug_amb_prod='0' then 1 else 0 end) totdef_fug_amb_prod, 
		sum(case when isnumeric(def_fug_amb_prod)=1 then cast(def_fug_amb_prod as int) else 0 end) cumplendef_fug_amb_prod, 
		case when sum(case when def_fug_amb_prod='1' or def_fug_amb_prod='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(def_fug_amb_prod)=1 then cast(def_fug_amb_prod as int) else 0 end)/cast((sum(case when def_fug_amb_prod='1' or def_fug_amb_prod='0' then 1 else 0 end)) as float)*100  
		else 0 end def_fug_amb_prod,	 
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='def_fug_amb_prod') as meta_def_fug_amb_prod,
	 
	 sum(case when cumple_inc_tiempoasignacion='1' or cumple_inc_tiempoasignacion='0' then 1 else 0 end)  totinc_tiempoasignacion, 
		sum(case when isnumeric(cumple_inc_tiempoasignacion)=1 then cast(cumple_inc_tiempoasignacion as int) else 0 end) cumpleninc_tiempoasignacion, 
		case when sum(case when cumple_inc_tiempoasignacion='1' or cumple_inc_tiempoasignacion='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(cumple_inc_tiempoasignacion)=1 then cast(cumple_inc_tiempoasignacion as int) else 0 end)/cast((sum(case when cumple_inc_tiempoasignacion='1' or cumple_inc_tiempoasignacion='0' then 1 else 0 end)) as float)*100 
		else 0 end inc_tiempoasignacion,
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='inc_tiempoasignacion') as meta_inc_tiempoasignacion,
	
	 sum(case when cumple_inc_tiemposolucion='1' or cumple_inc_tiemposolucion='0' then 1 else 0 end) totinc_tiemposolucion, 
		sum(case when isnumeric(cumple_inc_tiempoSolucion)=1 then cast(cumple_inc_tiempoSolucion as int) else 0 end) cumpleninc_tiemposolucion, 
		case when sum(case when cumple_inc_tiemposolucion='1' or cumple_inc_tiemposolucion='0' then 1 else 0 end)&gt;0 then 
			sum(case when isnumeric(cumple_inc_tiempoSolucion)=1 then cast(cumple_inc_tiempoSolucion as int) else 0 end)/cast((sum(case when cumple_inc_tiemposolucion='1' or cumple_inc_tiemposolucion='0' then 1 else 0 end)) as float)*100 
		else 0 end inc_tiemposolucion,	 
	 (select meta from [archivosxls].[dbo].mc_c_metrica where acronimo='inc_tiemposolucion') as meta_inc_tiemposolucion,
	 	
	 	 AVG(Cumple_EF) cumplenefic_presup, AVG(total_ef) totefic_presup, avg(cast(Cumple_EF as float))/avg(total_ef)*100  efic_presup,
	 (Select Meta from [archivosxls].[dbo].mc_c_metrica where acronimo='EFIC_PRESUP') as meta_efic_presup
from [archivosxls].[dbo].mc_c_ServContractual sc 
left join (select * from [archivosxls].[dbo].l_calificacion_rs_aut m
	where m.id_periodo= {s_id_periodo}    and m.id_proveedor ={s_id_proveedor} and m.tipo_nivel_servicio ='{s_opt_slas}' and m.estatus ='F' 
	and num_carga=(
       select max(b.num_carga)
       from [archivosxls].[dbo].l_calificacion_rs_aut  b
       where b.id_proveedor = {s_id_proveedor} 
       and b.id_periodo =  {s_id_periodo} 
       and b.tipo_nivel_servicio = '{s_opt_slas}' 
       and b.estatus='F'
       )) m on sc.Descripcion  = m.servicio_cont  
	 left join	(select cumple_inc_tiempoasignacion, cumple_inc_tiempoSolucion, 
				id_proveedor, 'Servicio de Soporte de Aplicaciones'  servicio_cont
				from [archivosxls].[dbo].l_calificacion_incidentes_AUT
				where (id_periodo= {s_id_periodo}   and id_proveedor = {s_id_proveedor}  and tipo_nivel_servicio ='{s_opt_slas}'   and estatus ='F'
				and num_carga=(select max(b.num_carga) from [archivosxls].[dbo].l_calificacion_incidentes_aut b 
				where b.id_proveedor = {s_id_proveedor}  and b.id_periodo =   {s_id_periodo}  and b.tipo_nivel_servicio = '{s_opt_slas}'  and b.estatus='F' ) 
				) )  mi on  mi.servicio_cont = sc.Descripcion 
	left join (select SUM(case when efic_presupuestal='1' then 1 else 0 end) Cumple_EF, COUNT(efic_presupuestal) Total_EF, Id_Proveedor,  2 IdServicioCont  
			from [archivosxls].[dbo].l_detalle_eficiencia_presupuestal 
			where (id_periodo=  {s_id_periodo}   and id_proveedor = {s_id_proveedor}  and tipo_nivel_servicio ='{s_opt_slas}'   and estatus ='F'
				and num_carga=(select max(b.num_carga) from [archivosxls].[dbo].l_calificacion_incidentes_aut b 
				where b.id_proveedor = {s_id_proveedor}  and b.id_periodo = {s_id_periodo}  and b.tipo_nivel_servicio = '{s_opt_slas}'  and b.estatus='F' ) 
				) group by id_proveedor ) ef on ef.IdServicioCont = sc.id
where sc.Aplica ='CDS' and IdOld &lt;&gt;0
group by sc.Descripcion" pageSizeLimit="100" pageSize="True" wizardCaption="Resumen de Niveles de Servicio" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No hay registros" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="Grid1">
			<Components>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="descripcion" fieldSource="descripcion" wizardCaption="Descripcion" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1descripcion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplenherr_est_cost" fieldSource="cumplenherr_est_cost" wizardCaption="Cumplenherr Est Cost" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplenherr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplenreq_serv" fieldSource="cumplenreq_serv" wizardCaption="Cumplenreq Serv" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplenreq_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="42" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplencumpl_req_func" fieldSource="cumplencumpl_req_func" wizardCaption="Cumplencumpl Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplencumpl_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="46" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplencalidad_prod_term" fieldSource="cumplencalidad_prod_term" wizardCaption="Cumplencalidad Prod Term" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplencalidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplenretr_entregable" fieldSource="cumplenretr_entregable" wizardCaption="Cumplenretr Entregable" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplenretr_entregable">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="54" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplencal_cod" fieldSource="cumplencal_cod" wizardCaption="Cumplencal Cod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplencal_cod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="58" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplendef_fug_amb_prod" fieldSource="cumplendef_fug_amb_prod" wizardCaption="Cumplendef Fug Amb Prod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumplendef_fug_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="61" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="Inicio" wizardPrev="True" wizardPrevText="Anterior" wizardNext="True" wizardNextText="Siguiente" wizardLast="True" wizardLastText="Final" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="de" wizardPageSize="True" wizardImagesScheme="{ccs_style}">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="33" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totherr_est_cost" fieldSource="totherr_est_cost" wizardCaption="Totherr Est Cost" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totherr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="herr_est_cost" fieldSource="herr_est_cost" wizardCaption="Herr Est Cost" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1herr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="36" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_herr_est_cost" fieldSource="meta_herr_est_cost" wizardCaption="Meta Herr Est Cost" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_herr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="37" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totreq_serv" fieldSource="totreq_serv" wizardCaption="Totreq Serv" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totreq_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="req_serv" fieldSource="req_serv" wizardCaption="Req Serv" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1req_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="40" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_req_serv" fieldSource="meta_req_serv" wizardCaption="Meta Req Serv" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_req_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="41" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totcumpl_req_func" fieldSource="totcumpl_req_func" wizardCaption="Totcumpl Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totcumpl_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="cumpl_req_func" fieldSource="cumpl_req_func" wizardCaption="Cumpl Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cumpl_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="44" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_cumpl_req_func" fieldSource="meta_cumpl_req_func" wizardCaption="Meta Cumpl Req Func" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_cumpl_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="45" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totcalidad_prod_term" fieldSource="totcalidad_prod_term" wizardCaption="Totcalidad Prod Term" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totcalidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="calidad_prod_term" fieldSource="calidad_prod_term" wizardCaption="Calidad Prod Term" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1calidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="48" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_calidad_prod_term" fieldSource="meta_calidad_prod_term" wizardCaption="Meta Calidad Prod Term" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_calidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="49" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totretr_entregable" fieldSource="totretr_entregable" wizardCaption="Totretr Entregable" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totretr_entregable">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="retr_entregable" fieldSource="retr_entregable" wizardCaption="Retr Entregable" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1retr_entregable">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="52" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_retr_entregable" fieldSource="meta_retr_entregable" wizardCaption="Meta Retr Entregable" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_retr_entregable">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="53" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totcal_cod" fieldSource="totcal_cod" wizardCaption="Totcal Cod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totcal_cod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="55" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="cal_cod" fieldSource="cal_cod" wizardCaption="Cal Cod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1cal_cod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="523" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_cal_cod" fieldSource="meta_cal_cod" wizardCaption="Meta Cal Cod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_cal_cod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="57" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totdef_fug_amb_prod" fieldSource="totdef_fug_amb_prod" wizardCaption="Totdef Fug Amb Prod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1totdef_fug_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="59" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="def_fug_amb_prod" fieldSource="def_fug_amb_prod" wizardCaption="Def Fug Amb Prod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid1def_fug_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="60" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="meta_def_fug_amb_prod" fieldSource="meta_def_fug_amb_prod" wizardCaption="Meta Def Fug Amb Prod" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1meta_def_fug_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Image id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgherr_est_cost" PathID="Grid1imgherr_est_cost">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgreq_serv" PathID="Grid1imgreq_serv">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgcumpl_req_func" PathID="Grid1imgcumpl_req_func">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgcalidad_prod_term" PathID="Grid1imgcalidad_prod_term">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="66" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgretr_entregable" PathID="Grid1imgretr_entregable">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgcal_cod" PathID="Grid1imgcal_cod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgdef_fug_amb_prod" PathID="Grid1imgdef_fug_amb_prod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="70" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumpleninc_tiempoasignacion" PathID="Grid1cumpleninc_tiempoasignacion" fieldSource="cumpleninc_tiempoasignacion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="71" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totinc_tiempoasignacion" PathID="Grid1totinc_tiempoasignacion" fieldSource="totinc_tiempoasignacion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="72" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="inc_tiempoasignacion" PathID="Grid1inc_tiempoasignacion" fieldSource="inc_tiempoasignacion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="73" fieldSourceType="DBColumn" dataType="Integer" name="meta_inc_tiempoasignacion" PathID="Grid1meta_inc_tiempoasignacion" fieldSource="meta_inc_tiempoasignacion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="74" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumpleninc_tiemposolucion" PathID="Grid1cumpleninc_tiemposolucion" fieldSource="cumpleninc_tiemposolucion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="75" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totinc_tiemposolucion" PathID="Grid1totinc_tiemposolucion" fieldSource="totinc_tiemposolucion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="76" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="inc_tiemposolucion" PathID="Grid1inc_tiemposolucion" fieldSource="inc_tiemposolucion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="77" fieldSourceType="DBColumn" dataType="Integer" name="meta_inc_tiemposolucion" PathID="Grid1meta_inc_tiemposolucion" fieldSource="meta_inc_tiemposolucion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Image id="78" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imginc_tiempoasignacion" PathID="Grid1imginc_tiempoasignacion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="79" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imginc_tiemposolucion" PathID="Grid1imginc_tiemposolucion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Image id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="imgefic_presup" PathID="Grid1imgefic_presup">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="81" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="cumplenefic_presup" PathID="Grid1cumplenefic_presup" fieldSource="cumplenefic_presup">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="82" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="totefic_presup" PathID="Grid1totefic_presup" fieldSource="totefic_presup">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="83" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="efic_presup" PathID="Grid1efic_presup" fieldSource="efic_presup">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="84" fieldSourceType="DBColumn" dataType="Text" name="meta_efic_presup" PathID="Grid1meta_efic_presup" fieldSource="meta_efic_presup">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="69" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="539" dataType="Integer" defaultValue="CCGetSession(&quot;id_proveedor&quot;)" designDefaultValue="0" parameterSource="s_id_proveedor" parameterType="URL" variable="s_id_proveedor"/>
				<SQLParameter id="540" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="s_id_periodo" parameterType="URL" variable="s_id_periodo"/>
				<SQLParameter id="541" dataType="Text" parameterSource="s_opt_slas" parameterType="URL" variable="s_opt_slas"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Label id="530" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lb_efic_presup" PathID="lb_efic_presup">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Button id="537" urlType="Relative" enableValidation="False" isDefault="False" name="Imprimir" PathID="Imprimir">
			<Components/>
			<Events>
				<Event name="OnClick" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="538"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Button>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="historico_cargas_rs2_events.php" forShow="False" comment="//" codePage="windows-1252"/>
		<CodeFile id="Code" language="PHPTemplates" name="historico_cargas_rs2.php" forShow="True" url="historico_cargas_rs2.php" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="469"/>
			</Actions>
		</Event>
	</Events>
</Page>
