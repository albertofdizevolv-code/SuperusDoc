// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FmListaPecasStruct extends BaseStruct {
  FmListaPecasStruct({
    int? id,
    int? fkInterno,
    int? idMaterial,
    String? codigo,
    String? pecas,
    double? peso,
    int? quantidade,
    double? tamanho,

    /// Usado somente na programação
    int? prEstoque,
  })  : _id = id,
        _fkInterno = fkInterno,
        _idMaterial = idMaterial,
        _codigo = codigo,
        _pecas = pecas,
        _peso = peso,
        _quantidade = quantidade,
        _tamanho = tamanho,
        _prEstoque = prEstoque;

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

  // "id_material" field.
  int? _idMaterial;
  int get idMaterial => _idMaterial ?? 0;
  set idMaterial(int? val) => _idMaterial = val;

  void incrementIdMaterial(int amount) => idMaterial = idMaterial + amount;

  bool hasIdMaterial() => _idMaterial != null;

  // "Codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "Pecas" field.
  String? _pecas;
  String get pecas => _pecas ?? '';
  set pecas(String? val) => _pecas = val;

  bool hasPecas() => _pecas != null;

  // "Peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  set peso(double? val) => _peso = val;

  void incrementPeso(double amount) => peso = peso + amount;

  bool hasPeso() => _peso != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "tamanho" field.
  double? _tamanho;
  double get tamanho => _tamanho ?? 0.0;
  set tamanho(double? val) => _tamanho = val;

  void incrementTamanho(double amount) => tamanho = tamanho + amount;

  bool hasTamanho() => _tamanho != null;

  // "pr_estoque" field.
  int? _prEstoque;
  int get prEstoque => _prEstoque ?? 0;
  set prEstoque(int? val) => _prEstoque = val;

  void incrementPrEstoque(int amount) => prEstoque = prEstoque + amount;

  bool hasPrEstoque() => _prEstoque != null;

  static FmListaPecasStruct fromMap(Map<String, dynamic> data) =>
      FmListaPecasStruct(
        id: castToType<int>(data['id']),
        fkInterno: castToType<int>(data['fk_interno']),
        idMaterial: castToType<int>(data['id_material']),
        codigo: data['Codigo'] as String?,
        pecas: data['Pecas'] as String?,
        peso: castToType<double>(data['Peso']),
        quantidade: castToType<int>(data['quantidade']),
        tamanho: castToType<double>(data['tamanho']),
        prEstoque: castToType<int>(data['pr_estoque']),
      );

  static FmListaPecasStruct? maybeFromMap(dynamic data) => data is Map
      ? FmListaPecasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fk_interno': _fkInterno,
        'id_material': _idMaterial,
        'Codigo': _codigo,
        'Pecas': _pecas,
        'Peso': _peso,
        'quantidade': _quantidade,
        'tamanho': _tamanho,
        'pr_estoque': _prEstoque,
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
        'id_material': serializeParam(
          _idMaterial,
          ParamType.int,
        ),
        'Codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'Pecas': serializeParam(
          _pecas,
          ParamType.String,
        ),
        'Peso': serializeParam(
          _peso,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'tamanho': serializeParam(
          _tamanho,
          ParamType.double,
        ),
        'pr_estoque': serializeParam(
          _prEstoque,
          ParamType.int,
        ),
      }.withoutNulls;

  static FmListaPecasStruct fromSerializableMap(Map<String, dynamic> data) =>
      FmListaPecasStruct(
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
        idMaterial: deserializeParam(
          data['id_material'],
          ParamType.int,
          false,
        ),
        codigo: deserializeParam(
          data['Codigo'],
          ParamType.String,
          false,
        ),
        pecas: deserializeParam(
          data['Pecas'],
          ParamType.String,
          false,
        ),
        peso: deserializeParam(
          data['Peso'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        tamanho: deserializeParam(
          data['tamanho'],
          ParamType.double,
          false,
        ),
        prEstoque: deserializeParam(
          data['pr_estoque'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FmListaPecasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FmListaPecasStruct &&
        id == other.id &&
        fkInterno == other.fkInterno &&
        idMaterial == other.idMaterial &&
        codigo == other.codigo &&
        pecas == other.pecas &&
        peso == other.peso &&
        quantidade == other.quantidade &&
        tamanho == other.tamanho &&
        prEstoque == other.prEstoque;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        fkInterno,
        idMaterial,
        codigo,
        pecas,
        peso,
        quantidade,
        tamanho,
        prEstoque
      ]);
}

FmListaPecasStruct createFmListaPecasStruct({
  int? id,
  int? fkInterno,
  int? idMaterial,
  String? codigo,
  String? pecas,
  double? peso,
  int? quantidade,
  double? tamanho,
  int? prEstoque,
}) =>
    FmListaPecasStruct(
      id: id,
      fkInterno: fkInterno,
      idMaterial: idMaterial,
      codigo: codigo,
      pecas: pecas,
      peso: peso,
      quantidade: quantidade,
      tamanho: tamanho,
      prEstoque: prEstoque,
    );
