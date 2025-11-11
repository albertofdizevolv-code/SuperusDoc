import '../database.dart';

class VwHistoricoCompletoTable extends SupabaseTable<VwHistoricoCompletoRow> {
  @override
  String get tableName => 'vw_historico_completo';

  @override
  VwHistoricoCompletoRow createRow(Map<String, dynamic> data) =>
      VwHistoricoCompletoRow(data);
}

class VwHistoricoCompletoRow extends SupabaseDataRow {
  VwHistoricoCompletoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwHistoricoCompletoTable();

  int? get idHistorico => getField<int>('id_historico');
  set idHistorico(int? value) => setField<int>('id_historico', value);

  int? get fkIdSsa => getField<int>('fk_id_ssa');
  set fkIdSsa(int? value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataHora => getField<DateTime>('data_hora');
  set dataHora(DateTime? value) => setField<DateTime>('data_hora', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get fkIdResponsavel => getField<int>('fk_id_responsavel');
  set fkIdResponsavel(int? value) => setField<int>('fk_id_responsavel', value);

  String? get nomeResponsavel => getField<String>('nome_responsavel');
  set nomeResponsavel(String? value) =>
      setField<String>('nome_responsavel', value);

  int? get fkIdStatusHistorico => getField<int>('fk_id_status_historico');
  set fkIdStatusHistorico(int? value) =>
      setField<int>('fk_id_status_historico', value);

  String? get nomeStatusHistorico => getField<String>('nome_status_historico');
  set nomeStatusHistorico(String? value) =>
      setField<String>('nome_status_historico', value);

  int? get fkIdStatusAtual => getField<int>('fk_id_status_atual');
  set fkIdStatusAtual(int? value) => setField<int>('fk_id_status_atual', value);

  String? get nomeStatusAtual => getField<String>('nome_status_atual');
  set nomeStatusAtual(String? value) =>
      setField<String>('nome_status_atual', value);
}
