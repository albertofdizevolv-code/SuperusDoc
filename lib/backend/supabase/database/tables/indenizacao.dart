import '../database.dart';

class IndenizacaoTable extends SupabaseTable<IndenizacaoRow> {
  @override
  String get tableName => 'Indenizacao';

  @override
  IndenizacaoRow createRow(Map<String, dynamic> data) => IndenizacaoRow(data);
}

class IndenizacaoRow extends SupabaseDataRow {
  IndenizacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IndenizacaoTable();

  int get idIndenizacao => getField<int>('id_indenizacao')!;
  set idIndenizacao(int value) => setField<int>('id_indenizacao', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  int get fkIdResponsavelAbertura =>
      getField<int>('fk_id_responsavel_abertura')!;
  set fkIdResponsavelAbertura(int value) =>
      setField<int>('fk_id_responsavel_abertura', value);

  DateTime? get dataAbertura => getField<DateTime>('data_abertura');
  set dataAbertura(DateTime? value) =>
      setField<DateTime>('data_abertura', value);

  String get tipoOcorrencia => getField<String>('tipo_ocorrencia')!;
  set tipoOcorrencia(String value) =>
      setField<String>('tipo_ocorrencia', value);

  String? get descricaoOcorrencia => getField<String>('descricao_ocorrencia');
  set descricaoOcorrencia(String? value) =>
      setField<String>('descricao_ocorrencia', value);

  String? get fotosUrl => getField<String>('fotos_url');
  set fotosUrl(String? value) => setField<String>('fotos_url', value);

  String? get numeroRelatorio => getField<String>('numero_relatorio');
  set numeroRelatorio(String? value) =>
      setField<String>('numero_relatorio', value);

  String? get periodoMedicao => getField<String>('periodo_medicao');
  set periodoMedicao(String? value) =>
      setField<String>('periodo_medicao', value);

  DateTime? get dataRegistro => getField<DateTime>('data_registro');
  set dataRegistro(DateTime? value) =>
      setField<DateTime>('data_registro', value);
}
