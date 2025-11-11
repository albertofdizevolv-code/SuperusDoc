import '../database.dart';

class EquipeExecucaoTable extends SupabaseTable<EquipeExecucaoRow> {
  @override
  String get tableName => 'EquipeExecucao';

  @override
  EquipeExecucaoRow createRow(Map<String, dynamic> data) =>
      EquipeExecucaoRow(data);
}

class EquipeExecucaoRow extends SupabaseDataRow {
  EquipeExecucaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EquipeExecucaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get execucaoRef => getField<int>('execucao_ref')!;
  set execucaoRef(int value) => setField<int>('execucao_ref', value);

  int get funcionarioRef => getField<int>('funcionario_ref')!;
  set funcionarioRef(int value) => setField<int>('funcionario_ref', value);

  PostgresTime? get horaInicio => getField<PostgresTime>('hora_inicio');
  set horaInicio(PostgresTime? value) =>
      setField<PostgresTime>('hora_inicio', value);

  PostgresTime? get horaFim => getField<PostgresTime>('hora_fim');
  set horaFim(PostgresTime? value) => setField<PostgresTime>('hora_fim', value);

  double? get horasTotais => getField<double>('horas_totais');
  set horasTotais(double? value) => setField<double>('horas_totais', value);

  int? get preenchimentoDiarioFk => getField<int>('preenchimento_diario_fk');
  set preenchimentoDiarioFk(int? value) =>
      setField<int>('preenchimento_diario_fk', value);
}
