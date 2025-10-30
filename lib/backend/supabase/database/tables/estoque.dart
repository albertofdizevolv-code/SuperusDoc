import '../database.dart';

class EstoqueTable extends SupabaseTable<EstoqueRow> {
  @override
  String get tableName => 'Estoque';

  @override
  EstoqueRow createRow(Map<String, dynamic> data) => EstoqueRow(data);
}

class EstoqueRow extends SupabaseDataRow {
  EstoqueRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstoqueTable();

  int get idEstoque => getField<int>('id_estoque')!;
  set idEstoque(int value) => setField<int>('id_estoque', value);

  int get fkIdMaterial => getField<int>('fk_id_material')!;
  set fkIdMaterial(int value) => setField<int>('fk_id_material', value);

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
}
