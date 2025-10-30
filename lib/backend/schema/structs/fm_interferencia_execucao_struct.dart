// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FmInterferenciaExecucaoStruct extends BaseStruct {
  FmInterferenciaExecucaoStruct({
    int? idInterferencia,
    int? fkInterno,
    int? fkMotivo,
    String? descricao,
    double? duracao,
    int? efetivoAfetado,
    double? impactoHora,
    String? motivo,
  })  : _idInterferencia = idInterferencia,
        _fkInterno = fkInterno,
        _fkMotivo = fkMotivo,
        _descricao = descricao,
        _duracao = duracao,
        _efetivoAfetado = efetivoAfetado,
        _impactoHora = impactoHora,
        _motivo = motivo;

  // "id_interferencia" field.
  int? _idInterferencia;
  int get idInterferencia => _idInterferencia ?? 0;
  set idInterferencia(int? val) => _idInterferencia = val;

  void incrementIdInterferencia(int amount) =>
      idInterferencia = idInterferencia + amount;

  bool hasIdInterferencia() => _idInterferencia != null;

  // "fk_interno" field.
  int? _fkInterno;
  int get fkInterno => _fkInterno ?? 0;
  set fkInterno(int? val) => _fkInterno = val;

  void incrementFkInterno(int amount) => fkInterno = fkInterno + amount;

  bool hasFkInterno() => _fkInterno != null;

  // "fk_motivo" field.
  int? _fkMotivo;
  int get fkMotivo => _fkMotivo ?? 0;
  set fkMotivo(int? val) => _fkMotivo = val;

  void incrementFkMotivo(int amount) => fkMotivo = fkMotivo + amount;

  bool hasFkMotivo() => _fkMotivo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "duracao" field.
  double? _duracao;
  double get duracao => _duracao ?? 0.0;
  set duracao(double? val) => _duracao = val;

  void incrementDuracao(double amount) => duracao = duracao + amount;

  bool hasDuracao() => _duracao != null;

  // "efetivo_afetado" field.
  int? _efetivoAfetado;
  int get efetivoAfetado => _efetivoAfetado ?? 0;
  set efetivoAfetado(int? val) => _efetivoAfetado = val;

  void incrementEfetivoAfetado(int amount) =>
      efetivoAfetado = efetivoAfetado + amount;

  bool hasEfetivoAfetado() => _efetivoAfetado != null;

  // "impacto_hora" field.
  double? _impactoHora;
  double get impactoHora => _impactoHora ?? 0.0;
  set impactoHora(double? val) => _impactoHora = val;

  void incrementImpactoHora(double amount) =>
      impactoHora = impactoHora + amount;

  bool hasImpactoHora() => _impactoHora != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  set motivo(String? val) => _motivo = val;

  bool hasMotivo() => _motivo != null;

  static FmInterferenciaExecucaoStruct fromMap(Map<String, dynamic> data) =>
      FmInterferenciaExecucaoStruct(
        idInterferencia: castToType<int>(data['id_interferencia']),
        fkInterno: castToType<int>(data['fk_interno']),
        fkMotivo: castToType<int>(data['fk_motivo']),
        descricao: data['descricao'] as String?,
        duracao: castToType<double>(data['duracao']),
        efetivoAfetado: castToType<int>(data['efetivo_afetado']),
        impactoHora: castToType<double>(data['impacto_hora']),
        motivo: data['motivo'] as String?,
      );

  static FmInterferenciaExecucaoStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FmInterferenciaExecucaoStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id_interferencia': _idInterferencia,
        'fk_interno': _fkInterno,
        'fk_motivo': _fkMotivo,
        'descricao': _descricao,
        'duracao': _duracao,
        'efetivo_afetado': _efetivoAfetado,
        'impacto_hora': _impactoHora,
        'motivo': _motivo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_interferencia': serializeParam(
          _idInterferencia,
          ParamType.int,
        ),
        'fk_interno': serializeParam(
          _fkInterno,
          ParamType.int,
        ),
        'fk_motivo': serializeParam(
          _fkMotivo,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'duracao': serializeParam(
          _duracao,
          ParamType.double,
        ),
        'efetivo_afetado': serializeParam(
          _efetivoAfetado,
          ParamType.int,
        ),
        'impacto_hora': serializeParam(
          _impactoHora,
          ParamType.double,
        ),
        'motivo': serializeParam(
          _motivo,
          ParamType.String,
        ),
      }.withoutNulls;

  static FmInterferenciaExecucaoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FmInterferenciaExecucaoStruct(
        idInterferencia: deserializeParam(
          data['id_interferencia'],
          ParamType.int,
          false,
        ),
        fkInterno: deserializeParam(
          data['fk_interno'],
          ParamType.int,
          false,
        ),
        fkMotivo: deserializeParam(
          data['fk_motivo'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        duracao: deserializeParam(
          data['duracao'],
          ParamType.double,
          false,
        ),
        efetivoAfetado: deserializeParam(
          data['efetivo_afetado'],
          ParamType.int,
          false,
        ),
        impactoHora: deserializeParam(
          data['impacto_hora'],
          ParamType.double,
          false,
        ),
        motivo: deserializeParam(
          data['motivo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FmInterferenciaExecucaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FmInterferenciaExecucaoStruct &&
        idInterferencia == other.idInterferencia &&
        fkInterno == other.fkInterno &&
        fkMotivo == other.fkMotivo &&
        descricao == other.descricao &&
        duracao == other.duracao &&
        efetivoAfetado == other.efetivoAfetado &&
        impactoHora == other.impactoHora &&
        motivo == other.motivo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idInterferencia,
        fkInterno,
        fkMotivo,
        descricao,
        duracao,
        efetivoAfetado,
        impactoHora,
        motivo
      ]);
}

FmInterferenciaExecucaoStruct createFmInterferenciaExecucaoStruct({
  int? idInterferencia,
  int? fkInterno,
  int? fkMotivo,
  String? descricao,
  double? duracao,
  int? efetivoAfetado,
  double? impactoHora,
  String? motivo,
}) =>
    FmInterferenciaExecucaoStruct(
      idInterferencia: idInterferencia,
      fkInterno: fkInterno,
      fkMotivo: fkMotivo,
      descricao: descricao,
      duracao: duracao,
      efetivoAfetado: efetivoAfetado,
      impactoHora: impactoHora,
      motivo: motivo,
    );
