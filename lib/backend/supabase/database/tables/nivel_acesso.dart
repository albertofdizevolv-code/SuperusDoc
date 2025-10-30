import '../database.dart';

class NivelAcessoTable extends SupabaseTable<NivelAcessoRow> {
  @override
  String get tableName => 'nivel_acesso';

  @override
  NivelAcessoRow createRow(Map<String, dynamic> data) => NivelAcessoRow(data);
}

class NivelAcessoRow extends SupabaseDataRow {
  NivelAcessoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NivelAcessoTable();

  int get idNivel => getField<int>('id_nivel')!;
  set idNivel(int value) => setField<int>('id_nivel', value);

  String get nomeNivel => getField<String>('nome_nivel')!;
  set nomeNivel(String value) => setField<String>('nome_nivel', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  dynamic get permissoes => getField<dynamic>('permissoes');
  set permissoes(dynamic value) => setField<dynamic>('permissoes', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
