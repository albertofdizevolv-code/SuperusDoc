import '../database.dart';

class CargosTable extends SupabaseTable<CargosRow> {
  @override
  String get tableName => 'Cargos';

  @override
  CargosRow createRow(Map<String, dynamic> data) => CargosRow(data);
}

class CargosRow extends SupabaseDataRow {
  CargosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CargosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tag => getField<String>('tag');
  set tag(String? value) => setField<String>('tag', value);

  int? get categoria => getField<int>('categoria');
  set categoria(int? value) => setField<int>('categoria', value);
}
