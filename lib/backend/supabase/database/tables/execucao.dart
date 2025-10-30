import '../database.dart';

class ExecucaoTable extends SupabaseTable<ExecucaoRow> {
  @override
  String get tableName => 'Execucao';

  @override
  ExecucaoRow createRow(Map<String, dynamic> data) => ExecucaoRow(data);
}

class ExecucaoRow extends SupabaseDataRow {
  ExecucaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExecucaoTable();

  int get idExecucao => getField<int>('id_execucao')!;
  set idExecucao(int value) => setField<int>('id_execucao', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  int get fkIdResponsavelSuperus => getField<int>('fk_id_responsavel_superus')!;
  set fkIdResponsavelSuperus(int value) =>
      setField<int>('fk_id_responsavel_superus', value);

  DateTime? get dataInicioMontagem =>
      getField<DateTime>('data_inicio_montagem');
  set dataInicioMontagem(DateTime? value) =>
      setField<DateTime>('data_inicio_montagem', value);

  double? get gpsLatitude => getField<double>('gps_latitude');
  set gpsLatitude(double? value) => setField<double>('gps_latitude', value);

  double? get gpsLongitude => getField<double>('gps_longitude');
  set gpsLongitude(double? value) => setField<double>('gps_longitude', value);

  String? get assinaturaSolicitanteUrl =>
      getField<String>('assinatura_solicitante_url');
  set assinaturaSolicitanteUrl(String? value) =>
      setField<String>('assinatura_solicitante_url', value);

  DateTime? get dataConclusaoMontagem =>
      getField<DateTime>('data_conclusao_montagem');
  set dataConclusaoMontagem(DateTime? value) =>
      setField<DateTime>('data_conclusao_montagem', value);
}
