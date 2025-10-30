import '../database.dart';

class EquipeVisitaTable extends SupabaseTable<EquipeVisitaRow> {
  @override
  String get tableName => 'EquipeVisita';

  @override
  EquipeVisitaRow createRow(Map<String, dynamic> data) => EquipeVisitaRow(data);
}

class EquipeVisitaRow extends SupabaseDataRow {
  EquipeVisitaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EquipeVisitaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get visitaTecRef => getField<int>('visita_tec_ref')!;
  set visitaTecRef(int value) => setField<int>('visita_tec_ref', value);

  int get funcionarioRef => getField<int>('funcionario_ref')!;
  set funcionarioRef(int value) => setField<int>('funcionario_ref', value);

  PostgresTime? get horaInicio => getField<PostgresTime>('hora_inicio');
  set horaInicio(PostgresTime? value) =>
      setField<PostgresTime>('hora_inicio', value);

  PostgresTime? get horaFim => getField<PostgresTime>('hora_fim');
  set horaFim(PostgresTime? value) => setField<PostgresTime>('hora_fim', value);

  double? get horasTotais => getField<double>('horas_totais');
  set horasTotais(double? value) => setField<double>('horas_totais', value);
}
