USE viajes_claros;


-- MySQL dump 10.13  Distrib 5.5.46, for Linux (x86_64)
--
-- Host: localhost    Database: viajes_claros
-- ------------------------------------------------------
-- Server version	5.5.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `campos_base`
--

LOCK TABLES `campos_base` WRITE;
/*!40000 ALTER TABLE `campos_base` DISABLE KEYS */;
INSERT INTO `campos_base` VALUES ('areas','id_area',1,'Área de Adscripción','Área de Adscripción',0,2,'funcionario'),('areas','nombre_area',2,'Área de Adscripción','Área de Adscripción',0,2,'funcionario'),('categoria','nombre_categoria',2,'Categoría','Categoría',0,2,NULL),('ciudades','ciudad_destino',2,'ciudad destino','Ciudad de Destino',NULL,2,'tipo_viaje'),('ciudades','ciudad_origen',2,'ciudad origen','Ciudad de Origen',NULL,2,'tipo_viaje'),('ciudades','nombre_ciudad',2,'Ciudad','Ciudad',0,2,NULL),('dependencias','nombre_dependencia',2,'Dependencia','Dependencia',0,2,NULL),('dependencias','siglas',2,'Siglas','Siglas',1,2,NULL),('estados','estado_destino',2,'estado destino','Estado de Destino',NULL,2,'tipo_viaje'),('estados','estado_origen',2,'estado origen','Estado de Origen',NULL,2,'tipo_viaje'),('estados','nombre_estado',2,'Estado','Estado',0,1,NULL),('paises','clave_pais',2,'País','País',0,1,NULL),('paises','nombre_pais',2,'Nombre Pa','Nombre Pa',0,1,NULL),('paises','pais_destino',2,'pais destino','País de Destino',NULL,2,'tipo_viaje'),('paises','pais_origen',2,'pais de origen','País de Origen',NULL,2,'tipo_viaje'),('personas','apellido_materno',2,'Apellido Materno','Apellido Materno',1,1,'funcionario'),('personas','apellido_paterno',2,'Apellido Paterno','Apellido Paterno',1,1,'funcionario'),('personas','cargo',2,'Cargo','Cargo',0,1,'funcionario'),('personas','email',2,'Correo','Correo',0,1,'funcionario'),('personas','fecha_ingreso',3,'Fecha de ingreso a ls institución','Fecha de ingreso',NULL,3,'funcionario'),('personas','nombres',2,'Nombre(s)','Nombre(s)',1,1,'funcionario'),('tipo_persona','descripcion',2,'Tipo Persona','Tipo Persona',0,1,NULL);
/*!40000 ALTER TABLE `campos_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `campos_dinamicos`
--

LOCK TABLES `campos_dinamicos` WRITE;
/*!40000 ALTER TABLE `campos_dinamicos` DISABLE KEYS */;
INSERT INTO `campos_dinamicos` VALUES ('aerolinea_ida',2,78,'Aerolínea del vuelo de  ida','Aerolínea de salida',0,2,'tipo_viaje'),('aerolinea_regreso',2,78,'Aerolínea del vuelo de regreso','Aerolínea de regreso',0,2,'tipo_viaje'),('antecedentes_comision',2,NULL,'Antecedentes de la comisión','Antecedentes',0,1,'comision'),('area_funcionario',2,NULL,'Área de Adscripción','Área de Adscripción',0,1,'funcionario'),('boleto_ida',2,NULL,'Número de boleto ida','Número de boleto ida',0,1,'tipo_viaje'),('boleto_vuelta',2,NULL,'Número de boleto vuelta','Número de boleto vuelta',0,1,'tipo_viaje'),('cargos_servicio_ida',1,NULL,'Cargos Por Servicio Ida','Cargos Por Servicio Ida',0,1,'comision'),('cargos_servicio_vuelta',1,NULL,'Cargos Por Servicio Vuelta','Cargos Por Servicio Vuelta',0,1,'comision'),('cargo_funcionario',2,NULL,'Cargo del funcionario (datos histórico)','Cargo',0,1,'funcionario'),('ciudad_destino_',2,NULL,'Ciudad destino','Ciudad destino',0,1,'tipo_viaje'),('ciudad_origen_',2,NULL,'Ciudad origen','Ciudad origen',0,1,'tipo_viaje'),('comparador',1,3,'Comparador','Comparador',0,2,'comision'),('comprobante_gasto',2,28,'Comprobante del Gasto','Comprobante del Gasto',0,2,NULL),('concepto_gasto',2,26,'Concepto','Concepto',0,2,NULL),('costo_boleto_ida',1,NULL,'Costo Boleto Ida','Costo Boleto Ida',0,1,'comision'),('costo_boleto_vuelta',1,NULL,'Costo del Boleto de Vuelta','Costo del Boleto de Vuelta',0,1,'comision'),('costo_cambio_ida',1,NULL,'Costo Generado por Cambio ida','Costo Generado por Cambio ida',0,1,'comision'),('costo_cambio_vuelta',1,NULL,'Costo Generado por Cambio vuelta','Costo Generado por Cambio vuelta',0,1,'comision'),('costo_total',1,NULL,'Costo total de la comisión','Costo total de la comisión (MXN)',0,1,'viaticos'),('costo_total_hospedaje',1,NULL,'Costo total del hospedaje','Costo total hospedaje',0,1,'viaticos'),('costo_viaticos',1,NULL,'Costo total de viáticos','Costo total de viáticos',0,1,'viaticos'),('cuenta_por_pagar',2,NULL,'Cuenta por Pagar','Cuenta por Pagar',0,1,'comision'),('desc_comision',2,NULL,'Descripción Comisión','Descripción',0,1,'comision'),('EDCA_fecha_actualizacion',3,NULL,'Área(s) o unidad(es) administrativa(s) que genera(n) o posee(n) la información respectiva y son responsables de publicarla y actualizarla ','Fecha de actualización',0,3,'informe_comision'),('EDCO_actividades_realizadas',2,NULL,'Breve descripción de las actividades realizadas por el servidor público en la comisión, contemplando el programa y su agenda de trabajo.','Actividades realizadas',0,1,'informe_comision'),('EDCO_area_adscripcion',2,45,'Área de adscripción o unidad administrativa (de acuerdo con el catálogo de unidades administrativas o puestos si así corresponde).','Área de adscripción',0,2,'funcionario'),('EDCO_ciudad_de_destino',2,85,'Ciudad donde se realizará la comisión.','Ciudad donde se realizará la comisión.',0,2,'tipo_viaje'),('EDCO_ciudad_de_origen',2,88,'Ciudad donde inicia la comisión.','Ciudad de origen.',0,2,'tipo_viaje'),('EDCO_clave_de_partida',2,43,'Clave de la partida de cada uno de los conceptos correspondientes, con base en el Clasificador por Objeto del Gasto o Clasificador Contable que aplique.','Número de partida',0,2,'comision'),('EDCO_conclusiones',2,NULL,'Breve descripción de las conclusiones que produjo la comisión.','Conclusiones',0,1,'informe_comision'),('EDCO_contribuciones',2,NULL,'Breve descripción de las contribuciones que la comisión y la participación del servidor público  generan al sujeto obligado.','Contribuciones',0,1,'informe_comision'),('EDCO_denominacion_del_cargo',2,40,'Denominación del cargo del servidor público que es enviado a comisión.','Denominación del cargo',0,2,'funcionario'),('EDCO_denominacion_del_puesto',2,39,'Clave o nivel del puesto del servidor público que es enviado a comisión.','Denominación del puesto',0,2,'funcionario'),('EDCO_denominacion_de_comision',2,NULL,'Indica el nombre del  encargo o comisión','Denominación del encargo o  comisión',0,1,'comision'),('EDCO_denominacion_de_partida',2,44,'Denominación de la partida de cada uno de los conceptos correspondientes, los cuales deberán ser armónicos con el Clasificador por Objeto del Gasto o Clasificador Contable que aplique. ','Denominación de la partida',0,2,'informe_comision'),('EDCO_ejercicio',1,NULL,'Es el periodo comprendido entre el 1° de enero y el 31 de diciembre de cada año.','Ejercicio',0,1,'comision'),('EDCO_estado_de_destino',2,84,'Estado donde se realizará la comisión.','Estado de destino',0,2,'tipo_viaje'),('EDCO_estado_de_origen',2,87,'Estado donde inicia la comisión.','Estado de orígen',0,2,'tipo_viaje'),('EDCO_fecha_informe',3,NULL,'Fecha de entrega del informe de la comisión o encargo encomendado, con el formato: día / mes / año','Fecha de entrega del informe',0,3,'informe_comision'),('EDCO_fecha_validacion',3,NULL,'Fecha de validación de la información publicada.','Fecha de validación',0,3,'informe_comision'),('EDCO_hipervinculo_facturas',2,NULL,'Hipervinculo a las facturas o comprobantes que soporten las erogaciones realizadas','Facturas',0,1,'viaticos'),('EDCO_hipervinculo_informe',2,NULL,'Hipervínculo al informe de la comisión o encargo','Hipervínculo al informe ',0,1,'informe_comision'),('EDCO_importe_acompaniantes',1,NULL,'Importe ejercido por el total de acompañantes del servidor público que es enviado a comisión.','Importe ejercido por el total de acompañantes',0,1,'viaticos'),('EDCO_importe_no_erogado',1,NULL,'Importe total de viáticos no erogados, derivados del encargo o comisión.','Importe no erogado',0,1,'viaticos'),('EDCO_importe_por_partida',1,NULL,'Importe ejercido erogado por concepto de viáticos.','Importe ejercido por parida',0,1,'viaticos'),('EDCO_importe_total_com',1,NULL,'Importe total de la comisión','Importe total erogado ',0,1,'viaticos'),('EDCO_motivo_encargo',2,NULL,'Motivo del encargo o comisión','Motivo',0,1,'comision'),('EDCO_nivel_del_puesto',2,38,'Clave o nivel del puesto del servidor público que es enviado a comisión.','Nivel del puesto',0,2,'funcionario'),('EDCO_normatividad',2,NULL,'Hipervínculo a la normatividad que regula los gastos de viáticos.','Normatividad',0,1,'informe_comision'),('EDCO_numero_acompaniantes',1,NULL,'Número de personas acompañantes del encargo o comisión del trabajador.','Número de acompañantes',0,1,'viaticos'),('EDCO_pais_de_destino',2,83,'Destino del encargo o comisión (país, estado y ciudad)','País de destino',0,2,'tipo_viaje'),('EDCO_pais_de_origen',2,86,'País donde inicia la comisión.','País de orígen',0,2,'tipo_viaje'),('EDCO_periodo',2,36,'Trimestre del año que se reporta (enero - marzo, abril - junio, julio - septiembre, octubre - diciembre)','Periodo',0,2,'comision'),('EDCO_periodo_actualizacion',2,36,'Periodo de actualización de la información.','Periodo de actualización',0,2,'informe_comision'),('EDCO_resultados_obtenidos',2,NULL,'Breve descripción de los resultados derivados  de la comisión.','Resultados obtenidos',0,1,'informe_comision'),('EDCO_sexo',2,41,'Sexo del servidor público que es enviado a comisión.','Sexo',0,2,'funcionario'),('EDCO_tipo_de_miembro',2,37,'Toda persona que desempeñe un empleo, cargo o comisión en los sujetos obligados y/o ejerza actos de autoridad en ellos. (Ejemplo: base, confianza, honorarios, eventual, invitado, otro)','Tipo de miembro',0,2,'comision'),('EDCO_tipo_de_viaje',2,42,'Tipo de viaje (Nacional / Internacional)','Tipo de viaje',0,2,'tipo_viaje'),('EDCO_ua_responsable',2,NULL,'Área(s) o unidad(es) administrativa(s) que genera(n) o posee(n) la información respectiva y son responsables de publicarla y actualizarla.','Unidad Administrativa',0,1,'informe_comision'),('estado_destino_',2,NULL,'Estado de Destino','Estado',0,1,'comision'),('estado_origen_',2,NULL,'Estado de Origen','Estado de Origen',0,1,'comision'),('estatus_boleto_ida',2,35,'Estatus del Boleto de Ida','Estatus del Boleto de Ida',0,2,'comision'),('estatus_boleto_vuelta',2,35,'Estatus del Boleto Vuelta','Estatus del Boleto Vuelta',0,2,'comision'),('factura_ida',2,NULL,'Número de Factura Ida','Número de Factura Vuelta',0,1,'comision'),('factura_vuelta',2,NULL,'Número de Factura Ida','Número de Factura Ida',0,1,'comision'),('fecha_compra_ida',3,NULL,'Fecha de Compra Ida','Fecha de Compra Ida',0,3,'comision'),('fecha_compra_vuelta',3,NULL,'Fecha de Compra Vuelta','Fecha de Compra Vuelta',0,3,'comision'),('fecha_gasto',3,NULL,'Fecha','Fecha',0,3,NULL),('fecha_hora_regreso',3,NULL,'Fecha y Hora Regreso','Fecha y hora regreso',0,3,'comision'),('fecha_hora_salida',3,NULL,'Fecha y hora salida','Fecha y hora salida',0,3,'comision'),('fecha_regreso_comision',3,NULL,'Fecha de la Salida de la Comisión','Regreso',0,3,'comision'),('fecha_salida_comision',3,NULL,'Fecha de Salida de la Comisión','Salida',0,3,'comision'),('fecha_solicitud_cambio_ida',3,NULL,'Fecha de solicitud de cambio ida','Fecha de solicitud de cambio vuelta',0,3,'comision'),('fecha_solicitud_cambio_vuelta',3,NULL,'Fecha de solicitud de cambio vuelta','Fecha de solicitud de cambio vuelta',0,3,'comision'),('fecha_solicitud_comision',3,NULL,'Fecha de Solicitud de Comisión','Fecha de Solicitud',0,3,'comision'),('fecha_solicitud_viaticos',3,NULL,'Fecha Solicitud','Fecha Solicitud',0,3,'viaticos'),('folio_reintegro',2,NULL,'Folio Reintegro','Folio Reintegro',0,1,'comision'),('gasto_pasaje',1,NULL,'Gasto de Pasaje','Gasto de Pasaje',0,1,'comision'),('homologacion',2,22,'Homologación','Homologación',0,2,'comision'),('hora_regreso_comision',3,NULL,'Hora de Regreso de la Comisión','Hora',0,3,'comision'),('hora_salida_comision',3,NULL,'Hora de Salida de la Comisión','Hora',0,3,'comision'),('importe_gasto_pesos',1,NULL,'Importe del Gasto en Pesos','Importe del Gasto en Pesos',0,1,NULL),('importe_moneda_gasto',1,NULL,'Importe','Importe',0,1,NULL),('INAI_actividades_realizadas',2,NULL,'INAI_actividades_realizadas','Actividades realizadas',0,1,'informe_comision'),('INAI_aerolinea_ida',2,79,'Aerolínea de salida','Aerolínea de salida',0,2,'tipo_viaje'),('INAI_aerolinea_vuelta',2,79,'Aerolínea de vuelta','Aerolínea de vuelta',0,2,'tipo_viaje'),('INAI_area_adscripcion',2,50,'Nombre del área administrativa a la que pertenece el servidor público o funcionario.','Área de adscripción',0,2,'funcionario'),('INAI_boleto_ida',2,NULL,'Número de vuelo de salida','Número de vuelo de salida',0,1,'tipo_viaje'),('INAI_boleto_vuelta',2,NULL,'Número de vuelo de regreso','Número de vuelo de regreso',0,1,'tipo_viaje'),('INAI_cambio_vuelo',2,80,'Indica si se solicitó un cambio en el vuelo','Cambio vuelo de ida',0,2,'tipo_viaje'),('INAI_cambio_vuelo_vuelta',2,80,'Cambio de vuelo','Cambio de vuelo',0,2,'tipo_viaje'),('INAI_cargo_autoridador',2,NULL,'Cargo del servidor público que autorizó la comisión','Cargo',0,1,'comision'),('INAI_ciudad_destino',2,88,'Ciudad destino','Ciudad de destino',0,2,'tipo_viaje'),('INAI_ciudad_origen',2,88,'Ciudad de origen','Ciudad de origen',0,2,'tipo_viaje'),('INAI_clave_puesto',2,47,'Clave o nivel del puesto del servidor público que es enviado a comisión.','Clave del puesto',0,2,'funcionario'),('INAI_conclusiones',2,NULL,'INAI_conclusiones','Conclusiones',0,1,'informe_comision'),('INAI_contribuciones',2,NULL,'INAI_contribuciones','Contribuciones',0,1,'informe_comision'),('INAI_correo_sp',2,NULL,'Correo institucional del servidor público','Correo',0,1,'funcionario'),('INAI_costo_cambio',1,NULL,'Indica el costo del cambio del vuelo','Costo del cambio de ida',0,1,'tipo_viaje'),('INAI_costo_cambio_vuelta',1,NULL,'Costo del cambio de vuelo','Costo del cambio de vuelo',0,1,'tipo_viaje'),('INAI_costo_pasaje',1,NULL,'Costo total del vuelo','Costo total del vuelo',0,1,'tipo_viaje'),('INAI_cve_partida_pasaje',2,76,'Clave de parida destinada a pasaje','Clave departida pasaje',0,2,'tipo_viaje'),('INAI_cve_partida_viaticos',2,91,'Clave partida viáticos','Clave de partida viáticos',0,2,'viaticos'),('INAI_cve_partida_VP',2,91,'Clave de partida pasaje','Clave de partida de pasaje',0,2,'tipo_viaje'),('INAI_cve_programa_pre',2,63,'Indica la clave del programa presupuestal','Clave del programa presupuestal',0,2,'comision'),('INAI_cve_proyecto_estrategico',2,66,'Indica la clave del proyecto estratégico','Clave del proyecto estratégico',0,2,'comision'),('INAI_cve_ua',2,64,'Clave de la Unidad Administrativa','Clave de la Unidad Administrativa ',0,2,'comision'),('INAI_cve_ua_adscripcion',2,73,'Indica la clave del área de adscripción del servidor público','Clave de área de adscripción',0,2,'funcionario'),('INAI_cve_ua_presupuesto',2,74,'Clave de la unidad administrativa que provee el presupuesto','Clave de la unidad administrativa de presupuesto',0,2,'comision'),('INAI_denominacion_cargo',2,49,'Denominación del cargo del servidor público que es enviado a comisión.','Denominación del cargo',0,2,'funcionario'),('INAI_denominacion_de_comision',2,NULL,'Denominación de la comisión','Denominación del encargo o comisión',0,1,'comision'),('INAI_denominacion_partida_VP',2,92,'Nombre de partida','Denominación de la partida',0,2,'tipo_viaje'),('INAI_denominacion_puesto',2,48,'Denominación del puesto (Eje. \"Subdirector A\")','Denominación del puesto',0,2,'funcionario'),('INAI_denominacion_pviaticos',2,92,'Denominación partida','Denominación de la partida',0,2,'viaticos'),('INAI_dias_con_pernocta',1,NULL,'Número de días viaticados con pernocta','Días con pernocta',0,1,'viaticos'),('INAI_dias_sin_pernocta',1,NULL,'Número de días sin pernocta','Días sin pernocta',0,1,'viaticos'),('INAI_ejercicio',1,NULL,'Ejercicio','Ejercicio',0,1,'viaticos'),('INAI_estado_destino',2,87,'Estado de destino','Estado de destino',0,2,'tipo_viaje'),('INAI_estado_origen',2,87,'Estado de origen','Estado de origen',0,2,'tipo_viaje'),('INAI_estatus_comision',2,99,'Estatus de la comisión','Estatus de la comisión',0,2,'comision'),('INAI_estatus_sp',2,52,'Indica si el servidor público se encuentra activo o inactivo en la platilla laboral del Instituto.','Estatus del servidor',0,2,'funcionario'),('INAI_estatus_vuelo',2,81,'Indica el estatus del vuelo','Estatus del vuelo de ida',0,2,'tipo_viaje'),('INAI_estatus_vuelo_vuelta',2,81,'INAI_estatus_vuelo_vuelta','Estatus de vuelo',0,2,'tipo_viaje'),('INAI_fecha_actualizacion',3,NULL,'INAI_fecha_actualizacion','Fecha de actualización',0,3,'observaciones'),('INAI_fecha_compra_p_ida',3,NULL,'Fecha de vuelo de salida','Fecha de vuelo de salida',0,3,'tipo_viaje'),('INAI_fecha_compra_p_vuelta',3,NULL,'Fecha de vuelo de regreso','Fecha de vuelo de regreso',0,3,'tipo_viaje'),('INAI_fecha_informe',3,NULL,'INAI_fecha_informe','Fecha de entrega de informe',0,3,'informe_comision'),('INAI_fecha_validacion',3,NULL,'INAI_fecha_validacion','Fecha de validación',0,3,'observaciones'),('INAI_gasto_autobus',1,NULL,'Gasto en autobus','Gasto en autobús',0,1,'tipo_viaje'),('INAI_gasto_gasolina',1,NULL,'Indica el gasto en gasolina','Gasto en gasolina',0,1,'tipo_viaje'),('INAI_gasto_peaje',1,NULL,'Gasto en peaje','Gasto en peaje',0,1,'tipo_viaje'),('INAI_gasto_total_pasaje',1,NULL,'Gasto total en pasajes','Gasto total en pasajes (MXN)',0,1,'tipo_viaje'),('INAI_hipervinculo_facturas',2,NULL,'INAI_hipervinculo_facturas','Hipervínculo a las facturas',0,1,'viaticos'),('INAI_hipervinculo_informe',2,NULL,'INAI_hipervinculo_informe','Hipervínculo al informe',0,1,'informe_comision'),('INAI_homologacion',2,56,'Indica si el servidor público solicitó homologación de viáticos','Homologación',0,2,'viaticos'),('INAI_importe_acompaniantes',1,NULL,'INAI_importe_acompaniantes','Importe ejercido por el total de acompañantes',0,1,'viaticos'),('INAI_importe_no_erogado',1,NULL,'INAI_importe_no_erogado','Importe no erogado',0,1,'viaticos'),('INAI_importe_partida',1,NULL,'INAI_importe_partida','Importe ejercido por partida de viáticos.',0,1,'viaticos'),('INAI_justificacion_homologacion',2,NULL,'Indica la justificación de la homologacion de viáticos','Justificación de la homologación',0,1,'viaticos'),('INAI_moneda',2,60,'Indica la moneda utilizada','Moneda',0,2,'viaticos'),('INAI_motivo_cambio',2,NULL,'Motivo del cambio en el vuelo','Motivo del cambio de ida',0,1,'tipo_viaje'),('INAI_motivo_cambio_vuelta',2,80,'Motivo del cambio','Motivo del cambio',0,2,'tipo_viaje'),('INAI_motivo_encargo',2,NULL,'Motivo del encargo de comisión','Motivo',0,1,'comision'),('INAI_nivel_homologacion',2,82,'Nivel de homologación','Nivel de homologación',0,2,'viaticos'),('INAI_nombre_autorizador',2,NULL,'Nombre del servidor público que autorizó la comisión.','Nombre ',0,1,'comision'),('INAI_normatividad',2,NULL,'INAI_normatividad','Normatividad',0,1,'informe_comision'),('INAI_numero_acompaniantes',1,NULL,'INAI_numero_acompaniantes','Número de acompañantes',0,1,'viaticos'),('INAI_numero_acuerdo',2,NULL,'Número de acuerdo del pleno para viajes internacionales','Número de acuerdo',0,1,'comision'),('INAI_numero_empleado',1,NULL,'Número de trabajador','Número de trabajador',0,1,'funcionario'),('INAI_numero_oficio',2,NULL,'Indica el número de oficio de autorización de la comisión.','Número de oficio',0,1,'comision'),('INAI_objetivo_especifico',2,NULL,'Indica el objetivo específico del encargo o comisión','Objetivo específico',0,1,'informe_comision'),('INAI_objetivo_estrategico',2,67,'Objetivo estratégico','Objetivo estratégico',0,2,'informe_comision'),('INAI_observaciones',2,NULL,'Observaciones de la comisión','Observaciones',0,1,'observaciones'),('INAI_organizador_evento',2,NULL,'Indica el nombre del organizador del evento','Organizador del evento',0,1,'comision'),('INAI_pais_destino',2,86,'País de destino','País de destino',0,2,'tipo_viaje'),('INAI_pais_origen',2,86,'País de origen','País de origen',0,2,'tipo_viaje'),('INAI_partida_pasaje',2,77,'Denominación de la partida de pasaje','Denominación de la partida de pasaje',0,2,'tipo_viaje'),('INAI_periodo',2,96,'Periodo','Periodo reportado',0,2,'comision'),('INAI_periodo_actualizacion',2,96,'INAI_periodo_actualizacion','Periodo de actualización',0,2,'observaciones'),('INAI_periodo_reportado',2,93,'Periodo reportado','Periodo reportado',0,2,'comision'),('INAI_programa_presupuestal',2,61,'Indica el nombre del programa presupuestal','Programa presupuestal',0,2,'comision'),('INAI_proyecto_estrategico',2,62,'Indica el nombre del proyecto estratégico','Proyecto estratégico',0,2,'comision'),('INAI_p_apellido_autoridador',2,NULL,'Primer apellido del autorizador','Primer apellido',0,1,'comision'),('INAI_resultados_obtenidos',2,NULL,'INAI_resultados_obtenidos','Resultados obtenidos',0,1,'informe_comision'),('INAI_sexo',2,95,'Sexo del servidor público que es enviado a comisión.','Sexo',0,2,'funcionario'),('INAI_siglas',2,51,'Siglas de la unidad administrativa o área de adscripción','Siglas de la unidad administrativa',0,2,'funcionario'),('INAI_s_apellido_autoridador',2,NULL,'Segundo apellido del autorizador','Segundo apellido',0,1,'comision'),('INAI_tarifa_con_pernocta',2,89,'Tarifa con pernocta','Tarifa con pernocta',0,2,'viaticos'),('INAI_tarifa_sin_pernocta',2,90,'Tarifa sin pernocta','Tarifa sin pernocta',0,2,'viaticos'),('INAI_tarifa_viaticos',1,NULL,'Indica la tarifa correspondiente de viáticos','Tarifa correspondiente de viáticos',0,1,'viaticos'),('INAI_tema',2,68,'Indica el tema del encargo o comisión','Tema',0,2,'informe_comision'),('INAI_tipo_de_miembro',2,46,'Tipo de miembro del sujeto obligado ','Tipo de personal',0,2,'funcionario'),('INAI_tipo_de_pago',2,58,'Indica el tipo de pago utilizado','Tipo de pago',0,2,'viaticos'),('INAI_tipo_de_pasaje',2,54,'Indica el tipo de pasaje (aéreo, terrestre, ambos)','Tipo de pasaje',0,2,'tipo_viaje'),('INAI_tipo_de_pasaje_vuelta',2,54,'Tipo de pasaje de vuelta','Tipo de pasaje vuelta',0,2,'tipo_viaje'),('INAI_tipo_de_representacion',2,55,'Tipo de representación ','Tipo de representación',0,2,'funcionario'),('INAI_tipo_de_viaje',2,98,'INAI_tipo_de_viaje','Tipo de viaje',0,2,'tipo_viaje'),('INAI_tipo_de_zona',2,57,'Indica el tipo de zona a viaticar','Tipo de zona',0,2,'viaticos'),('INAI_tipo_participacion',2,70,'Indica el tipo de participación del servidor público en el evento o comisión','Tipo de participación',0,2,'informe_comision'),('INAI_ua_presupuesto',2,75,'Nombre de la unidad administrativa de donde se tomarán los recursos para el encargo o comisión.','Unidad administrativa de presupuesto',0,2,'comision'),('INAI_ua_responsable',2,NULL,'INAI_ua_responsable','Unidad(es) administrativa(s) responsable(s)',0,1,'observaciones'),('INAI_vinculo_evento',2,NULL,'Hipervinculo al evento, en caso de aplicar.','Hipervínculo del evento',0,1,'comision'),('INAI_vinculo_notas_inf',2,NULL,'Hipervínculo a notas informativas','Vinculo a notas informativas',0,1,'comision'),('informe_contribucion',2,NULL,'¿Cuáles fueron los logros?','Contribución',0,1,'informe_comision'),('informe_resultados',2,NULL,'Resultados obtenidos de la comisión','Resultados obtenidos',0,1,'informe_comision'),('moneda',2,23,'Moneda','Moneda',0,2,'comision'),('moneda_gasto',2,30,'Moneda','Moneda',0,2,NULL),('monto_anticipado_viaticos',2,NULL,'Monto Anticipado en Pesos','Monto Anticipado en Pesos',0,1,'comision'),('monto_con_pernocta',1,NULL,'Monto Con Pernocta','Monto',0,1,'comision'),('monto_letra',2,NULL,'Monto a Viaticar en Letra','Monto a Viaticar en Letra',0,1,'comision'),('monto_letra_gasto_pasaje',2,NULL,'Monto Gastos Pasaje en Letra','Monto Gastos Pasaje en Letra',0,1,'comision'),('monto_sin_pernocta',1,NULL,'Monto Sin Pernocta','Monto',0,1,'comision'),('motivo_comision',2,NULL,'Motivo de la comisión','Motivo de la comisión',0,1,'comision'),('nacionalidad',2,NULL,'Nacionalidad','Nacionalidad',0,1,'comision'),('nivel_homologacion',2,NULL,'Nivel Homologación','Nivel Homologación',0,1,'comision'),('nombre_evento',2,NULL,'Nombre del evento o actividad','Nombre del evento',0,1,'comision'),('nombre_hotel',2,NULL,'Nombre del hotel','Nombre del hotel',0,1,'viaticos'),('numero_documento_gasto',2,NULL,'Número de Documento','Número de Documento',0,1,NULL),('num_acuerdo',2,NULL,'Número de Acuerdo','Número de Acuerdo',0,1,'comision'),('num_dias_con_pernocta',1,NULL,'Número de Días con Pernocta','Num. Días Con Pernocta',0,1,'comision'),('num_dias_sin_pernocta',1,NULL,'Número de Días Sin Pernocta','Num. Días Sin Pernocta',0,1,'comision'),('num_vuelo',2,NULL,'Número de Vuelo','Número de Vuelo',0,1,'comision'),('num_vuelo_vuelta',2,NULL,'Número de Vuelo Regreso','Número de Vuelo Regreso',0,1,'comision'),('observaciones_gasto',2,NULL,'Observaciones','Observaciones',0,1,NULL),('observaciones_pasaje',2,NULL,'Observaciones','Observaciones',0,1,'comision'),('observaciones_viaticos',2,NULL,'Observaciones','Observaciones',0,1,'comision'),('operacion',2,NULL,'Operación','Operación',0,1,'comision'),('organizador',2,NULL,'Organizador del Evento','Organizador',0,1,'comision'),('pago_gasto',2,27,'Pago','Pago',0,2,NULL),('pago_viaticos',2,31,'Pago de Viáticos','Pago de Viáticos',0,2,'comision'),('pais_destino_',2,NULL,'País destino','País destino',0,1,'tipo_viaje'),('pais_origen_',2,NULL,'País origen','País origen',0,1,'tipo_viaje'),('partida',2,NULL,'Partida','Partida',0,1,'comision'),('partida_pasajes',2,NULL,'Partida','Partida',0,1,'comision'),('periodo',2,36,'Periodo que se reporta (trimestral)','Periodo',0,2,'comision'),('prueba',2,NULL,'prueba 1','prueba 1',0,1,'comision'),('reintegro_inai',1,NULL,'Reintegro a Cuenta del INAI','Reintegro a Cuenta del INAI',0,1,'comision'),('reintegro_pasaje',1,NULL,'Reintegro Pasaje','Reintegro Pasaje',0,1,'comision'),('reintegro_viaticos',1,NULL,'Reintegro Viáticos','Reintegro Viáticos',0,1,'comision'),('solicitud_cambio_ida',2,34,'Solicitud de Cambio Ida','Solicitud de Cambio Vuelta',0,2,'comision'),('solicitud_cambio_vuelta',2,34,'Solicitud de Cambio Vuelta','Solicitud de Cambio Vuelta',0,2,'comision'),('suma_pasaje_aereo',1,NULL,'Pasaje Áereo','Pasaje Áereo',0,1,'comision'),('suma_pasaje_terrestre',1,NULL,'Pasaje Terrestre','Pasaje Terrestre',0,1,'comision'),('suma_viaticos_efectivo',1,NULL,'Suma de Viáticos con Comprobante en Efectivo','Suma de Viáticos con Comprobante en Efectivo',0,1,'comision'),('suma_viaticos_sin_comprobante',1,NULL,'Suma de Viáticos Sin Comprobante','Suma de Viáticos Sin Comprobante',0,1,'comision'),('suma_viaticos_tarjeta',1,NULL,'Suma de Viáticos con Tarjeta Coorporativa','Suma de Viáticos con Tarjeta Coorporativa',0,1,'comision'),('tarifa_con_pernocta',1,24,'Tarifa Con Pernocta','Tarifa Con Pernocta',0,1,'comision'),('tarifa_correspondiente',1,NULL,'Tarifa Correspondiente','Tarifa Correspondiente',0,1,'comision'),('tarifa_sin_pernocta',1,25,'Tarifa Sin Pernocta','Tarifa Sin Pernocta',0,1,'comision'),('tipo_cambio_gasto',1,NULL,'Tipo de Cambio','Tipo de Cambio',0,1,NULL),('tipo_de_cambio_viaticos',1,NULL,'Tipo de Cambio','Tipo de Cambio',0,1,'comision'),('tipo_documento_gasto',2,29,'Tipo de Documento','Tipo de Documento',0,2,NULL),('tipo_invitado',2,19,'Tipo de Invitado','Tipo de Invitado',0,2,'comision'),('tipo_pago',2,2,'Tipo de Pago','Tipo de Pago',1,2,'comision'),('tipo_pasaje',2,54,'Aéreo o terrestre','Tipo de pasaje',0,2,'comision'),('tipo_pasaje_ida',2,32,'Tipo de Pasaje Ida','Tipo de Pasaje Ida',0,2,'comision'),('tipo_pasaje_vuelta',2,32,'Tipo de Pasaje Vuelta','Tipo de Pasaje Vuelta',0,2,'comision'),('tipo_representacion',2,18,'Tipo Representacion','Tipo de Representación',0,2,'comision'),('tipo_viaje',2,98,'Nacional o internacional','Tipo de viaje',0,2,'tipo_viaje'),('tipo_zona',2,20,'Tipo de Zona','Tipo de Zona',0,2,'comision'),('total_gastos_comision',1,NULL,'Total de Gatos Comisión','Total de Gatos Comisión',0,1,'comision'),('total_gastos_pasaje',1,NULL,'Total Gastos de Pasaje','Total Gastos de Pasaje',0,1,'comision'),('total_gastos_viaticos',1,NULL,'Total Gastos Viáticos','Total Gastos Viáticos',0,1,'comision'),('unidad_administrativa',2,17,'Unidad Administrativa','Unidad Administrativa',0,2,'funcionario'),('url_evento',2,NULL,'URL del evento','URL del evento',0,1,'comision'),('ViajesClaros_operacion',2,72,'Indica la operación a realizar Altas = I Bajas = E Cambio = C ','Operación',0,2,'comision'),('viaje_redondo',2,33,'Viaje Redondo','Viaje Redondo',0,2,'comision'),('viaticos_comprobados',1,NULL,'Viáticos comprobados','Viáticos comprobados',0,1,'viaticos'),('viaticos_devueltos',1,NULL,'Viáticos devueltos','Viáticos devueltos',0,1,'viaticos'),('viaticos_sin_comprobar',1,NULL,'Viáticos sin comprobar','Gastos sin comprobantes, aquellos permitidos por la normativa aplicable',0,1,'viaticos'),('vigencia_boleto_ida',3,NULL,'Vigencia del boleto ida','Vigencia del boleto vuelta',0,3,'comision'),('vigencia_boleto_vuelta',3,NULL,'Vigencia del boleto vuelta','Vigencia del boleto vuelta',0,3,'comision'),('vinculo_internet',2,NULL,'Vínculo Internet','Vínculo Internet',0,1,'comision');
/*!40000 ALTER TABLE `campos_dinamicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'Dubai',11,1,'25.2048493','55.2707828'),(2,'Buenos Aires',5,2,'-34.6036844','-58.3815591'),(3,'Bruselas',12,3,'50.8503396','4.35171030'),(4,'Santa Cruz de la Sierra',13,4,'-17.8145819','-63.1560852'),(5,'Brasilia',10,5,'-15.7942287','-47.8821657'),(6,'Vancouver',3,6,'49.2827291','-123.120737'),(7,'Montreal',3,7,'45.5016889','-73.5672559'),(8,'Santiago de Chile',6,8,'-33.4378305','-70.6504492'),(9,'Hong Kong',7,9,'22.396428','114.10949'),(10,'Macao',7,10,'22.198745','113.543873'),(11,'Ningbo',7,11,'29.868336','121.543990'),(12,'Bogotá',14,12,'4.7109885','-74.072092'),(13,'San José',15,13,'9.9280694','-84.0907245'),(14,'Berlín',16,14,'52.5200065','13.404953'),(15,'Quito',17,15,'-0.1806532','-78.467838'),(16,'Madrid',18,16,'40.4167754','-3.7037901'),(17,'Estrasburgo',19,17,'48.5734052','7.7521113'),(18,'Paris',19,18,'48.856614','2.3522219'),(19,'Mánchester',4,19,'53.4807593','-2.2426305'),(20,'Brighton',4,20,'50.822530','-0.1371629'),(21,'Guatemala',20,21,'14.630759','-90.485801'),(22,'Antigua Guatemala',20,22,'14.5585707','-90.729522'),(23,'Aguascalientes',1,23,'21.8852562','-102.291567'),(24,'Mexicali',1,24,'32.62453889','-115.452262'),(25,'Tijuana',1,24,'32.5149469','-117.038247'),(26,'La Paz',1,25,'24.1426408','-110.312753'),(27,'Los Cabos',1,25,'23.079869','-109.7124043'),(28,'San José del Cabo',1,25,'23.0636562','-109.7024376'),(29,'Ciudad del Carmen',1,26,'18.6504879','-91.8074586'),(30,'San Francisco de Campeche',1,26,'19.8301292','-90.534926'),(31,'San Cristóbal de las Casas',1,27,'16.7370359','-92.6376186'),(32,'Tapachula',1,27,'14.9055567','-92.2634135'),(33,'Tuxtla Gutiérrez',1,27,'16.7516009','-93.1029939'),(34,'Chihuahua',1,28,'28.6329957','-106.0691004'),(35,'Ciudad Juárez',1,28,'31.7013879','-106.461374'),(36,'Creel',1,28,'27.7504473','-107.636889'),(37,'Arteaga',1,29,'25.4546718','-100.850791'),(38,'Piedras Negras',1,29,'28.6916182','-100.5408621'),(39,'Saltillo',1,29,'25.43208','-100.9836611'),(40,'Torreón',1,29,'25.5428443','-103.406786'),(41,'Colima',1,30,'19.2452342','-103.724086'),(42,'Manzanillo',1,30,'19.1138094','-104.3384616'),(43,'Durango',1,31,'24.0277202','-104.653175'),(44,'Amecameca',1,32,'19.1223754','-98.766748'),(45,'Ixtapan de la Sal',1,32,'18.83760969','-99.675904'),(46,'Metepec',1,32,'19.2528864','-99.5985509'),(47,'Texcoco',1,32,'19.5060382','-98.88315030'),(48,'Toluca',1,32,'19.2826098','-99.6556653'),(49,'Guanajuato',1,33,'20.9170187','-101.1617355'),(50,'León',1,33,'21.1250077','-101.6859604'),(51,'San Miguel de Allende',1,33,'20.9144491','-100.745234'),(52,'Chilpancingo',1,34,'17.5515346','-99.50063219'),(53,'Iguala',1,34,'18.3448477','-99.5397343'),(54,'Pachuca',1,35,'20.0976128','-98.7095789'),(55,'Tulancingo',1,35,'20.0904802','-98.3690922'),(56,'Ameca',1,36,'20.5476288','-104.04662109'),(57,'Guadalajara',1,36,'20.6596987','-103.3496092'),(58,'Puerto Vallarta',1,36,'20.65340699','-105.2253316'),(59,'Tamazula de Gordiano',1,36,'19.6804043','-103.2490313'),(60,'Tepatitlán de Morelos',1,36,'20.8098057','-102.76523259'),(61,'Tlaquepaque',1,36,'20.6396728','-103.3118355'),(62,'Zapopan',1,36,'20.6719563','-103.4165009'),(63,'Morelia',1,37,'19.7059504','-101.19498249'),(64,'Cuernavaca',1,38,'18.9242095','-99.22156590'),(65,'Ahuacatlán',1,39,'20.0063173','-97.8585926'),(66,'Nuevo Vallarta',1,39,'20.696686','-105.2926307'),(67,'Tepic',1,39,'21.5041651','-104.894588'),(68,'Apodaca',1,40,'25.7815621','-100.1875974'),(69,'Monterrey',1,40,'20.6488899','-98.1566699'),(70,'Oaxaca',1,41,'17.0542297','-96.71323039'),(71,'Cholula',1,42,'19.0765772','-98.302119'),(72,'Metepec',1,42,'18.939183','-98.47190009'),(73,'Puebla de Zaragoza',1,42,'19.0412967','-98.2061995'),(74,'San Martín Texmelucan',1,42,'19.2812634','-98.4362026'),(75,'Corregidora',1,43,'20.5426931','-100.45125229'),(76,'Santiago de Querétaro',1,43,'20.588793199','-100.3898881'),(77,'Cancún',1,44,'21.161908','-86.8515279'),(78,'Chetumal',1,44,'18.5001889','-88.2961460'),(79,'Playa del Carmen',1,44,'20.6295586','-87.0738850'),(80,'Solidaridad',1,44,'20.65230279','-87.06962729'),(81,'Mexquitic de Carmona ',1,45,'22.26523289','-101.1126544'),(82,'San Luis Potosí',1,45,'22.1564699','-100.98554089'),(83,'Culiacán',1,46,'24.8090649','-107.39401169'),(84,'Los Mochis',1,46,'25.7904657','-108.985882'),(85,'Mazatlán',1,46,'23.2494148','-106.4111424'),(86,'Ciudad Obregón',1,47,'27.4827729','-109.9303669'),(87,'Hermosillo',1,47,'29.0729673','-110.9559191'),(88,'Villahermosa',1,48,'17.989456','-92.9475061'),(89,'Ciudad Madero',1,49,'22.2475037','-97.8481221'),(90,'Ciudad Victoria',1,49,'23.7369164','-99.14111539'),(91,'Tampico',1,49,'22.293139','-97.8846644'),(92,'Tlaxcala',1,50,'19.318154','-98.2374954'),(93,'Xaltocan',1,50,'19.4268399','-98.2177438'),(94,'Córdoba',1,51,'18.8838909','-96.9237751'),(95,'Ixtaczoquitlán',1,51,'18.8608694','-97.063289'),(96,'Orizaba',1,51,'18.8504744','-97.1036396'),(97,'Papantla',1,51,'20.4449047','-97.32569469'),(98,'Poza Rica',1,51,'20.5270592','-97.4629119'),(99,'Tlacotalpan',1,51,'18.61092','-95.6559680'),(100,'Tlaquilpa',1,51,'18.6121398','-97.11906950'),(101,'Veracruz',1,51,'19.173773','-96.134224'),(102,'Xalapa',1,51,'19.5437751','-96.9101805'),(103,'Mérida',1,52,'20.9673702','-89.59258569'),(104,'Guadalupe',1,53,'22.7450219','-102.5141638'),(105,'Zacatecas',1,53,'22.7708555','-102.5832426'),(106,'Ciudad de México',1,54,'19.4326077','-99.1332079'),(107,'Port Louis',9,55,'-20.1668958','57.502332'),(108,'Amsterdam',21,56,'52.3702157','4.8951678'),(109,'Lima',22,57,'-12.046374','-77.0427934'),(110,'Asunción',23,58,'-25.263739','-57.575925'),(111,'Moscú',24,59,'55.755826','37.6173'),(112,'San Salvador',8,60,'13.6929403','-89.2181911'),(113,'Punta del Este',25,61,'-34.9368789','-54.9281495'),(114,'Montevideo',25,62,'-34.8173171','-56.158871'),(115,'Nueva York',2,63,'40.6952166','-73.990859'),(116,'Washington D.C.',2,64,'38.9071923','-77.036870'),(117,'Acapulco',1,34,'24.9531','-107.6219'),(118,'Ecatepec de Morelos',1,32,'19.6011','-99.0525'),(123,'Distrito Central',26,67,'14.1333','-87.2167'),(124,'Florida',2,68,'25.789','-80.2264'),(125,'Tegucigalpa',26,67,'14.07227','-87.1921'),(126,'Miami',2,68,'25.76168','-80.19179'),(127,'Campeche',1,26,'19.4333','-96.9');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Emirato',11),(2,'Ciudad Autónoma',5),(3,'Región de Bruselas-Capital',12),(4,'Santa Cruz',13),(5,'Distrito Federal de Brasil',10),(6,'Columbia Británica',3),(7,'Quebec',3),(8,'Región Metropolitana de Santiago',6),(9,'Región Administrativa Especial de Hong Kong',7),(10,'Región Administrativa Especial de Macao',7),(11,'Zhejiang',7),(12,'Cundinamarca',14),(13,'San José',15),(14,'Berlín',16),(15,'Pichincha',17),(16,'Comunidad de Madrid',18),(17,'Bajo Rin',19),(18,'Isla de Francia',19),(19,'Gran Mánchester',4),(20,'Sussex del Este',4),(21,'Guatemala',20),(22,'Sacatepéquez',20),(23,'Aguascalientes',1),(24,'Baja California',1),(25,'Baja California Sur',1),(26,'Campeche',1),(27,'Chiapas',1),(28,'Chihuahua',1),(29,'Coahuila',1),(30,'Colima',1),(31,'Durango',1),(32,'Estado de México',1),(33,'Guanajuato',1),(34,'Guerrero',1),(35,'Hidalgo',1),(36,'Jalisco',1),(37,'Michoacán',1),(38,'Morelos',1),(39,'Nayarit',1),(40,'Nuevo León',1),(41,'Oaxaca',1),(42,'Puebla',1),(43,'Querétaro',1),(44,'Quintana Roo',1),(45,'San Luis Potosí',1),(46,'Sinaloa',1),(47,'Sonora',1),(48,'Tabasco',1),(49,'Tamaulipas',1),(50,'Tlaxcala',1),(51,'Veracruz',1),(52,'Yucatán',1),(53,'Zacatecas',1),(54,'Distrito Federal',1),(55,'Comarca Escondida',9),(56,'Holanda Septentrional',21),(57,'Lima',22),(58,'Distrito Capital',23),(59,'Distrito Federal Central',24),(60,'San Salvador',8),(61,'Maldonado',25),(62,'Montevideo',25),(63,'Nueva York',2),(64,'Washington D.C.',2),(67,'Distrito Central',26),(68,'Florida',2);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'MX','México',1),(2,'USA','Estados Unidos de América',0),(3,'CAN','Canadá',0),(4,'UK','Reino Unido',0),(5,'ARG','Argentina',0),(6,'CH','Chile',0),(7,'CHI','China',0),(8,'SLV','El Salvador',0),(9,'MAU','Mauricio',0),(10,'BR','Brasil',0),(11,'ARE','Emiratos Árabes Unidos',0),(12,'BEL','Bélgica',0),(13,'BOL','Bolivia',0),(14,'COL','Colombia',0),(15,'CRI','Costa Rica',0),(16,'DEU','Alemania',0),(17,'ECU','Ecuador',0),(18,'ESP','España',0),(19,'FRA','Francia',0),(20,'GTM','Guatemala',0),(21,'NLD','Países Bajos',0),(22,'PER','Perú',0),(23,'PRY','Paraguay',0),(24,'RUS','Rusia',0),(25,'URY','Uruguay',0),(26,'HND','Honduras',0);
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perfiles`
--

LOCK TABLES `perfiles` WRITE;
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
INSERT INTO `perfiles` VALUES (1,'Administrador'),(2,'Configurador'),(3,'Usuario'),(4,'Carga_Masiva');
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'admin','viVNk4dbcMoGEdWyhxXfEzxRYw/W+n6dXQbU+vQ5JlY=','+KglA/24E0oVsdEKCPCqWg==','Administrador1',1,1,NULL,1,4,2,210,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-17 19:51:41
