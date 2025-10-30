import '../database.dart';

class UsuarioTable extends SupabaseTable<UsuarioRow> {
  @override
  String get tableName => 'Usuario';

  @override
  UsuarioRow createRow(Map<String, dynamic> data) => UsuarioRow(data);
}

class UsuarioRow extends SupabaseDataRow {
  UsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuarioTable();

  int get idUsuario => getField<int>('id_usuario')!;
  set idUsuario(int value) => setField<int>('id_usuario', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get cpf => getField<String>('cpf')!;
  set cpf(String value) => setField<String>('cpf', value);

  String get authUser => getField<String>('auth_user')!;
  set authUser(String value) => setField<String>('auth_user', value);

  int? get empresaRef => getField<int>('empresa_ref');
  set empresaRef(int? value) => setField<int>('empresa_ref', value);

  int? get perfilAcess => getField<int>('perfil_acess');
  set perfilAcess(int? value) => setField<int>('perfil_acess', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
