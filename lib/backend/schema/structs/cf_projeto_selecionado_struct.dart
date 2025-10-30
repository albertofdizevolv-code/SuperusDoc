// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// cf = configurações
class CfProjetoSelecionadoStruct extends BaseStruct {
  CfProjetoSelecionadoStruct({
    int? idProjeto,
    String? nomeOp,
    String? codigoCentroCusto,
    String? clienteOp,
    String? enderecoOp,
    String? gestorOp,
    String? statusOp,
    String? tipoLoc,
    String? revalidacao,
    String? prazo,
    String? carencia,
    double? localEstoque,
    String? frequanciaInv,
    double? saldoInicial,
    String? empresaRef,
  })  : _idProjeto = idProjeto,
        _nomeOp = nomeOp,
        _codigoCentroCusto = codigoCentroCusto,
        _clienteOp = clienteOp,
        _enderecoOp = enderecoOp,
        _gestorOp = gestorOp,
        _statusOp = statusOp,
        _tipoLoc = tipoLoc,
        _revalidacao = revalidacao,
        _prazo = prazo,
        _carencia = carencia,
        _localEstoque = localEstoque,
        _frequanciaInv = frequanciaInv,
        _saldoInicial = saldoInicial,
        _empresaRef = empresaRef;

  // "id_projeto" field.
  int? _idProjeto;
  int get idProjeto => _idProjeto ?? 0;
  set idProjeto(int? val) => _idProjeto = val;

  void incrementIdProjeto(int amount) => idProjeto = idProjeto + amount;

  bool hasIdProjeto() => _idProjeto != null;

  // "nome_op" field.
  String? _nomeOp;
  String get nomeOp => _nomeOp ?? '';
  set nomeOp(String? val) => _nomeOp = val;

  bool hasNomeOp() => _nomeOp != null;

  // "codigo_centro_custo" field.
  String? _codigoCentroCusto;
  String get codigoCentroCusto => _codigoCentroCusto ?? '';
  set codigoCentroCusto(String? val) => _codigoCentroCusto = val;

  bool hasCodigoCentroCusto() => _codigoCentroCusto != null;

  // "cliente_op" field.
  String? _clienteOp;
  String get clienteOp => _clienteOp ?? '';
  set clienteOp(String? val) => _clienteOp = val;

  bool hasClienteOp() => _clienteOp != null;

  // "endereco_op" field.
  String? _enderecoOp;
  String get enderecoOp => _enderecoOp ?? '';
  set enderecoOp(String? val) => _enderecoOp = val;

  bool hasEnderecoOp() => _enderecoOp != null;

  // "gestor_op" field.
  String? _gestorOp;
  String get gestorOp => _gestorOp ?? '';
  set gestorOp(String? val) => _gestorOp = val;

  bool hasGestorOp() => _gestorOp != null;

  // "status_op" field.
  String? _statusOp;
  String get statusOp => _statusOp ?? '';
  set statusOp(String? val) => _statusOp = val;

  bool hasStatusOp() => _statusOp != null;

  // "tipo_loc" field.
  String? _tipoLoc;
  String get tipoLoc => _tipoLoc ?? '';
  set tipoLoc(String? val) => _tipoLoc = val;

  bool hasTipoLoc() => _tipoLoc != null;

  // "revalidacao" field.
  String? _revalidacao;
  String get revalidacao => _revalidacao ?? '';
  set revalidacao(String? val) => _revalidacao = val;

  bool hasRevalidacao() => _revalidacao != null;

  // "prazo" field.
  String? _prazo;
  String get prazo => _prazo ?? '';
  set prazo(String? val) => _prazo = val;

  bool hasPrazo() => _prazo != null;

  // "carencia" field.
  String? _carencia;
  String get carencia => _carencia ?? '';
  set carencia(String? val) => _carencia = val;

  bool hasCarencia() => _carencia != null;

  // "local_estoque" field.
  double? _localEstoque;
  double get localEstoque => _localEstoque ?? 0.0;
  set localEstoque(double? val) => _localEstoque = val;

