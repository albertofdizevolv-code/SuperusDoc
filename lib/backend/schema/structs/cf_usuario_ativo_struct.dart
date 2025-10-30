// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// cf = configurações
class CfUsuarioAtivoStruct extends BaseStruct {
  CfUsuarioAtivoStruct({
    int? id,
    String? nome,
  })  : _id = id,
        _nome = nome;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static CfUsuarioAtivoStruct fromMap(Map<String, dynamic> data) =>
      CfUsuarioAtivoStruct(
        id: castToType<int>(data['id']),
        nome: data['Nome'] as String?,
      );

  static CfUsuarioAtivoStruct? maybeFromMap(dynamic data) => data is Map
      ? CfUsuarioAtivoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'Nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static CfUsuarioAtivoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CfUsuarioAtivoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CfUsuarioAtivoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CfUsuarioAtivoStruct &&
        id == other.id &&
        nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([id, nome]);
}

CfUsuarioAtivoStruct createCfUsuarioAtivoStruct({
  int? id,
  String? nome,
}) =>
    CfUsuarioAtivoStruct(
      id: id,
      nome: nome,
    );
