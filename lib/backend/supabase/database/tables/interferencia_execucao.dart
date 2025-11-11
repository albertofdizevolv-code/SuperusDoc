import '../database.dart';

class InterferenciaExecucaoTable
    extends SupabaseTable<InterferenciaExecucaoRow> {
  @override
  String get tableName => 'InterferenciaExecucao';

  @override
  InterferenciaExecucaoRow createRow(Map<String, dynamic> data) =>
      InterferenciaExecucaoRow(data);
}

class InterferenciaExecucaoRow extends SupabaseDataRow {
  InterferenciaExecucaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InterferenciaExecucaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get fkIdExecucao => getField<int>('fk_id_execucao');
  set fkIdExecucao(int? value) => setField<int>('fk_id_execucao', value);

  DateTime? get dataExecucao => getField<DateTime>('data_execucao');
  set dataExecucao(DateTime? value) =>
      setField<DateTime>('data_execucao', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get duracao => getField<double>('duracao');
  set duracao(double? value) => setField<double>('duracao', value);

  int? get efetivoAfetado => getField<int>('efetivo_afetado');
  set efetivoAfetado(int? value) => setField<int>('efetivo_afetado', value);

  double? get impactoHora => getField<double>('impacto_hora');
  set impactoHora(double? value) => setField<double>('impacto_hora', value);

  int? get fkIdMotivo => getField<int>('fk_id_motivo');
  set fkIdMotivo(int? value) => setField<int>('fk_id_motivo', value);

  int? get preenchimentoDiarioFk => getField<int>('preenchimento_diario_fk');
  set preenchimentoDiarioFk(int? value) =>
      setField<int>('preenchimento_diario_fk', value);
}
