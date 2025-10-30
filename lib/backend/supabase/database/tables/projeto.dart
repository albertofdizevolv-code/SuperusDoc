import '../database.dart';

class ProjetoTable extends SupabaseTable<ProjetoRow> {
  @override
  String get tableName => 'Projeto';

  @override
  ProjetoRow createRow(Map<String, dynamic> data) => ProjetoRow(data);
}

class ProjetoRow extends SupabaseDataRow {
  ProjetoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProjetoTable();

  int get idProjeto => getField<int>('id_projeto')!;
  set idProjeto(int value) => setField<int>('id_projeto', value);

  String get nomeOp => getField<String>('nome_op')!;
  set nomeOp(String value) => setField<String>('nome_op', value);

  String? get codigoCentroCusto => getField<String>('codigo_centro_custo');
  set codigoCentroCusto(String? value) =>
      setField<String>('codigo_centro_custo', value);

  String? get clienteOp => getField<String>('cliente_op');
  set clienteOp(String? value) => setField<String>('cliente_op', value);

  String get enderecoOp => getField<String>('endereco_op')!;
  set enderecoOp(String value) => setField<String>('endereco_op', value);

  String? get gestorOp => getField<String>('gestor_op');
  set gestorOp(String? value) => setField<String>('gestor_op', value);

  String? get statusOp => getField<String>('status_op');
  set statusOp(String? value) => setField<String>('status_op', value);

  String? get tipoLoc => getField<String>('tipo_loc');
  set tipoLoc(String? value) => setField<String>('tipo_loc', value);

  String? get revalidacao => getField<String>('revalidacao');
  set revalidacao(String? value) => setField<String>('revalidacao', value);

  String? get prazo => getField<String>('prazo');
  set prazo(String? value) => setField<String>('prazo', value);

  String? get carencia => getField<String>('carencia');
  set carencia(String? value) => setField<String>('carencia', value);

  double? get localEstoque => getField<double>('local_estoque');
  set localEstoque(double? value) => setField<double>('local_estoque', value);

  String? get frequanciaInv => getField<String>('frequancia_inv');
  set frequanciaInv(String? value) => setField<String>('frequancia_inv', value);

  double? get saldoInicial => getField<double>('saldo_inicial');
  set saldoInicial(double? value) => setField<double>('saldo_inicial', value);

  String? get empresaRef => getField<String>('empresa_ref');
  set empresaRef(String? value) => setField<String>('empresa_ref', value);

  String? get codIdentificador => getField<String>('cod_identificador');
  set codIdentificador(String? value) =>
      setField<String>('cod_identificador', value);
}