  void incrementLocalEstoque(double amount) =>
      localEstoque = localEstoque + amount;

  bool hasLocalEstoque() => _localEstoque != null;

  // "frequancia_inv" field.
  String? _frequanciaInv;
  String get frequanciaInv => _frequanciaInv ?? '';
  set frequanciaInv(String? val) => _frequanciaInv = val;

  bool hasFrequanciaInv() => _frequanciaInv != null;

  // "saldo_inicial" field.
  double? _saldoInicial;
  double get saldoInicial => _saldoInicial ?? 0.0;
  set saldoInicial(double? val) => _saldoInicial = val;

  void incrementSaldoInicial(double amount) =>
      saldoInicial = saldoInicial + amount;

  bool hasSaldoInicial() => _saldoInicial != null;

  // "empresa_ref" field.
  String? _empresaRef;
  String get empresaRef => _empresaRef ?? '';
  set empresaRef(String? val) => _empresaRef = val;

  bool hasEmpresaRef() => _empresaRef != null;

  static CfProjetoSelecionadoStruct fromMap(Map<String, dynamic> data) =>
      CfProjetoSelecionadoStruct(
        idProjeto: castToType<int>(data['id_projeto']),
        nomeOp: data['nome_op'] as String?,
        codigoCentroCusto: data['codigo_centro_custo'] as String?,
        clienteOp: data['cliente_op'] as String?,
        enderecoOp: data['endereco_op'] as String?,
        gestorOp: data['gestor_op'] as String?,
        statusOp: data['status_op'] as String?,
        tipoLoc: data['tipo_loc'] as String?,
        revalidacao: data['revalidacao'] as String?,
        prazo: data['prazo'] as String?,
        carencia: data['carencia'] as String?,
        localEstoque: castToType<double>(data['local_estoque']),
        frequanciaInv: data['frequancia_inv'] as String?,
        saldoInicial: castToType<double>(data['saldo_inicial']),
        empresaRef: data['empresa_ref'] as String?,
      );

