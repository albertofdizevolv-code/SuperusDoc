import '../database.dart';

class RevalidacaoTable extends SupabaseTable<RevalidacaoRow> {
  @override
  String get tableName => 'Revalidacao';

  @override
  RevalidacaoRow createRow(Map<String, dynamic> data) => RevalidacaoRow(data);
}

class RevalidacaoRow extends SupabaseDataRow {
  RevalidacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RevalidacaoTable();

  int get idRevalidacao => getField<int>('id_revalidacao')!;
  set idRevalidacao(int value) => setField<int>('id_revalidacao', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  String? get fotosPlacaAndaimeUrl =>
      getField<String>('fotos_placa_andaime_url');
  set fotosPlacaAndaimeUrl(String? value) =>
      setField<String>('fotos_placa_andaime_url', value);

  String? get fotosAndaimeUrl => getField<String>('fotos_andaime_url');
  set fotosAndaimeUrl(String? value) =>
      setField<String>('fotos_andaime_url', value);
}
