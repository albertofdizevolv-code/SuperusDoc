import '../database.dart';

class AprovacaoTable extends SupabaseTable<AprovacaoRow> {
  @override
  String get tableName => 'Aprovacao';

  @override
  AprovacaoRow createRow(Map<String, dynamic> data) => AprovacaoRow(data);
}

class AprovacaoRow extends SupabaseDataRow {
  AprovacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AprovacaoTable();

  int get idAprovacao => getField<int>('id_aprovacao')!;
  set idAprovacao(int value) => setField<int>('id_aprovacao', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataExecucaoAprovada =>
      getField<DateTime>('data_execucao_aprovada');
  set dataExecucaoAprovada(DateTime? value) =>
      setField<DateTime>('data_execucao_aprovada', value);

  DateTime? get validadoEm => getField<DateTime>('validado_em');
  set validadoEm(DateTime? value) => setField<DateTime>('validado_em', value);

  String? get documentoAprovacaoUrl =>
      getField<String>('documento_aprovacao_url');
  set documentoAprovacaoUrl(String? value) =>
      setField<String>('documento_aprovacao_url', value);

  String? get formularioExecucaoUrl =>
      getField<String>('formulario_execucao_url');
  set formularioExecucaoUrl(String? value) =>
      setField<String>('formulario_execucao_url', value);

  double? get volumeM3 => getField<double>('volume_m3');
  set volumeM3(double? value) => setField<double>('volume_m3', value);

  double? get areaM2 => getField<double>('area_m2');
  set areaM2(double? value) => setField<double>('area_m2', value);

  double? get materialAplicadoMl => getField<double>('material_aplicado_ml');
  set materialAplicadoMl(double? value) =>
      setField<double>('material_aplicado_ml', value);

  double? get areaPisoM2 => getField<double>('area_piso_m2');
  set areaPisoM2(double? value) => setField<double>('area_piso_m2', value);

  String? get assinaturaSolicitanteUrl =>
      getField<String>('assinatura_solicitante_url');
  set assinaturaSolicitanteUrl(String? value) =>
      setField<String>('assinatura_solicitante_url', value);

  String? get assinaturaResponsavelSuperusUrl =>
      getField<String>('assinatura_responsavel_superus_url');
  set assinaturaResponsavelSuperusUrl(String? value) =>
      setField<String>('assinatura_responsavel_superus_url', value);
}