  static CfProjetoSelecionadoStruct? maybeFromMap(dynamic data) => data is Map
      ? CfProjetoSelecionadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_projeto': _idProjeto,
        'nome_op': _nomeOp,
        'codigo_centro_custo': _codigoCentroCusto,
        'cliente_op': _clienteOp,
        'endereco_op': _enderecoOp,
        'gestor_op': _gestorOp,
        'status_op': _statusOp,
        'tipo_loc': _tipoLoc,
        'revalidacao': _revalidacao,
        'prazo': _prazo,
        'carencia': _carencia,
        'local_estoque': _localEstoque,
        'frequancia_inv': _frequanciaInv,
        'saldo_inicial': _saldoInicial,
        'empresa_ref': _empresaRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_projeto': serializeParam(
          _idProjeto,
          ParamType.int,
        ),
        'nome_op': serializeParam(
          _nomeOp,
          ParamType.String,
        ),
        'codigo_centro_custo': serializeParam(
          _codigoCentroCusto,
          ParamType.String,
        ),
        'cliente_op': serializeParam(
          _clienteOp,
          ParamType.String,
        ),
        'endereco_op': serializeParam(
          _enderecoOp,
          ParamType.String,
        ),
        'gestor_op': serializeParam(
          _gestorOp,
          ParamType.String,
        ),
        'status_op': serializeParam(
          _statusOp,
          ParamType.String,
        ),
        'tipo_loc': serializeParam(
          _tipoLoc,
          ParamType.String,
        ),
        'revalidacao': serializeParam(
          _revalidacao,
          ParamType.String,
        ),
        'prazo': serializeParam(
          _prazo,
          ParamType.String,
        ),
        'carencia': serializeParam(
          _carencia,
          ParamType.String,
        ),
        'local_estoque': serializeParam(
          _localEstoque,
          ParamType.double,
        ),
        'frequancia_inv': serializeParam(
          _frequanciaInv,
          ParamType.String,
        ),
        'saldo_inicial': serializeParam(
          _saldoInicial,
          ParamType.double,
        ),
        'empresa_ref': serializeParam(
          _empresaRef,
          ParamType.String,
        ),
      }.withoutNulls;

  static CfProjetoSelecionadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CfProjetoSelecionadoStruct(
        idProjeto: deserializeParam(
          data['id_projeto'],
          ParamType.int,
          false,
        ),
        nomeOp: deserializeParam(
          data['nome_op'],
          ParamType.String,
          false,
        ),
        codigoCentroCusto: deserializeParam(
          data['codigo_centro_custo'],
          ParamType.String,
          false,
        ),
        clienteOp: deserializeParam(
          data['cliente_op'],
          ParamType.String,
          false,
        ),
        enderecoOp: deserializeParam(
          data['endereco_op'],
          ParamType.String,
          false,
        ),
        gestorOp: deserializeParam(
          data['gestor_op'],
          ParamType.String,
          false,
        ),
        statusOp: deserializeParam(
          data['status_op'],
          ParamType.String,
          false,
        ),
        tipoLoc: deserializeParam(
          data['tipo_loc'],
          ParamType.String,
          false,
        ),
        revalidacao: deserializeParam(
          data['revalidacao'],
          ParamType.String,
          false,
        ),
        prazo: deserializeParam(
          data['prazo'],
          ParamType.String,
          false,
        ),
        carencia: deserializeParam(
          data['carencia'],
          ParamType.String,
          false,
        ),
        localEstoque: deserializeParam(
          data['local_estoque'],
          ParamType.double,
          false,
        ),
        frequanciaInv: deserializeParam(
          data['frequancia_inv'],
          ParamType.String,
          false,
        ),
        saldoInicial: deserializeParam(
          data['saldo_inicial'],
          ParamType.double,
          false,
        ),
        empresaRef: deserializeParam(
          data['empresa_ref'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CfProjetoSelecionadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CfProjetoSelecionadoStruct &&
        idProjeto == other.idProjeto &&
        nomeOp == other.nomeOp &&
        codigoCentroCusto == other.codigoCentroCusto &&
        clienteOp == other.clienteOp &&
        enderecoOp == other.enderecoOp &&
        gestorOp == other.gestorOp &&
        statusOp == other.statusOp &&
        tipoLoc == other.tipoLoc &&
        revalidacao == other.revalidacao &&
        prazo == other.prazo &&
        carencia == other.carencia &&
        localEstoque == other.localEstoque &&
        frequanciaInv == other.frequanciaInv &&
        saldoInicial == other.saldoInicial &&
        empresaRef == other.empresaRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idProjeto,
        nomeOp,
        codigoCentroCusto,
        clienteOp,
        enderecoOp,
        gestorOp,
        statusOp,
        tipoLoc,
        revalidacao,
        prazo,
        carencia,
        localEstoque,
        frequanciaInv,
        saldoInicial,
        empresaRef
      ]);
}

CfProjetoSelecionadoStruct createCfProjetoSelecionadoStruct({
  int? idProjeto,
  String? nomeOp,
  String? codigoCentroCusto,
  String? clienteOp,
  String? enderecoOp,
  String? gestorOp,
  String? statusOp,
  String? tipoLoc,
  String? revalidacao,
  String? prazo,
  String? carencia,
  double? localEstoque,
  String? frequanciaInv,
  double? saldoInicial,
  String? empresaRef,
}) =>
    CfProjetoSelecionadoStruct(
      idProjeto: idProjeto,
      nomeOp: nomeOp,
      codigoCentroCusto: codigoCentroCusto,
      clienteOp: clienteOp,
      enderecoOp: enderecoOp,
      gestorOp: gestorOp,
      statusOp: statusOp,
      tipoLoc: tipoLoc,
      revalidacao: revalidacao,
      prazo: prazo,
      carencia: carencia,
      localEstoque: localEstoque,
      frequanciaInv: frequanciaInv,
      saldoInicial: saldoInicial,
      empresaRef: empresaRef,
    );
