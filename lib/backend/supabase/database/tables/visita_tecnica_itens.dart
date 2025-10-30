import '../database.dart';

class VisitaTecnicaItensTable extends SupabaseTable<VisitaTecnicaItensRow> {
  @override
  String get tableName => 'VisitaTecnicaItens';

  @override
  VisitaTecnicaItensRow createRow(Map<String, dynamic> data) =>
      VisitaTecnicaItensRow(data);
}

class VisitaTecnicaItensRow extends SupabaseDataRow {
  VisitaTecnicaItensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VisitaTecnicaItensTable();

  int get idItem => getField<int>('id_item')!;
  set idItem(int value) => setField<int>('id_item', value);

  int get fkIdCategoria => getField<int>('fk_id_categoria')!;
  set fkIdCategoria(int value) => setField<int>('fk_id_categoria', value);

  String get nomeItem => getField<String>('nome_item')!;
  set nomeItem(String value) => setField<String>('nome_item', value);

  int? get ordemExibicao => getField<int>('ordem_exibicao');
  set ordemExibicao(int? value) => setField<int>('ordem_exibicao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  bool? get permiteValorAdicional => getField<bool>('permite_valor_adicional');
  set permiteValorAdicional(bool? value) =>
      setField<bool>('permite_valor_adicional', value);

  String? get tipoValorAdicional => getField<String>('tipo_valor_adicional');
  set tipoValorAdicional(String? value) =>
      setField<String>('tipo_valor_adicional', value);
}
