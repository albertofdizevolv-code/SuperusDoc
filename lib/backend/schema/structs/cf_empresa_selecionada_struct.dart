// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// cf = configurações
class CfEmpresaSelecionadaStruct extends BaseStruct {
  CfEmpresaSelecionadaStruct({
    String? uidEmpresa,
    String? nomeCliente,
    String? cnpj,
    String? endereco,
    String? email,
    String? telefone,
    int? numColigada,
  })  : _uidEmpresa = uidEmpresa,
        _nomeCliente = nomeCliente,
        _cnpj = cnpj,
        _endereco = endereco,
        _email = email,
        _telefone = telefone,
        _numColigada = numColigada;

  // "uid_empresa" field.
  String? _uidEmpresa;
  String get uidEmpresa => _uidEmpresa ?? '';
  set uidEmpresa(String? val) => _uidEmpresa = val;

  bool hasUidEmpresa() => _uidEmpresa != null;

  // "nome_cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;

  bool hasNomeCliente() => _nomeCliente != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "num_coligada" field.
  int? _numColigada;
  int get numColigada => _numColigada ?? 0;
  set numColigada(int? val) => _numColigada = val;

  void incrementNumColigada(int amount) => numColigada = numColigada + amount;

  bool hasNumColigada() => _numColigada != null;

  static CfEmpresaSelecionadaStruct fromMap(Map<String, dynamic> data) =>
      CfEmpresaSelecionadaStruct(
        uidEmpresa: data['uid_empresa'] as String?,
        nomeCliente: data['nome_cliente'] as String?,
        cnpj: data['cnpj'] as String?,
        endereco: data['endereco'] as String?,
        email: data['email'] as String?,
        telefone: data['telefone'] as String?,
        numColigada: castToType<int>(data['num_coligada']),
      );

  static CfEmpresaSelecionadaStruct? maybeFromMap(dynamic data) => data is Map
      ? CfEmpresaSelecionadaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'uid_empresa': _uidEmpresa,
        'nome_cliente': _nomeCliente,
        'cnpj': _cnpj,
        'endereco': _endereco,
        'email': _email,
        'telefone': _telefone,
        'num_coligada': _numColigada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid_empresa': serializeParam(
          _uidEmpresa,
          ParamType.String,
        ),
        'nome_cliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'num_coligada': serializeParam(
          _numColigada,
          ParamType.int,
        ),
      }.withoutNulls;

  static CfEmpresaSelecionadaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CfEmpresaSelecionadaStruct(
        uidEmpresa: deserializeParam(
          data['uid_empresa'],
          ParamType.String,
          false,
        ),
        nomeCliente: deserializeParam(
          data['nome_cliente'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        numColigada: deserializeParam(
          data['num_coligada'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CfEmpresaSelecionadaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CfEmpresaSelecionadaStruct &&
        uidEmpresa == other.uidEmpresa &&
        nomeCliente == other.nomeCliente &&
        cnpj == other.cnpj &&
        endereco == other.endereco &&
        email == other.email &&
        telefone == other.telefone &&
        numColigada == other.numColigada;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [uidEmpresa, nomeCliente, cnpj, endereco, email, telefone, numColigada]);
}

CfEmpresaSelecionadaStruct createCfEmpresaSelecionadaStruct({
  String? uidEmpresa,
  String? nomeCliente,
  String? cnpj,
  String? endereco,
  String? email,
  String? telefone,
  int? numColigada,
}) =>
    CfEmpresaSelecionadaStruct(
      uidEmpresa: uidEmpresa,
      nomeCliente: nomeCliente,
      cnpj: cnpj,
      endereco: endereco,
      email: email,
      telefone: telefone,
      numColigada: numColigada,
    );
