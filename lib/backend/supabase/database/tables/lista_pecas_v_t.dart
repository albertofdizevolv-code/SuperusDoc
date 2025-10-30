import '../database.dart';

class ListaPecasVTTable extends SupabaseTable<ListaPecasVTRow> {
  @override
  String get tableName => 'ListaPecasVT';

  @override
  ListaPecasVTRow createRow(Map<String, dynamic> data) => ListaPecasVTRow(data);
}

class ListaPecasVTRow extends SupabaseDataRow {
  ListaPecasVTRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaPecasVTTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get visitaTec => getField<int>('visitaTec');
  set visitaTec(int? value) => setField<int>('visitaTec', value);

  int? get material => getField<int>('Material');
  set material(int? value) => setField<int>('Material', value);

  int? get quantidadePrevista => getField<int>('quantidadePrevista');
  set quantidadePrevista(int? value) =>
      setField<int>('quantidadePrevista', value);
}
