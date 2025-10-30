import '../database.dart';

class ExecucaoMontagemDiariaTable
    extends SupabaseTable<ExecucaoMontagemDiariaRow> {
  @override
  String get tableName => 'ExecucaoMontagemDiaria';

  @override
  ExecucaoMontagemDiariaRow createRow(Map<String, dynamic> data) =>
      ExecucaoMontagemDiariaRow(data);
}

class ExecucaoMontagemDiariaRow extends SupabaseDataRow {
  ExecucaoMontagemDiariaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExecucaoMontagemDiariaTable();

  int get idExecucaoDiaria => getField<int>('id_execucao_diaria')!;
  set idExecucaoDiaria(int value) => setField<int>('id_execucao_diaria', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get fkExecucao => getField<int>('fk_execucao')!;
  set fkExecucao(int value) => setField<int>('fk_execucao', value);

  DateTime get dataExecucao => getField<DateTime>('data_execucao')!;
  set dataExecucao(DateTime value) =>
      setField<DateTime>('data_execucao', value);

  int? get responsavelRef => getField<int>('responsavel_ref');
  set responsavelRef(int? value) => setField<int>('responsavel_ref', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  List<String> get fotosAntigasUrl => getListField<String>('fotos_antigas_url');
  set fotosAntigasUrl(List<String>? value) =>
      setListField<String>('fotos_antigas_url', value);

  List<String> get fotosNovasUrl => getListField<String>('fotos_novas_url');
  set fotosNovasUrl(List<String>? value) =>
      setListField<String>('fotos_novas_url', value);

  String? get anexosUrl => getField<String>('anexos_url');
  set anexosUrl(String? value) => setField<String>('anexos_url', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get assinaturaResponsavelUrl =>
      getField<String>('assinatura_responsavel_url');
  set assinaturaResponsavelUrl(String? value) =>
      setField<String>('assinatura_responsavel_url', value);
}
