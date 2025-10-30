import '../database.dart';

class VwTabelaHomeTable extends SupabaseTable<VwTabelaHomeRow> {
  @override
  String get tableName => 'vw_tabela_home';

  @override
  VwTabelaHomeRow createRow(Map<String, dynamic> data) => VwTabelaHomeRow(data);
}

class VwTabelaHomeRow extends SupabaseDataRow {
  VwTabelaHomeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwTabelaHomeTable();

  int? get idSsa => getField<int>('id_ssa');
  set idSsa(int? value) => setField<int>('id_ssa', value);

  String? get numeroOs => getField<String>('numero_os');
  set numeroOs(String? value) => setField<String>('numero_os', value);

  String? get centroCusto => getField<String>('centro_custo');
  set centroCusto(String? value) => setField<String>('centro_custo', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get solicitante => getField<String>('solicitante');
  set solicitante(String? value) => setField<String>('solicitante', value);

  int? get idSolicitante => getField<int>('id_solicitante');
  set idSolicitante(int? value) => setField<int>('id_solicitante', value);

  DateTime? get dataAbertura => getField<DateTime>('data_abertura');
  set dataAbertura(DateTime? value) =>
      setField<DateTime>('data_abertura', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get idProjeto => getField<int>('id_projeto');
  set idProjeto(int? value) => setField<int>('id_projeto', value);

  int? get idVisitaTecnica => getField<int>('id_visita_tecnica');
  set idVisitaTecnica(int? value) => setField<int>('id_visita_tecnica', value);

  int? get idProgramacao => getField<int>('id_programacao');
  set idProgramacao(int? value) => setField<int>('id_programacao', value);

  DateTime? get dataInicioPrevista =>
      getField<DateTime>('data_inicio_prevista');
  set dataInicioPrevista(DateTime? value) =>
      setField<DateTime>('data_inicio_prevista', value);

  DateTime? get dataFimPrevista => getField<DateTime>('data_fim_prevista');
  set dataFimPrevista(DateTime? value) =>
      setField<DateTime>('data_fim_prevista', value);
}
