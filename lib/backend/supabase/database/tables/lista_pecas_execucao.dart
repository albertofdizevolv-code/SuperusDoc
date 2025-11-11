import '../database.dart';

class ListaPecasExecucaoTable extends SupabaseTable<ListaPecasExecucaoRow> {
  @override
  String get tableName => 'ListaPecasExecucao';

  @override
  ListaPecasExecucaoRow createRow(Map<String, dynamic> data) =>
      ListaPecasExecucaoRow(data);
}

class ListaPecasExecucaoRow extends SupabaseDataRow {
  ListaPecasExecucaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaPecasExecucaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get execucaoRef => getField<int>('execucao_ref')!;
  set execucaoRef(int value) => setField<int>('execucao_ref', value);

  int get materialRef => getField<int>('material_ref')!;
  set materialRef(int value) => setField<int>('material_ref', value);

  int get quantidadeReservada => getField<int>('quantidade_reservada')!;
  set quantidadeReservada(int value) =>
      setField<int>('quantidade_reservada', value);

  int? get preenchimentoDiarioFk => getField<int>('preenchimento_diario_fk');
  set preenchimentoDiarioFk(int? value) =>
      setField<int>('preenchimento_diario_fk', value);
}
