import '../database.dart';

class VwSsaDetalhesTable extends SupabaseTable<VwSsaDetalhesRow> {
  @override
  String get tableName => 'vw_ssa_detalhes';

  @override
  VwSsaDetalhesRow createRow(Map<String, dynamic> data) =>
      VwSsaDetalhesRow(data);
}

class VwSsaDetalhesRow extends SupabaseDataRow {
  VwSsaDetalhesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwSsaDetalhesTable();

  int? get idSsa => getField<int>('id_ssa');
  set idSsa(int? value) => setField<int>('id_ssa', value);

  String? get numeroOs => getField<String>('numero_os');
  set numeroOs(String? value) => setField<String>('numero_os', value);

  int? get fkIdStatus => getField<int>('fk_id_status');
  set fkIdStatus(int? value) => setField<int>('fk_id_status', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  DateTime? get dataAbertura => getField<DateTime>('data_abertura');
  set dataAbertura(DateTime? value) =>
      setField<DateTime>('data_abertura', value);

  String? get areaSsa => getField<String>('area_ssa');
  set areaSsa(String? value) => setField<String>('area_ssa', value);

  String? get centroCustoCliente => getField<String>('centro_custo_cliente');
  set centroCustoCliente(String? value) =>
      setField<String>('centro_custo_cliente', value);

  String? get local => getField<String>('local');
  set local(String? value) => setField<String>('local', value);

  String? get tipoServico => getField<String>('tipo_servico');
  set tipoServico(String? value) => setField<String>('tipo_servico', value);

  String? get tagEquipamento => getField<String>('tag_equipamento');
  set tagEquipamento(String? value) =>
      setField<String>('tag_equipamento', value);

  String? get ordemManutencao => getField<String>('ordem_manutencao');
  set ordemManutencao(String? value) =>
      setField<String>('ordem_manutencao', value);

  String? get atividadeASerRealizada =>
      getField<String>('atividade_a_ser_realizada');
  set atividadeASerRealizada(String? value) =>
      setField<String>('atividade_a_ser_realizada', value);

  String? get tipoManutencao => getField<String>('tipo_manutencao');
  set tipoManutencao(String? value) =>
      setField<String>('tipo_manutencao', value);

  String? get observacoesGerais => getField<String>('observacoes_gerais');
  set observacoesGerais(String? value) =>
      setField<String>('observacoes_gerais', value);

  String? get obsInterna => getField<String>('obs_interna');
  set obsInterna(String? value) => setField<String>('obs_interna', value);

  String? get codIdentificador => getField<String>('cod_identificador');
  set codIdentificador(String? value) =>
      setField<String>('cod_identificador', value);

  int? get fkIdProjeto => getField<int>('fk_id_projeto');
  set fkIdProjeto(int? value) => setField<int>('fk_id_projeto', value);

  String? get nomeProjeto => getField<String>('nome_projeto');
  set nomeProjeto(String? value) => setField<String>('nome_projeto', value);

  int? get fkIdSubprojeto => getField<int>('fk_id_subprojeto');
  set fkIdSubprojeto(int? value) => setField<int>('fk_id_subprojeto', value);

  String? get nomeSubprojeto => getField<String>('nome_subprojeto');
  set nomeSubprojeto(String? value) =>
      setField<String>('nome_subprojeto', value);

  int? get fkIdSolicitante => getField<int>('fk_id_solicitante');
  set fkIdSolicitante(int? value) => setField<int>('fk_id_solicitante', value);

  String? get nomeSolicitante => getField<String>('nome_solicitante');
  set nomeSolicitante(String? value) =>
      setField<String>('nome_solicitante', value);

  int? get fkIdProgramadorCliente => getField<int>('fk_id_programador_cliente');
  set fkIdProgramadorCliente(int? value) =>
      setField<int>('fk_id_programador_cliente', value);

  String? get nomeProgramadorCliente =>
      getField<String>('nome_programador_cliente');
  set nomeProgramadorCliente(String? value) =>
      setField<String>('nome_programador_cliente', value);

  int? get fkIdResponsavel => getField<int>('fk_id_responsavel');
  set fkIdResponsavel(int? value) => setField<int>('fk_id_responsavel', value);

  String? get nomeResponsavel => getField<String>('nome_responsavel');
  set nomeResponsavel(String? value) =>
      setField<String>('nome_responsavel', value);

  String? get enderecoOp => getField<String>('endereco_op');
  set enderecoOp(String? value) => setField<String>('endereco_op', value);

  String? get codigoCentroCusto => getField<String>('codigo_centro_custo');
  set codigoCentroCusto(String? value) =>
      setField<String>('codigo_centro_custo', value);

  int? get fkIdTecnicoResponsavel => getField<int>('fk_id_tecnico_responsavel');
  set fkIdTecnicoResponsavel(int? value) =>
      setField<int>('fk_id_tecnico_responsavel', value);

  String? get nomeTecnicoResponsavel =>
      getField<String>('nome_tecnico_responsavel');
  set nomeTecnicoResponsavel(String? value) =>
      setField<String>('nome_tecnico_responsavel', value);
}
