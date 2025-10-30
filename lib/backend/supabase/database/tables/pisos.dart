import '../database.dart';

class PisosTable extends SupabaseTable<PisosRow> {
  @override
  String get tableName => 'Pisos';

  @override
  PisosRow createRow(Map<String, dynamic> data) => PisosRow(data);
}

class PisosRow extends SupabaseDataRow {
  PisosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PisosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get nivel => getField<double>('nivel');
  set nivel(double? value) => setField<double>('nivel', value);

  double? get elevacao => getField<double>('elevacao');
  set elevacao(double? value) => setField<double>('elevacao', value);

  double? get comp => getField<double>('comp');
  set comp(double? value) => setField<double>('comp', value);

  double? get larg => getField<double>('larg');
  set larg(double? value) => setField<double>('larg', value);

  double? get areaDescontar => getField<double>('area_descontar');
  set areaDescontar(double? value) => setField<double>('area_descontar', value);

  double? get areaNivel => getField<double>('area_nivel');
  set areaNivel(double? value) => setField<double>('area_nivel', value);

  int? get visitaTecRef => getField<int>('visita_tec_ref');
  set visitaTecRef(int? value) => setField<int>('visita_tec_ref', value);
}
