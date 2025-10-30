import '../database.dart';

class VwFuncionariosCargosTable extends SupabaseTable<VwFuncionariosCargosRow> {
  @override
  String get tableName => 'vw_funcionarios_cargos';

  @override
  VwFuncionariosCargosRow createRow(Map<String, dynamic> data) =>
      VwFuncionariosCargosRow(data);
}

class VwFuncionariosCargosRow extends SupabaseDataRow {
  VwFuncionariosCargosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwFuncionariosCargosTable();

  int? get funcionarioId => getField<int>('funcionario_id');
  set funcionarioId(int? value) => setField<int>('funcionario_id', value);

  String? get funcionarioNome => getField<String>('funcionario_nome');
  set funcionarioNome(String? value) =>
      setField<String>('funcionario_nome', value);

  String? get matricula => getField<String>('matricula');
  set matricula(String? value) => setField<String>('matricula', value);

  String? get empresaUid => getField<String>('empresa_uid');
  set empresaUid(String? value) => setField<String>('empresa_uid', value);

  int? get cargoId => getField<int>('cargo_id');
  set cargoId(int? value) => setField<int>('cargo_id', value);

  String? get cargoNome => getField<String>('cargo_nome');
  set cargoNome(String? value) => setField<String>('cargo_nome', value);

  String? get cargoTag => getField<String>('cargo_tag');
  set cargoTag(String? value) => setField<String>('cargo_tag', value);

  int? get cargoCategoria => getField<int>('cargo_categoria');
  set cargoCategoria(int? value) => setField<int>('cargo_categoria', value);
}
