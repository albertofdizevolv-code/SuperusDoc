// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// vt = Visita tecnica
class FmItensSelecionadosStruct extends BaseStruct {
  FmItensSelecionadosStruct({
    int? idSelecao,
    int? fkInterno,
    int? fkIdVisita,

    /// O que realmente importa
    int? fkIdItem,
  })  : _idSelecao = idSelecao,
        _fkInterno = fkInterno,
        _fkIdVisita = fkIdVisita,
        _fkIdItem = fkIdItem;

  // "id_selecao" field.
  int? _idSelecao;
  int get idSelecao => _idSelecao ?? 0;
  set idSelecao(int? val) => _idSelecao = val;

  void incrementIdSelecao(int amount) => idSelecao = idSelecao + amount;

  bool hasIdSelecao() => _idSelecao != null;

  // "fk_interno" field.
  int? _fkInterno;
  int get fkInterno => _fkInterno ?? 0;
  set fkInterno(int? val) => _fkInterno = val;

  void incrementFkInterno(int amount) => fkInterno = fkInterno + amount;

  bool hasFkInterno() => _fkInterno != null;

  // "fk_id_visita" field.
  int? _fkIdVisita;
  int get fkIdVisita => _fkIdVisita ?? 0;
  set fkIdVisita(int? val) => _fkIdVisita = val;

  void incrementFkIdVisita(int amount) => fkIdVisita = fkIdVisita + amount;

  bool hasFkIdVisita() => _fkIdVisita != null;

  // "fk_id_item" field.
  int? _fkIdItem;
  int get fkIdItem => _fkIdItem ?? 0;
  set fkIdItem(int? val) => _fkIdItem = val;

  void incrementFkIdItem(int amount) => fkIdItem = fkIdItem + amount;

  bool hasFkIdItem() => _fkIdItem != null;

  static FmItensSelecionadosStruct fromMap(Map<String, dynamic> data) =>
      FmItensSelecionadosStruct(
        idSelecao: castToType<int>(data['id_selecao']),
        fkInterno: castToType<int>(data['fk_interno']),
        fkIdVisita: castToType<int>(data['fk_id_visita']),
        fkIdItem: castToType<int>(data['fk_id_item']),
      );

  static FmItensSelecionadosStruct? maybeFromMap(dynamic data) => data is Map
      ? FmItensSelecionadosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_selecao': _idSelecao,
        'fk_interno': _fkInterno,
        'fk_id_visita': _fkIdVisita,
        'fk_id_item': _fkIdItem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_selecao': serializeParam(
          _idSelecao,
          ParamType.int,
        ),
        'fk_interno': serializeParam(
          _fkInterno,
          ParamType.int,
        ),
        'fk_id_visita': serializeParam(
          _fkIdVisita,
          ParamType.int,
        ),
        'fk_id_item': serializeParam(
          _fkIdItem,
          ParamType.int,
        ),
      }.withoutNulls;

  static FmItensSelecionadosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FmItensSelecionadosStruct(
        idSelecao: deserializeParam(
          data['id_selecao'],
          ParamType.int,
          false,
        ),
        fkInterno: deserializeParam(
          data['fk_interno'],
          ParamType.int,
          false,
        ),
        fkIdVisita: deserializeParam(
          data['fk_id_visita'],
          ParamType.int,
          false,
        ),
        fkIdItem: deserializeParam(
          data['fk_id_item'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FmItensSelecionadosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FmItensSelecionadosStruct &&
        idSelecao == other.idSelecao &&
        fkInterno == other.fkInterno &&
        fkIdVisita == other.fkIdVisita &&
        fkIdItem == other.fkIdItem;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idSelecao, fkInterno, fkIdVisita, fkIdItem]);
}

FmItensSelecionadosStruct createFmItensSelecionadosStruct({
  int? idSelecao,
  int? fkInterno,
  int? fkIdVisita,
  int? fkIdItem,
}) =>
    FmItensSelecionadosStruct(
      idSelecao: idSelecao,
      fkInterno: fkInterno,
      fkIdVisita: fkIdVisita,
      fkIdItem: fkIdItem,
    );
