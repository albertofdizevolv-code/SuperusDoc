import '../database.dart';

class ProgramacaoVisitaTable extends SupabaseTable<ProgramacaoVisitaRow> {
  @override
  String get tableName => 'ProgramacaoVisita';

  @override
  ProgramacaoVisitaRow createRow(Map<String, dynamic> data) =>
      ProgramacaoVisitaRow(data);
}

class ProgramacaoVisitaRow extends SupabaseDataRow {
  ProgramacaoVisitaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgramacaoVisitaTable();

  int get idProgramacaoVisita => getField<int>('id_programacao_visita')!;
  set idProgramacaoVisita(int value) =>
      setField<int>('id_programacao_visita', value);

  int? get fkIdSsa => getField<int>('fk_id_ssa');
  set fkIdSsa(int? value) => setField<int>('fk_id_ssa', value);

  DateTime? get dataInicioPrevista =>
      getField<DateTime>('data_inicio_prevista');
  set dataInicioPrevista(DateTime? value) =>
      setField<DateTime>('data_inicio_prevista', value);

  DateTime? get dataFimPrevista => getField<DateTime>('data_fim_prevista');
  set dataFimPrevista(DateTime? value) =>
      setField<DateTime>('data_fim_prevista', value);

  int? get fkIdResponsavel => getField<int>('fk_id_responsavel');
  set fkIdResponsavel(int? value) => setField<int>('fk_id_responsavel', value);
}
