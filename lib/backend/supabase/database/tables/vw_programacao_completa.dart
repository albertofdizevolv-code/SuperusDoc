import '../database.dart';

class VwProgramacaoCompletaTable
    extends SupabaseTable<VwProgramacaoCompletaRow> {
  @override
  String get tableName => 'vw_programacao_completa';

  @override
  VwProgramacaoCompletaRow createRow(Map<String, dynamic> data) =>
      VwProgramacaoCompletaRow(data);
}

class VwProgramacaoCompletaRow extends SupabaseDataRow {
  VwProgramacaoCompletaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwProgramacaoCompletaTable();

  int? get idProgramacao => getField<int>('id_programacao');
  set idProgramacao(int? value) => setField<int>('id_programacao', value);

  int? get fkIdSsa => getField<int>('fk_id_ssa');
  set fkIdSsa(int? value) => setField<int>('fk_id_ssa', value);

  int? get fkIdResponsavelExecucao =>
      getField<int>('fk_id_responsavel_execucao');
  set fkIdResponsavelExecucao(int? value) =>
      setField<int>('fk_id_responsavel_execucao', value);

  int? get fkIdSolicitanteCliente => getField<int>('fk_id_solicitante_cliente');
  set fkIdSolicitanteCliente(int? value) =>
      setField<int>('fk_id_solicitante_cliente', value);

  DateTime? get dataInicioPrevista =>
      getField<DateTime>('data_inicio_prevista');
  set dataInicioPrevista(DateTime? value) =>
      setField<DateTime>('data_inicio_prevista', value);

  DateTime? get dataFimPrevista => getField<DateTime>('data_fim_prevista');
  set dataFimPrevista(DateTime? value) =>
      setField<DateTime>('data_fim_prevista', value);

  double? get volumeAndaimeM3 => getField<double>('volume_andaime_m3');
  set volumeAndaimeM3(double? value) =>
      setField<double>('volume_andaime_m3', value);

  double? get areaPisoM2 => getField<double>('area_piso_m2');
  set areaPisoM2(double? value) => setField<double>('area_piso_m2', value);

  double? get metragemLinearM => getField<double>('metragem_linear_m');
  set metragemLinearM(double? value) =>
      setField<double>('metragem_linear_m', value);

  double? get homemHoraHh => getField<double>('homem_hora_hh');
  set homemHoraHh(double? value) => setField<double>('homem_hora_hh', value);

  double? get totalMaterialTubularM =>
      getField<double>('total_material_tubular_m');
  set totalMaterialTubularM(double? value) =>
      setField<double>('total_material_tubular_m', value);

  int? get idSsa => getField<int>('id_ssa');
  set idSsa(int? value) => setField<int>('id_ssa', value);

  String? get numeroOs => getField<String>('numero_os');
  set numeroOs(String? value) => setField<String>('numero_os', value);

  String? get centroCusto => getField<String>('centro_custo');
  set centroCusto(String? value) => setField<String>('centro_custo', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  int? get idProjeto => getField<int>('id_projeto');
  set idProjeto(int? value) => setField<int>('id_projeto', value);

  DateTime? get dataAbertura => getField<DateTime>('data_abertura');
  set dataAbertura(DateTime? value) =>
      setField<DateTime>('data_abertura', value);

  String? get solicitanteNome => getField<String>('solicitante_nome');
  set solicitanteNome(String? value) =>
      setField<String>('solicitante_nome', value);

  String? get responsavelExecucaoNome =>
      getField<String>('responsavel_execucao_nome');
  set responsavelExecucaoNome(String? value) =>
      setField<String>('responsavel_execucao_nome', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get idVisitaTecnica => getField<int>('id_visita_tecnica');
  set idVisitaTecnica(int? value) => setField<int>('id_visita_tecnica', value);

  String? get tipoTabela => getField<String>('tipo_tabela');
  set tipoTabela(String? value) => setField<String>('tipo_tabela', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);
}
