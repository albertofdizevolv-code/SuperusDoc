import '../database.dart';

class StatusSSATable extends SupabaseTable<StatusSSARow> {
  @override
  String get tableName => 'StatusSSA';

  @override
  StatusSSARow createRow(Map<String, dynamic> data) => StatusSSARow(data);
}

class StatusSSARow extends SupabaseDataRow {
  StatusSSARow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StatusSSATable();

  int get idStatus => getField<int>('id_status')!;
  set idStatus(int value) => setField<int>('id_status', value);

  String get nomeStatus => getField<String>('nome_status')!;
  set nomeStatus(String value) => setField<String>('nome_status', value);
}
