import '../database.dart';

class ResumoProgramacaoTable extends SupabaseTable<ResumoProgramacaoRow> {
  @override
  String get tableName => 'ResumoProgramacao';

  @override
  ResumoProgramacaoRow createRow(Map<String, dynamic> data) =>
      ResumoProgramacaoRow(data);
}

class ResumoProgramacaoRow extends SupabaseDataRow {
  ResumoProgramacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResumoProgramacaoTable();

  int? get visitaId => getField<int>('visita_id');
  set visitaId(int? value) => setField<int>('visita_id', value);

  String? get tipoTabela => getField<String>('tipo_tabela');
  set tipoTabela(String? value) => setField<String>('tipo_tabela', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);
}
