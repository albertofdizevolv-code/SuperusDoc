import '../database.dart';

class ListaPecasProgramacaoTable
    extends SupabaseTable<ListaPecasProgramacaoRow> {
  @override
  String get tableName => 'ListaPecasProgramacao';

  @override
  ListaPecasProgramacaoRow createRow(Map<String, dynamic> data) =>
      ListaPecasProgramacaoRow(data);
}

class ListaPecasProgramacaoRow extends SupabaseDataRow {
  ListaPecasProgramacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaPecasProgramacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get programacaoRef => getField<int>('programacao_ref')!;
  set programacaoRef(int value) => setField<int>('programacao_ref', value);

  int get materialRef => getField<int>('material_ref')!;
  set materialRef(int value) => setField<int>('material_ref', value);

  int get quantidadeReservada => getField<int>('quantidade_reservada')!;
  set quantidadeReservada(int value) =>
      setField<int>('quantidade_reservada', value);

  int? get materialSubstituido => getField<int>('material_substituido');
  set materialSubstituido(int? value) =>
      setField<int>('material_substituido', value);

  String? get observacao => getField<String>('observacao');
  set observacao(String? value) => setField<String>('observacao', value);
}
