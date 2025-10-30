import '../database.dart';

class VisitaTecnicaCategoriasTable
    extends SupabaseTable<VisitaTecnicaCategoriasRow> {
  @override
  String get tableName => 'VisitaTecnicaCategorias';

  @override
  VisitaTecnicaCategoriasRow createRow(Map<String, dynamic> data) =>
      VisitaTecnicaCategoriasRow(data);
}

class VisitaTecnicaCategoriasRow extends SupabaseDataRow {
  VisitaTecnicaCategoriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VisitaTecnicaCategoriasTable();

  int get idCategoria => getField<int>('id_categoria')!;
  set idCategoria(int value) => setField<int>('id_categoria', value);

  String get nomeCategoria => getField<String>('nome_categoria')!;
  set nomeCategoria(String value) => setField<String>('nome_categoria', value);

  int? get ordemExibicao => getField<int>('ordem_exibicao');
  set ordemExibicao(int? value) => setField<int>('ordem_exibicao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
