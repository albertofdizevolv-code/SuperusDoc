import '../database.dart';

class VwProgramacaoDetalhesTable
    extends SupabaseTable<VwProgramacaoDetalhesRow> {
  @override
  String get tableName => 'vw_programacao_detalhes';

  @override
  VwProgramacaoDetalhesRow createRow(Map<String, dynamic> data) =>
      VwProgramacaoDetalhesRow(data);
}

class VwProgramacaoDetalhesRow extends SupabaseDataRow {
  VwProgramacaoDetalhesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwProgramacaoDetalhesTable();

  String? get numeroOs => getField<String>('numero_os');
  set numeroOs(String? value) => setField<String>('numero_os', value);

  int? get idSsa => getField<int>('id_ssa');
  set idSsa(int? value) => setField<int>('id_ssa', value);

  String? get centroCusto => getField<String>('centro_custo');
  set centroCusto(String? value) => setField<String>('centro_custo', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get solicitante => getField<String>('solicitante');
  set solicitante(String? value) => setField<String>('solicitante', value);

  DateTime? get dataAbertura => getField<DateTime>('data_abertura');
  set dataAbertura(DateTime? value) =>
      setField<DateTime>('data_abertura', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get idVisitaTecnica => getField<int>('id_visita_tecnica');
  set idVisitaTecnica(int? value) => setField<int>('id_visita_tecnica', value);

  int? get idProjeto => getField<int>('id_projeto');
  set idProjeto(int? value) => setField<int>('id_projeto', value);

  DateTime? get dataInicioPrevista =>
      getField<DateTime>('data_inicio_prevista');
  set dataInicioPrevista(DateTime? value) =>
      setField<DateTime>('data_inicio_prevista', value);

  DateTime? get dataFimPrevista => getField<DateTime>('data_fim_prevista');
  set dataFimPrevista(DateTime? value) =>
      setField<DateTime>('data_fim_prevista', value);
}
