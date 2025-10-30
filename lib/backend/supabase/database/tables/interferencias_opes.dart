import '../database.dart';

class InterferenciasOpesTable extends SupabaseTable<InterferenciasOpesRow> {
  @override
  String get tableName => 'InterferenciasOpções';

  @override
  InterferenciasOpesRow createRow(Map<String, dynamic> data) =>
      InterferenciasOpesRow(data);
}

class InterferenciasOpesRow extends SupabaseDataRow {
  InterferenciasOpesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InterferenciasOpesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get motivo => getField<String>('Motivo');
  set motivo(String? value) => setField<String>('Motivo', value);
}
