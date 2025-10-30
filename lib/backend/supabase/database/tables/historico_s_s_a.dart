import '../database.dart';

class HistoricoSSATable extends SupabaseTable<HistoricoSSARow> {
  @override
  String get tableName => 'HistoricoSSA';

  @override
  HistoricoSSARow createRow(Map<String, dynamic> data) => HistoricoSSARow(data);
}

class HistoricoSSARow extends SupabaseDataRow {
  HistoricoSSARow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistoricoSSATable();

  int get idHistorico => getField<int>('id_historico')!;
  set idHistorico(int value) => setField<int>('id_historico', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataHora => getField<DateTime>('data_hora');
  set dataHora(DateTime? value) => setField<DateTime>('data_hora', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  int get fkIdResponsavel => getField<int>('fk_id_responsavel')!;
  set fkIdResponsavel(int value) => setField<int>('fk_id_responsavel', value);
}
