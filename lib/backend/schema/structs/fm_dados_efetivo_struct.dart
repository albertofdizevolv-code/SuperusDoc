// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Dados efetivo da Programação
class FmDadosEfetivoStruct extends BaseStruct {
  FmDadosEfetivoStruct({
    int? fkIdUser,
    int? fkInterno,
    String? nome,
    String? funcao,
    DateTime? horarioInicio,
    DateTime? horaTermino,
    double? horasTotais,
  })  : _fkIdUser = fkIdUser,
        _fkInterno = fkInterno,
        _nome = nome,
        _funcao = funcao,
        _horarioInicio = horarioInicio,
        _horaTermino = horaTermino,
        _horasTotais = horasTotais;

  // "fk_id_user" field.
  int? _fkIdUser;
  int get fkIdUser => _fkIdUser ?? 0;
  set fkIdUser(int? val) => _fkIdUser = val;

  void incrementFkIdUser(int amount) => fkIdUser = fkIdUser + amount;

  bool hasFkIdUser() => _fkIdUser != null;

  // "fk_interno" field.
  int? _fkInterno;
  int get fkInterno => _fkInterno ?? 0;
  set fkInterno(int? val) => _fkInterno = val;

  void incrementFkInterno(int amount) => fkInterno = fkInterno + amount;

  bool hasFkInterno() => _fkInterno != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Funcao" field.
  String? _funcao;
  String get funcao => _funcao ?? '';
  set funcao(String? val) => _funcao = val;

  bool hasFuncao() => _funcao != null;

  // "horarioInicio" field.
  DateTime? _horarioInicio;
  DateTime? get horarioInicio => _horarioInicio;
  set horarioInicio(DateTime? val) => _horarioInicio = val;

  bool hasHorarioInicio() => _horarioInicio != null;

  // "horaTermino" field.
  DateTime? _horaTermino;
  DateTime? get horaTermino => _horaTermino;
  set horaTermino(DateTime? val) => _horaTermino = val;

  bool hasHoraTermino() => _horaTermino != null;

  // "horasTotais" field.
  double? _horasTotais;
  double get horasTotais => _horasTotais ?? 0.0;
  set horasTotais(double? val) => _horasTotais = val;

  void incrementHorasTotais(double amount) =>
      horasTotais = horasTotais + amount;

  bool hasHorasTotais() => _horasTotais != null;

  static FmDadosEfetivoStruct fromMap(Map<String, dynamic> data) =>
      FmDadosEfetivoStruct(
        fkIdUser: castToType<int>(data['fk_id_user']),
        fkInterno: castToType<int>(data['fk_interno']),
        nome: data['Nome'] as String?,
        funcao: data['Funcao'] as String?,
        horarioInicio: data['horarioInicio'] as DateTime?,
        horaTermino: data['horaTermino'] as DateTime?,
        horasTotais: castToType<double>(data['horasTotais']),
      );

  static FmDadosEfetivoStruct? maybeFromMap(dynamic data) => data is Map
      ? FmDadosEfetivoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fk_id_user': _fkIdUser,
        'fk_interno': _fkInterno,
        'Nome': _nome,
        'Funcao': _funcao,
        'horarioInicio': _horarioInicio,
        'horaTermino': _horaTermino,
        'horasTotais': _horasTotais,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fk_id_user': serializeParam(
          _fkIdUser,
          ParamType.int,
        ),
        'fk_interno': serializeParam(
          _fkInterno,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Funcao': serializeParam(
          _funcao,
          ParamType.String,
        ),
        'horarioInicio': serializeParam(
          _horarioInicio,
          ParamType.DateTime,
        ),
        'horaTermino': serializeParam(
          _horaTermino,
          ParamType.DateTime,
        ),
        'horasTotais': serializeParam(
          _horasTotais,
          ParamType.double,
        ),
      }.withoutNulls;

  static FmDadosEfetivoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FmDadosEfetivoStruct(
        fkIdUser: deserializeParam(
          data['fk_id_user'],
          ParamType.int,
          false,
        ),
        fkInterno: deserializeParam(
          data['fk_interno'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        funcao: deserializeParam(
          data['Funcao'],
          ParamType.String,
          false,
        ),
        horarioInicio: deserializeParam(
          data['horarioInicio'],
          ParamType.DateTime,
          false,
        ),
        horaTermino: deserializeParam(
          data['horaTermino'],
          ParamType.DateTime,
          false,
        ),
        horasTotais: deserializeParam(
          data['horasTotais'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FmDadosEfetivoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FmDadosEfetivoStruct &&
        fkIdUser == other.fkIdUser &&
        fkInterno == other.fkInterno &&
        nome == other.nome &&
        funcao == other.funcao &&
        horarioInicio == other.horarioInicio &&
        horaTermino == other.horaTermino &&
        horasTotais == other.horasTotais;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fkIdUser,
        fkInterno,
        nome,
        funcao,
        horarioInicio,
        horaTermino,
        horasTotais
      ]);
}

FmDadosEfetivoStruct createFmDadosEfetivoStruct({
  int? fkIdUser,
  int? fkInterno,
  String? nome,
  String? funcao,
  DateTime? horarioInicio,
  DateTime? horaTermino,
  double? horasTotais,
}) =>
    FmDadosEfetivoStruct(
      fkIdUser: fkIdUser,
      fkInterno: fkInterno,
      nome: nome,
      funcao: funcao,
      horarioInicio: horarioInicio,
      horaTermino: horaTermino,
      horasTotais: horasTotais,
    );
