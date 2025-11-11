// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FmPisoStruct extends BaseStruct {
  FmPisoStruct({
    int? id,
    int? fkInterno,

    /// cadastrar nivel
    double? nivelPiso,

    /// cadastrar nivel
    double? elevacao,

    /// cadastrar nivel
    double? comprimento,

    /// cadastrar nivel
    double? largura,

    /// cadastrar nivel
    double? areaDescontar,
    double? areaNivel,
  })  : _id = id,
        _fkInterno = fkInterno,
        _nivelPiso = nivelPiso,
        _elevacao = elevacao,
        _comprimento = comprimento,
        _largura = largura,
        _areaDescontar = areaDescontar,
        _areaNivel = areaNivel;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "fk_interno" field.
  int? _fkInterno;
  int get fkInterno => _fkInterno ?? 0;
  set fkInterno(int? val) => _fkInterno = val;

  void incrementFkInterno(int amount) => fkInterno = fkInterno + amount;

  bool hasFkInterno() => _fkInterno != null;

  // "nivel_Piso" field.
  double? _nivelPiso;
  double get nivelPiso => _nivelPiso ?? 0.0;
  set nivelPiso(double? val) => _nivelPiso = val;

  void incrementNivelPiso(double amount) => nivelPiso = nivelPiso + amount;

  bool hasNivelPiso() => _nivelPiso != null;

  // "elevacao" field.
  double? _elevacao;
  double get elevacao => _elevacao ?? 0.0;
  set elevacao(double? val) => _elevacao = val;

  void incrementElevacao(double amount) => elevacao = elevacao + amount;

  bool hasElevacao() => _elevacao != null;

  // "comprimento" field.
  double? _comprimento;
  double get comprimento => _comprimento ?? 0.0;
  set comprimento(double? val) => _comprimento = val;

  void incrementComprimento(double amount) =>
      comprimento = comprimento + amount;

  bool hasComprimento() => _comprimento != null;

  // "largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  set largura(double? val) => _largura = val;

  void incrementLargura(double amount) => largura = largura + amount;

  bool hasLargura() => _largura != null;

  // "area_descontar" field.
  double? _areaDescontar;
  double get areaDescontar => _areaDescontar ?? 0.0;
  set areaDescontar(double? val) => _areaDescontar = val;

  void incrementAreaDescontar(double amount) =>
      areaDescontar = areaDescontar + amount;

  bool hasAreaDescontar() => _areaDescontar != null;

  // "area_nivel" field.
  double? _areaNivel;
  double get areaNivel => _areaNivel ?? 0.0;
  set areaNivel(double? val) => _areaNivel = val;

  void incrementAreaNivel(double amount) => areaNivel = areaNivel + amount;

  bool hasAreaNivel() => _areaNivel != null;

  static FmPisoStruct fromMap(Map<String, dynamic> data) => FmPisoStruct(
        id: castToType<int>(data['id']),
        fkInterno: castToType<int>(data['fk_interno']),
        nivelPiso: castToType<double>(data['nivel_Piso']),
        elevacao: castToType<double>(data['elevacao']),
        comprimento: castToType<double>(data['comprimento']),
        largura: castToType<double>(data['largura']),
        areaDescontar: castToType<double>(data['area_descontar']),
        areaNivel: castToType<double>(data['area_nivel']),
      );

  static FmPisoStruct? maybeFromMap(dynamic data) =>
      data is Map ? FmPisoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fk_interno': _fkInterno,
        'nivel_Piso': _nivelPiso,
        'elevacao': _elevacao,
        'comprimento': _comprimento,
        'largura': _largura,
        'area_descontar': _areaDescontar,
        'area_nivel': _areaNivel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'fk_interno': serializeParam(
          _fkInterno,
          ParamType.int,
        ),
        'nivel_Piso': serializeParam(
          _nivelPiso,
          ParamType.double,
        ),
        'elevacao': serializeParam(
          _elevacao,
          ParamType.double,
        ),
        'comprimento': serializeParam(
          _comprimento,
          ParamType.double,
        ),
        'largura': serializeParam(
          _largura,
          ParamType.double,
        ),
        'area_descontar': serializeParam(
          _areaDescontar,
          ParamType.double,
        ),
        'area_nivel': serializeParam(
          _areaNivel,
          ParamType.double,
        ),
      }.withoutNulls;

  static FmPisoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FmPisoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        fkInterno: deserializeParam(
          data['fk_interno'],
          ParamType.int,
          false,
        ),
        nivelPiso: deserializeParam(
          data['nivel_Piso'],
          ParamType.double,
          false,
        ),
        elevacao: deserializeParam(
          data['elevacao'],
          ParamType.double,
          false,
        ),
        comprimento: deserializeParam(
          data['comprimento'],
          ParamType.double,
          false,
        ),
        largura: deserializeParam(
          data['largura'],
          ParamType.double,
          false,
        ),
        areaDescontar: deserializeParam(
          data['area_descontar'],
          ParamType.double,
          false,
        ),
        areaNivel: deserializeParam(
          data['area_nivel'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FmPisoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FmPisoStruct &&
        id == other.id &&
        fkInterno == other.fkInterno &&
        nivelPiso == other.nivelPiso &&
        elevacao == other.elevacao &&
        comprimento == other.comprimento &&
        largura == other.largura &&
        areaDescontar == other.areaDescontar &&
        areaNivel == other.areaNivel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        fkInterno,
        nivelPiso,
        elevacao,
        comprimento,
        largura,
        areaDescontar,
        areaNivel
      ]);
}

FmPisoStruct createFmPisoStruct({
  int? id,
  int? fkInterno,
  double? nivelPiso,
  double? elevacao,
  double? comprimento,
  double? largura,
  double? areaDescontar,
  double? areaNivel,
}) =>
    FmPisoStruct(
      id: id,
      fkInterno: fkInterno,
      nivelPiso: nivelPiso,
      elevacao: elevacao,
      comprimento: comprimento,
      largura: largura,
      areaDescontar: areaDescontar,
      areaNivel: areaNivel,
    );
