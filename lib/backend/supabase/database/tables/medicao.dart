import '../database.dart';

class MedicaoTable extends SupabaseTable<MedicaoRow> {
  @override
  String get tableName => 'Medicao';

  @override
  MedicaoRow createRow(Map<String, dynamic> data) => MedicaoRow(data);
}

class MedicaoRow extends SupabaseDataRow {
  MedicaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicaoTable();

  int get idMedicao => getField<int>('id_medicao')!;
  set idMedicao(int value) => setField<int>('id_medicao', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataConfirmacaoMedicao =>
      getField<DateTime>('data_confirmacao_medicao');
  set dataConfirmacaoMedicao(DateTime? value) =>
      setField<DateTime>('data_confirmacao_medicao', value);

  String? get relatorioExecucaoUrl =>
      getField<String>('relatorio_execucao_url');
  set relatorioExecucaoUrl(String? value) =>
      setField<String>('relatorio_execucao_url', value);
}
