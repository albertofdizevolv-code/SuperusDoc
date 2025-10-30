import '../database.dart';

class MaterialTable extends SupabaseTable<MaterialRow> {
  @override
  String get tableName => 'Material';

  @override
  MaterialRow createRow(Map<String, dynamic> data) => MaterialRow(data);
}

class MaterialRow extends SupabaseDataRow {
  MaterialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaterialTable();

  int get idMaterial => getField<int>('id_material')!;
  set idMaterial(int value) => setField<int>('id_material', value);

  String get item => getField<String>('item')!;
  set item(String value) => setField<String>('item', value);

  String get codigo => getField<String>('codigo')!;
  set codigo(String value) => setField<String>('codigo', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get subCategoria => getField<String>('sub_categoria');
  set subCategoria(String? value) => setField<String>('sub_categoria', value);

  String? get medida => getField<String>('medida');
  set medida(String? value) => setField<String>('medida', value);

  double? get peso => getField<double>('peso');
  set peso(double? value) => setField<double>('peso', value);

  double? get tamanho => getField<double>('tamanho');
  set tamanho(double? value) => setField<double>('tamanho', value);
}
