import '../database.dart';

class SolicitanteTable extends SupabaseTable<SolicitanteRow> {
  @override
  String get tableName => 'Solicitante';

  @override
  SolicitanteRow createRow(Map<String, dynamic> data) => SolicitanteRow(data);
}

class SolicitanteRow extends SupabaseDataRow {
  SolicitanteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SolicitanteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get projetoRef => getField<int>('projeto_ref');
  set projetoRef(int? value) => setField<int>('projeto_ref', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get encarregadoResponsavel =>
      getField<String>('encarregado_responsavel');
  set encarregadoResponsavel(String? value) =>
      setField<String>('encarregado_responsavel', value);

  String? get encarregadoContato => getField<String>('encarregado_contato');
  set encarregadoContato(String? value) =>
      setField<String>('encarregado_contato', value);
}
