import '../database.dart';

class ProgramacaoTable extends SupabaseTable<ProgramacaoRow> {
  @override
  String get tableName => 'Programacao';

  @override
  ProgramacaoRow createRow(Map<String, dynamic> data) => ProgramacaoRow(data);
}

class ProgramacaoRow extends SupabaseDataRow {
  ProgramacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgramacaoTable();

  int get idProgramacao => getField<int>('id_programacao')!;
  set idProgramacao(int value) => setField<int>('id_programacao', value);

  int get fkIdSsa => getField<int>('fk_id_ssa')!;
  set fkIdSsa(int value) => setField<int>('fk_id_ssa', value);

  int get fkIdResponsavelExecucao =>
      getField<int>('fk_id_responsavel_execucao')!;
  set fkIdResponsavelExecucao(int value) =>
      setField<int>('fk_id_responsavel_execucao', value);

  int get fkIdSolicitanteCliente => getField<int>('fk_id_solicitante_cliente')!;
  set fkIdSolicitanteCliente(int value) =>
      setField<int>('fk_id_solicitante_cliente', value);

  DateTime? get dataInicioPrevista =>
      getField<DateTime>('data_inicio_prevista');
  set dataInicioPrevista(DateTime? value) =>
      setField<DateTime>('data_inicio_prevista', value);

  DateTime? get dataFimPrevista => getField<DateTime>('data_fim_prevista');
  set dataFimPrevista(DateTime? value) =>
      setField<DateTime>('data_fim_prevista', value);

  double? get volumeAndaimeM3 => getField<double>('volume_andaime_m3');
  set volumeAndaimeM3(double? value) =>
      setField<double>('volume_andaime_m3', value);

  double? get areaPisoM2 => getField<double>('area_piso_m2');
  set areaPisoM2(double? value) => setField<double>('area_piso_m2', value);

  double? get metragemLinearM => getField<double>('metragem_linear_m');
  set metragemLinearM(double? value) =>
      setField<double>('metragem_linear_m', value);

  double? get homemHoraHh => getField<double>('homem_hora_hh');
  set homemHoraHh(double? value) => setField<double>('homem_hora_hh', value);

  double? get totalMaterialTubularM =>
      getField<double>('total_material_tubular_m');
  set totalMaterialTubularM(double? value) =>
      setField<double>('total_material_tubular_m', value);
}
