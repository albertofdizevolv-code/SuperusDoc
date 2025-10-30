// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// cf = configurações
class CfItensVisitaTecnicaStruct extends BaseStruct {
  CfItensVisitaTecnicaStruct({
    int? idItem,
    int? fkIdCategoria,
    String? nomeItem,
    int? ordemExibicao,
    bool? ativo,
  })  : _idItem = idItem,
        _fkIdCategoria = fkIdCategoria,
        _nomeItem = nomeItem,
        _ordemExibicao = ordemExibicao,
        _ativo = ativo;

  // "id_item" field.
  int? _idItem;
  int get idItem => _idItem ?? 0;
  set idItem(int? val) => _idItem = val;

  void incrementIdItem(int amount) => idItem = idItem + amount;

  bool hasIdItem() => _idItem != null;

  // "fk_id_categoria" field.
  int? _fkIdCategoria;
  int get fkIdCategoria => _fkIdCategoria ?? 0;
  set fkIdCategoria(int? val) => _fkIdCategoria = val;

  void incrementFkIdCategoria(int amount) =>
      fkIdCategoria = fkIdCategoria + amount;

  bool hasFkIdCategoria() => _fkIdCategoria != null;

  // "nome_item" field.
  String? _nomeItem;
  String get nomeItem => _nomeItem ?? '';
  set nomeItem(String? val) => _nomeItem = val;

  bool hasNomeItem() => _nomeItem != null;

  // "ordem_exibicao" field.
  int? _ordemExibicao;
  int get ordemExibicao => _ordemExibicao ?? 0;
  set ordemExibicao(int? val) => _ordemExibicao = val;

  void incrementOrdemExibicao(int amount) =>
      ordemExibicao = ordemExibicao + amount;

  bool hasOrdemExibicao() => _ordemExibicao != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  static CfItensVisitaTecnicaStruct fromMap(Map<String, dynamic> data) =>
      CfItensVisitaTecnicaStruct(
        idItem: castToType<int>(data['id_item']),
        fkIdCategoria: castToType<int>(data['fk_id_categoria']),
        nomeItem: data['nome_item'] as String?,
        ordemExibicao: castToType<int>(data['ordem_exibicao']),
        ativo: data['ativo'] as bool?,
      );

  static CfItensVisitaTecnicaStruct? maybeFromMap(dynamic data) => data is Map
      ? CfItensVisitaTecnicaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_item': _idItem,
        'fk_id_categoria': _fkIdCategoria,
        'nome_item': _nomeItem,
        'ordem_exibicao': _ordemExibicao,
        'ativo': _ativo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_item': serializeParam(
          _idItem,
          ParamType.int,
        ),
        'fk_id_categoria': serializeParam(
          _fkIdCategoria,
          ParamType.int,
        ),
        'nome_item': serializeParam(
          _nomeItem,
          ParamType.String,
        ),
        'ordem_exibicao': serializeParam(
          _ordemExibicao,
          ParamType.int,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CfItensVisitaTecnicaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CfItensVisitaTecnicaStruct(
        idItem: deserializeParam(
          data['id_item'],
          ParamType.int,
          false,
        ),
        fkIdCategoria: deserializeParam(
          data['fk_id_categoria'],
          ParamType.int,
          false,
        ),
        nomeItem: deserializeParam(
          data['nome_item'],
          ParamType.String,
          false,
        ),
        ordemExibicao: deserializeParam(
          data['ordem_exibicao'],
          ParamType.int,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CfItensVisitaTecnicaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CfItensVisitaTecnicaStruct &&
        idItem == other.idItem &&
        fkIdCategoria == other.fkIdCategoria &&
        nomeItem == other.nomeItem &&
        ordemExibicao == other.ordemExibicao &&
        ativo == other.ativo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idItem, fkIdCategoria, nomeItem, ordemExibicao, ativo]);
}

CfItensVisitaTecnicaStruct createCfItensVisitaTecnicaStruct({
  int? idItem,
  int? fkIdCategoria,
  String? nomeItem,
  int? ordemExibicao,
  bool? ativo,
}) =>
    CfItensVisitaTecnicaStruct(
      idItem: idItem,
      fkIdCategoria: fkIdCategoria,
      nomeItem: nomeItem,
      ordemExibicao: ordemExibicao,
      ativo: ativo,
    );
