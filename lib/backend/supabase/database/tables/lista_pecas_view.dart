import '../database.dart';

class ListaPecasViewTable extends SupabaseTable<ListaPecasViewRow> {
  @override
  String get tableName => 'ListaPecasView';

  @override
  ListaPecasViewRow createRow(Map<String, dynamic> data) =>
      ListaPecasViewRow(data);
}

class ListaPecasViewRow extends SupabaseDataRow {
  ListaPecasViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaPecasViewTable();

  int? get idVisita => getField<int>('id_visita');
  set idVisita(int? value) => setField<int>('id_visita', value);

  int? get idSsa => getField<int>('id_ssa');
  set idSsa(int? value) => setField<int>('id_ssa', value);

  int? get idMaterial => getField<int>('id_material');
  set idMaterial(int? value) => setField<int>('id_material', value);

  String? get nomeMaterial => getField<String>('nome_material');
  set nomeMaterial(String? value) => setField<String>('nome_material', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  double? get peso => getField<double>('peso');
  set peso(double? value) => setField<double>('peso', value);

  double? get tamanho => getField<double>('tamanho');
  set tamanho(double? value) => setField<double>('tamanho', value);

  int? get quantidadePrevista => getField<int>('quantidade_prevista');
  set quantidadePrevista(int? value) =>
      setField<int>('quantidade_prevista', value);

  int? get quantidadeEstoque => getField<int>('quantidade_estoque');
  set quantidadeEstoque(int? value) =>
      setField<int>('quantidade_estoque', value);
}
