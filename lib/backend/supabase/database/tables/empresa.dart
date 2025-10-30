import '../database.dart';

class EmpresaTable extends SupabaseTable<EmpresaRow> {
  @override
  String get tableName => 'Empresa';

  @override
  EmpresaRow createRow(Map<String, dynamic> data) => EmpresaRow(data);
}

class EmpresaRow extends SupabaseDataRow {
  EmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmpresaTable();

  String get nomeCliente => getField<String>('nome_cliente')!;
  set nomeCliente(String value) => setField<String>('nome_cliente', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get endereco => getField<String>('endereço');
  set endereco(String? value) => setField<String>('endereço', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  int? get numColigada => getField<int>('num_coligada');
  set numColigada(int? value) => setField<int>('num_coligada', value);

  String get uidEmpresa => getField<String>('uid_empresa')!;
  set uidEmpresa(String value) => setField<String>('uid_empresa', value);
}
