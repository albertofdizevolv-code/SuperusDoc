import '../database.dart';

class TrechosTable extends SupabaseTable<TrechosRow> {
  @override
  String get tableName => 'Trechos';

  @override
  TrechosRow createRow(Map<String, dynamic> data) => TrechosRow(data);
}

class TrechosRow extends SupabaseDataRow {
  TrechosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrechosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get trecho => getField<String>('trecho');
  set trecho(String? value) => setField<String>('trecho', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  double? get comp => getField<double>('comp');
  set comp(double? value) => setField<double>('comp', value);

  double? get alt => getField<double>('alt');
  set alt(double? value) => setField<double>('alt', value);

  double? get larg => getField<double>('larg');
  set larg(double? value) => setField<double>('larg', value);

  double? get vDesc => getField<double>('v_desc');
  set vDesc(double? value) => setField<double>('v_desc', value);

  double? get vTotal => getField<double>('v_total');
  set vTotal(double? value) => setField<double>('v_total', value);

  int? get visitaTecRef => getField<int>('visita_tec_ref');
  set visitaTecRef(int? value) => setField<int>('visita_tec_ref', value);
}
