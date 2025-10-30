import '../database.dart';

class FuncionariosTable extends SupabaseTable<FuncionariosRow> {
  @override
  String get tableName => 'Funcionarios';

  @override
  FuncionariosRow createRow(Map<String, dynamic> data) => FuncionariosRow(data);
}

class FuncionariosRow extends SupabaseDataRow {
  FuncionariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FuncionariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get matricula => getField<String>('matricula');
  set matricula(String? value) => setField<String>('matricula', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get empresaRef => getField<String>('empresa_ref');
  set empresaRef(String? value) => setField<String>('empresa_ref', value);

  int? get categoria => getField<int>('categoria');
  set categoria(int? value) => setField<int>('categoria', value);
}
