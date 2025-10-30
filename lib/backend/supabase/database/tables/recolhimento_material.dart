import '../database.dart';

class RecolhimentoMaterialTable extends SupabaseTable<RecolhimentoMaterialRow> {
  @override
  String get tableName => 'RecolhimentoMaterial';

  @override
  RecolhimentoMaterialRow createRow(Map<String, dynamic> data) =>
      RecolhimentoMaterialRow(data);
}

class RecolhimentoMaterialRow extends SupabaseDataRow {
  RecolhimentoMaterialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecolhimentoMaterialTable();

  int get idRecolhimento => getField<int>('id_recolhimento')!;
  set idRecolhimento(int value) => setField<int>('id_recolhimento', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataRecolhimento => getField<DateTime>('data_recolhimento');
  set dataRecolhimento(DateTime? value) =>
      setField<DateTime>('data_recolhimento', value);

  String? get assinaturaResponsavelUrl =>
      getField<String>('assinatura_responsavel_url');
  set assinaturaResponsavelUrl(String? value) =>
      setField<String>('assinatura_responsavel_url', value);
}
