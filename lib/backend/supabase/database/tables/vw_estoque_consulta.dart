import '../database.dart';

class VwEstoqueConsultaTable extends SupabaseTable<VwEstoqueConsultaRow> {
  @override
  String get tableName => 'vw_estoque_consulta';

  @override
  VwEstoqueConsultaRow createRow(Map<String, dynamic> data) =>
      VwEstoqueConsultaRow(data);
}

class VwEstoqueConsultaRow extends SupabaseDataRow {
  VwEstoqueConsultaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwEstoqueConsultaTable();

  int? get idMaterial => getField<int>('id_material');
  set idMaterial(int? value) => setField<int>('id_material', value);

  String? get codigo => getField<String>('codigo');
  set codigo(String? value) => setField<String>('codigo', value);

  String? get nomeMaterial => getField<String>('nome_material');
  set nomeMaterial(String? value) => setField<String>('nome_material', value);

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

  int? get idEstoque => getField<int>('id_estoque');
  set idEstoque(int? value) => setField<int>('id_estoque', value);

  int? get saldoAtual => getField<int>('saldo_atual');
  set saldoAtual(int? value) => setField<int>('saldo_atual', value);

  int? get saldoMinimo => getField<int>('saldo_minimo');
  set saldoMinimo(int? value) => setField<int>('saldo_minimo', value);

  int? get saldoMontado => getField<int>('saldo_montado');
  set saldoMontado(int? value) => setField<int>('saldo_montado', value);

  int? get saldoSistemicoTotal => getField<int>('saldo_sistemico_total');
  set saldoSistemicoTotal(int? value) =>
      setField<int>('saldo_sistemico_total', value);

  int? get saldoAlocadoAndaimesMontados =>
      getField<int>('saldo_alocado_andaimes_montados');
  set saldoAlocadoAndaimesMontados(int? value) =>
      setField<int>('saldo_alocado_andaimes_montados', value);

  double? get indiceOciosidade => getField<double>('indice_ociosidade');
  set indiceOciosidade(double? value) =>
      setField<double>('indice_ociosidade', value);

  bool? get abaixoMinimo => getField<bool>('abaixo_minimo');
  set abaixoMinimo(bool? value) => setField<bool>('abaixo_minimo', value);
}
