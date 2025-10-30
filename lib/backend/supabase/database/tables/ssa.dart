import '../database.dart';

class SsaTable extends SupabaseTable<SsaRow> {
  @override
  String get tableName => 'SSA';

  @override
  SsaRow createRow(Map<String, dynamic> data) => SsaRow(data);
}

class SsaRow extends SupabaseDataRow {
  SsaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SsaTable();

  int get idSsa => getField<int>('id_ssa')!;
  set idSsa(int value) => setField<int>('id_ssa', value);

  String? get numeroOs => getField<String>('numero_os');
  set numeroOs(String? value) => setField<String>('numero_os', value);

  int get fkIdStatus => getField<int>('fk_id_status')!;
  set fkIdStatus(int value) => setField<int>('fk_id_status', value);

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

  int? get fkIdProjeto => getField<int>('fk_id_projeto');
  set fkIdProjeto(int? value) => setField<int>('fk_id_projeto', value);

  int? get subprojeto => getField<int>('subprojeto');
  set subprojeto(int? value) => setField<int>('subprojeto', value);

  int? get solicitante => getField<int>('solicitante');
  set solicitante(int? value) => setField<int>('solicitante', value);

  int? get programadorCliente => getField<int>('programador_cliente');
  set programadorCliente(int? value) =>
      setField<int>('programador_cliente', value);

  int? get responsavel => getField<int>('responsavel');
  set responsavel(int? value) => setField<int>('responsavel', value);

  String? get obsInterna => getField<String>('obs_interna');
  set obsInterna(String? value) => setField<String>('obs_interna', value);

  String? get codIdentificador => getField<String>('cod_identificador');
  set codIdentificador(String? value) =>
      setField<String>('cod_identificador', value);
}
