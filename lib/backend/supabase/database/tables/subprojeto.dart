import '../database.dart';

class SubprojetoTable extends SupabaseTable<SubprojetoRow> {
  @override
  String get tableName => 'Subprojeto';

  @override
  SubprojetoRow createRow(Map<String, dynamic> data) => SubprojetoRow(data);
}

class SubprojetoRow extends SupabaseDataRow {
  SubprojetoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubprojetoTable();

  int get idSubprojeto => getField<int>('id_subprojeto')!;
  set idSubprojeto(int value) => setField<int>('id_subprojeto', value);

  String? get nomeSub => getField<String>('nome_sub');
  set nomeSub(String? value) => setField<String>('nome_sub', value);

  String? get codCusto => getField<String>('cod_custo');
  set codCusto(String? value) => setField<String>('cod_custo', value);

  String? get codSup => getField<String>('cod_sup');
  set codSup(String? value) => setField<String>('cod_sup', value);

  String? get enderecoSub => getField<String>('endereco_sub');
  set enderecoSub(String? value) => setField<String>('endereco_sub', value);

  double? get frequeniaInv => getField<double>('frequenia_inv');
  set frequeniaInv(double? value) => setField<double>('frequenia_inv', value);

  String? get gestorSub => getField<String>('gestor_sub');
  set gestorSub(String? value) => setField<String>('gestor_sub', value);

  String? get statusSub => getField<String>('status_sub');
  set statusSub(String? value) => setField<String>('status_sub', value);

  double? get saldoInicial => getField<double>('saldo_inicial');
  set saldoInicial(double? value) => setField<double>('saldo_inicial', value);

  String? get tipoLocacao => getField<String>('tipo_locacao');
  set tipoLocacao(String? value) => setField<String>('tipo_locacao', value);

  double? get revalidacao => getField<double>('revalidacao');
  set revalidacao(double? value) => setField<double>('revalidacao', value);

  double? get prazoLocacao => getField<double>('prazo_locacao');
  set prazoLocacao(double? value) => setField<double>('prazo_locacao', value);

  double? get carencia => getField<double>('carencia');
  set carencia(double? value) => setField<double>('carencia', value);

  String? get localEstoque => getField<String>('local_estoque');
  set localEstoque(String? value) => setField<String>('local_estoque', value);

  int? get idProjeto => getField<int>('id_projeto');
  set idProjeto(int? value) => setField<int>('id_projeto', value);
}
