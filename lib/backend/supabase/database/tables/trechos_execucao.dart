import '../database.dart';

class TrechosExecucaoTable extends SupabaseTable<TrechosExecucaoRow> {
  @override
  String get tableName => 'TrechosExecucao';

  @override
  TrechosExecucaoRow createRow(Map<String, dynamic> data) =>
      TrechosExecucaoRow(data);
}

class TrechosExecucaoRow extends SupabaseDataRow {
  TrechosExecucaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrechosExecucaoTable();

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

  int? get execucaoRef => getField<int>('execucao_ref');
  set execucaoRef(int? value) => setField<int>('execucao_ref', value);

  int? get preenchimentoDiarioFk => getField<int>('preenchimento_diario_fk');
  set preenchimentoDiarioFk(int? value) =>
      setField<int>('preenchimento_diario_fk', value);
}
