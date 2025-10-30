// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DescricaodeCondicoesCriticasStruct extends BaseStruct {
  DescricaodeCondicoesCriticasStruct({
    bool? ativo,
    String? nome,
  })  : _ativo = ativo,
        _nome = nome;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static DescricaodeCondicoesCriticasStruct fromMap(
          Map<String, dynamic> data) =>
      DescricaodeCondicoesCriticasStruct(
        ativo: data['ativo'] as bool?,
        nome: data['nome'] as String?,
      );

  static DescricaodeCondicoesCriticasStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DescricaodeCondicoesCriticasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ativo': _ativo,
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static DescricaodeCondicoesCriticasStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DescricaodeCondicoesCriticasStruct(
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DescricaodeCondicoesCriticasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DescricaodeCondicoesCriticasStruct &&
        ativo == other.ativo &&
        nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([ativo, nome]);
}

DescricaodeCondicoesCriticasStruct createDescricaodeCondicoesCriticasStruct({
  bool? ativo,
  String? nome,
}) =>
    DescricaodeCondicoesCriticasStruct(
      ativo: ativo,
      nome: nome,
    );
