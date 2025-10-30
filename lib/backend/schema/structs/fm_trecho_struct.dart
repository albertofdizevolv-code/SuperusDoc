// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FmTrechoStruct extends BaseStruct {
  FmTrechoStruct({
    int? fkId,
    int? fkInterno,

    /// cadastrar trecho
    String? trecho,

    /// A lista vem dos checkbox do tipo do Andaime.
    String? tipoTrecho,

    /// cadastrar trecho
    double? comprimento,

    /// cadastrar trecho
    double? altura,

    /// cadastrar trecho
    double? largura,
    double? descontar,
    double? volumeTotal,
  })  : _fkId = fkId,
        _fkInterno = fkInterno,
        _trecho = trecho,
        _tipoTrecho = tipoTrecho,
        _comprimento = comprimento,
        _altura = altura,
        _largura = largura,
        _descontar = descontar,
        _volumeTotal = volumeTotal;

  // "fk_id" field.
  int? _fkId;
  int get fkId => _fkId ?? 0;
  set fkId(int? val) => _fkId = val;

  void incrementFkId(int amount) => fkId = fkId + amount;

  bool hasFkId() => _fkId != null;

  // "fk_interno" field.
  int? _fkInterno;
  int get fkInterno => _fkInterno ?? 0;
  set fkInterno(int? val) => _fkInterno = val;

  void incrementFkInterno(int amount) => fkInterno = fkInterno + amount;

  bool hasFkInterno() => _fkInterno != null;

  // "trecho" field.
  String? _trecho;
  String get trecho => _trecho ?? '';
  set trecho(String? val) => _trecho = val;

  bool hasTrecho() => _trecho != null;

  // "tipo_trecho" field.
  String? _tipoTrecho;
  String get tipoTrecho => _tipoTrecho ?? '';
  set tipoTrecho(String? val) => _tipoTrecho = val;

  bool hasTipoTrecho() => _tipoTrecho != null;

  // "comprimento" field.
  double? _comprimento;
  double get comprimento => _comprimento ?? 0.0;
  set comprimento(double? val) => _comprimento = val;

  void incrementComprimento(double amount) =>
      comprimento = comprimento + amount;

  bool hasComprimento() => _comprimento != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  set altura(double? val) => _altura = val;

  void incrementAltura(double amount) => altura = altura + amount;

  bool hasAltura() => _altura != null;

  // "largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  set largura(double? val) => _largura = val;

  void incrementLargura(double amount) => largura = largura + amount;

  bool hasLargura() => _largura != null;

  // "descontar" field.
  double? _descontar;
  double get descontar => _descontar ?? 0.0;
  set descontar(double? val) => _descontar = val;

  void incrementDescontar(double amount) => descontar = descontar + amount;

  bool hasDescontar() => _descontar != null;

  // "volume_total" field.
  double? _volumeTotal;
  double get volumeTotal => _volumeTotal ?? 0.0;
  set volumeTotal(double? val) => _volumeTotal = val;

  void incrementVolumeTotal(double amount) =>
      volumeTotal = volumeTotal + amount;

  bool hasVolumeTotal() => _volumeTotal != null;

  static FmTrechoStruct fromMap(Map<String, dynamic> data) => FmTrechoStruct(
        fkId: castToType<int>(data['fk_id']),
        fkInterno: castToType<int>(data['fk_interno']),
        trecho: data['trecho'] as String?,
        tipoTrecho: data['tipo_trecho'] as String?,
        comprimento: castToType<double>(data['comprimento']),
        altura: castToType<double>(data['altura']),
        largura: castToType<double>(data['largura']),
        descontar: castToType<double>(data['descontar']),
        volumeTotal: castToType<double>(data['volume_total']),
      );

  static FmTrechoStruct? maybeFromMap(dynamic data) =>
      data is Map ? FmTrechoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fk_id': _fkId,
        'fk_interno': _fkInterno,
        'trecho': _trecho,
        'tipo_trecho': _tipoTrecho,
        'comprimento': _comprimento,
        'altura': _altura,
        'largura': _largura,
        'descontar': _descontar,
        'volume_total': _volumeTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fk_id': serializeParam(
          _fkId,
          ParamType.int,
        ),
        'fk_interno': serializeParam(
          _fkInterno,
          ParamType.int,
        ),
        'trecho': serializeParam(
          _trecho,
          ParamType.String,
        ),
        'tipo_trecho': serializeParam(
          _tipoTrecho,
          ParamType.String,
        ),
        'comprimento': serializeParam(
          _comprimento,
          ParamType.double,
        ),
        'altura': serializeParam(
          _altura,
          ParamType.double,
        ),
        'largura': serializeParam(
          _largura,
          ParamType.double,
        ),
        'descontar': serializeParam(
          _descontar,
          ParamType.double,
        ),
        'volume_total': serializeParam(
          _volumeTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static FmTrechoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FmTrechoStruct(
        fkId: deserializeParam(
          data['fk_id'],
          ParamType.int,
          false,
        ),
        fkInterno: deserializeParam(
          data['fk_interno'],
          ParamType.int,
          false,
        ),
        trecho: deserializeParam(
          data['trecho'],
          ParamType.String,
          false,
        ),
        tipoTrecho: deserializeParam(
          data['tipo_trecho'],
          ParamType.String,
          false,
        ),
        comprimento: deserializeParam(
          data['comprimento'],
          ParamType.double,
          false,
        ),
        altura: deserializeParam(
          data['altura'],
          ParamType.double,
          false,
        ),
        largura: deserializeParam(
          data['largura'],
          ParamType.double,
          false,
        ),
        descontar: deserializeParam(
          data['descontar'],
          ParamType.double,
          false,
        ),
        volumeTotal: deserializeParam(
          data['volume_total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FmTrechoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FmTrechoStruct &&
        fkId == other.fkId &&
        fkInterno == other.fkInterno &&
        trecho == other.trecho &&
        tipoTrecho == other.tipoTrecho &&
        comprimento == other.comprimento &&
        altura == other.altura &&
        largura == other.largura &&
        descontar == other.descontar &&
        volumeTotal == other.volumeTotal;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fkId,
        fkInterno,
        trecho,
        tipoTrecho,
        comprimento,
        altura,
        largura,
        descontar,
        volumeTotal
      ]);
}

FmTrechoStruct createFmTrechoStruct({
  int? fkId,
  int? fkInterno,
  String? trecho,
  String? tipoTrecho,
  double? comprimento,
  double? altura,
  double? largura,
  double? descontar,
  double? volumeTotal,
}) =>
    FmTrechoStruct(
      fkId: fkId,
      fkInterno: fkInterno,
      trecho: trecho,
      tipoTrecho: tipoTrecho,
      comprimento: comprimento,
      altura: altura,
      largura: largura,
      descontar: descontar,
      volumeTotal: volumeTotal,
    );
