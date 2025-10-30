import '../database.dart';

class VwEquipeVisitaDetalhesTable
    extends SupabaseTable<VwEquipeVisitaDetalhesRow> {
  @override
  String get tableName => 'vw_equipe_visita_detalhes';

  @override
  VwEquipeVisitaDetalhesRow createRow(Map<String, dynamic> data) =>
      VwEquipeVisitaDetalhesRow(data);
}

class VwEquipeVisitaDetalhesRow extends SupabaseDataRow {
  VwEquipeVisitaDetalhesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwEquipeVisitaDetalhesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get visitaTecRef => getField<int>('visita_tec_ref');
  set visitaTecRef(int? value) => setField<int>('visita_tec_ref', value);

  int? get funcionarioRef => getField<int>('funcionario_ref');
  set funcionarioRef(int? value) => setField<int>('funcionario_ref', value);

  String? get nomeFuncionario => getField<String>('nome_funcionario');
  set nomeFuncionario(String? value) =>
      setField<String>('nome_funcionario', value);

  String? get nomeCargo => getField<String>('nome_cargo');
  set nomeCargo(String? value) => setField<String>('nome_cargo', value);

  String? get tagCargo => getField<String>('tag_cargo');
  set tagCargo(String? value) => setField<String>('tag_cargo', value);

  int? get categoriaCargo => getField<int>('categoria_cargo');
  set categoriaCargo(int? value) => setField<int>('categoria_cargo', value);

  PostgresTime? get horaInicio => getField<PostgresTime>('hora_inicio');
  set horaInicio(PostgresTime? value) =>
      setField<PostgresTime>('hora_inicio', value);

  PostgresTime? get horaFim => getField<PostgresTime>('hora_fim');
  set horaFim(PostgresTime? value) => setField<PostgresTime>('hora_fim', value);

  double? get horasTotais => getField<double>('horas_totais');
  set horasTotais(double? value) => setField<double>('horas_totais', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
