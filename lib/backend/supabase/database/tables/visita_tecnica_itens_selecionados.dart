import '../database.dart';

class VisitaTecnicaItensSelecionadosTable
    extends SupabaseTable<VisitaTecnicaItensSelecionadosRow> {
  @override
  String get tableName => 'VisitaTecnicaItensSelecionados';

  @override
  VisitaTecnicaItensSelecionadosRow createRow(Map<String, dynamic> data) =>
      VisitaTecnicaItensSelecionadosRow(data);
}

class VisitaTecnicaItensSelecionadosRow extends SupabaseDataRow {
  VisitaTecnicaItensSelecionadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VisitaTecnicaItensSelecionadosTable();

  int get idSelecao => getField<int>('id_selecao')!;
  set idSelecao(int value) => setField<int>('id_selecao', value);

  int get fkIdVisita => getField<int>('fk_id_visita')!;
  set fkIdVisita(int value) => setField<int>('fk_id_visita', value);

  int get fkIdItem => getField<int>('fk_id_item')!;
  set fkIdItem(int value) => setField<int>('fk_id_item', value);

  DateTime? get dataSelecao => getField<DateTime>('data_selecao');
  set dataSelecao(DateTime? value) => setField<DateTime>('data_selecao', value);
}
