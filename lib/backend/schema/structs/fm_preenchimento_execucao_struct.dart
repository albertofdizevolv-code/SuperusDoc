// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FmPreenchimentoExecucaoStruct extends BaseStruct {
  FmPreenchimentoExecucaoStruct({
    int? idPreenchimento,
    int? fkInterno,
    int? fkResponsavel,
    DateTime? dataPreenchimento,
    String? exCondicoesObs,
    String? exArquivosAnexo,
    List<String>? exCapturaFotosAntigas,
    List<String>? exCapturaFotosNovas,
    String? exAssinaturaSuperusUrl,
  })  : _idPreenchimento = idPreenchimento,
        _fkInterno = fkInterno,
        _fkResponsavel = fkResponsavel,
        _dataPreenchimento = dataPreenchimento,
        _exCondicoesObs = exCondicoesObs,
        _exArquivosAnexo = exArquivosAnexo,
        _exCapturaFotosAntigas = exCapturaFotosAntigas,
        _exCapturaFotosNovas = exCapturaFotosNovas,
        _exAssinaturaSuperusUrl = exAssinaturaSuperusUrl;

  // "id_preenchimento" field.
  int? _idPreenchimento;
  int get idPreenchimento => _idPreenchimento ?? 0;
  set idPreenchimento(int? val) => _idPreenchimento = val;

  void incrementIdPreenchimento(int amount) =>
      idPreenchimento = idPreenchimento + amount;

  bool hasIdPreenchimento() => _idPreenchimento != null;

  // "fk_interno" field.
  int? _fkInterno;
  int get fkInterno => _fkInterno ?? 0;
  set fkInterno(int? val) => _fkInterno = val;

  void incrementFkInterno(int amount) => fkInterno = fkInterno + amount;

  bool hasFkInterno() => _fkInterno != null;

  // "fk_responsavel" field.
  int? _fkResponsavel;
  int get fkResponsavel => _fkResponsavel ?? 0;
  set fkResponsavel(int? val) => _fkResponsavel = val;

  void incrementFkResponsavel(int amount) =>
      fkResponsavel = fkResponsavel + amount;

  bool hasFkResponsavel() => _fkResponsavel != null;

  // "data_preenchimento" field.
  DateTime? _dataPreenchimento;
  DateTime? get dataPreenchimento => _dataPreenchimento;
  set dataPreenchimento(DateTime? val) => _dataPreenchimento = val;

  bool hasDataPreenchimento() => _dataPreenchimento != null;

  // "ex_condicoes_obs" field.
  String? _exCondicoesObs;
  String get exCondicoesObs => _exCondicoesObs ?? '';
  set exCondicoesObs(String? val) => _exCondicoesObs = val;

  bool hasExCondicoesObs() => _exCondicoesObs != null;

  // "ex_arquivos_anexo" field.
  String? _exArquivosAnexo;
  String get exArquivosAnexo => _exArquivosAnexo ?? '';
  set exArquivosAnexo(String? val) => _exArquivosAnexo = val;

  bool hasExArquivosAnexo() => _exArquivosAnexo != null;

  // "ex_captura_Fotos_antigas" field.
  List<String>? _exCapturaFotosAntigas;
  List<String> get exCapturaFotosAntigas => _exCapturaFotosAntigas ?? const [];
  set exCapturaFotosAntigas(List<String>? val) => _exCapturaFotosAntigas = val;

  void updateExCapturaFotosAntigas(Function(List<String>) updateFn) {
    updateFn(_exCapturaFotosAntigas ??= []);
  }

  bool hasExCapturaFotosAntigas() => _exCapturaFotosAntigas != null;

  // "ex_captura_Fotos_novas" field.
  List<String>? _exCapturaFotosNovas;
  List<String> get exCapturaFotosNovas => _exCapturaFotosNovas ?? const [];
  set exCapturaFotosNovas(List<String>? val) => _exCapturaFotosNovas = val;

  void updateExCapturaFotosNovas(Function(List<String>) updateFn) {
    updateFn(_exCapturaFotosNovas ??= []);
  }

  bool hasExCapturaFotosNovas() => _exCapturaFotosNovas != null;

  // "ex_assinatura_superus_url" field.
  String? _exAssinaturaSuperusUrl;
  String get exAssinaturaSuperusUrl => _exAssinaturaSuperusUrl ?? '';
  set exAssinaturaSuperusUrl(String? val) => _exAssinaturaSuperusUrl = val;

  bool hasExAssinaturaSuperusUrl() => _exAssinaturaSuperusUrl != null;

  static FmPreenchimentoExecucaoStruct fromMap(Map<String, dynamic> data) =>
      FmPreenchimentoExecucaoStruct(
        idPreenchimento: castToType<int>(data['id_preenchimento']),
        fkInterno: castToType<int>(data['fk_interno']),
        fkResponsavel: castToType<int>(data['fk_responsavel']),
        dataPreenchimento: data['data_preenchimento'] as DateTime?,
        exCondicoesObs: data['ex_condicoes_obs'] as String?,
        exArquivosAnexo: data['ex_arquivos_anexo'] as String?,
        exCapturaFotosAntigas: getDataList(data['ex_captura_Fotos_antigas']),
        exCapturaFotosNovas: getDataList(data['ex_captura_Fotos_novas']),
        exAssinaturaSuperusUrl: data['ex_assinatura_superus_url'] as String?,
      );

  static FmPreenchimentoExecucaoStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FmPreenchimentoExecucaoStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id_preenchimento': _idPreenchimento,
        'fk_interno': _fkInterno,
        'fk_responsavel': _fkResponsavel,
        'data_preenchimento': _dataPreenchimento,
        'ex_condicoes_obs': _exCondicoesObs,
        'ex_arquivos_anexo': _exArquivosAnexo,
        'ex_captura_Fotos_antigas': _exCapturaFotosAntigas,
        'ex_captura_Fotos_novas': _exCapturaFotosNovas,
        'ex_assinatura_superus_url': _exAssinaturaSuperusUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_preenchimento': serializeParam(
          _idPreenchimento,
          ParamType.int,
        ),
        'fk_interno': serializeParam(
          _fkInterno,
          ParamType.int,
        ),
        'fk_responsavel': serializeParam(
          _fkResponsavel,
          ParamType.int,
        ),
        'data_preenchimento': serializeParam(
          _dataPreenchimento,
          ParamType.DateTime,
        ),
        'ex_condicoes_obs': serializeParam(
          _exCondicoesObs,
          ParamType.String,
        ),
        'ex_arquivos_anexo': serializeParam(
          _exArquivosAnexo,
          ParamType.String,
        ),
        'ex_captura_Fotos_antigas': serializeParam(
          _exCapturaFotosAntigas,
          ParamType.String,
          isList: true,
        ),
        'ex_captura_Fotos_novas': serializeParam(
          _exCapturaFotosNovas,
          ParamType.String,
          isList: true,
        ),
        'ex_assinatura_superus_url': serializeParam(
          _exAssinaturaSuperusUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static FmPreenchimentoExecucaoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FmPreenchimentoExecucaoStruct(
        idPreenchimento: deserializeParam(
          data['id_preenchimento'],
          ParamType.int,
          false,
        ),
        fkInterno: deserializeParam(
          data['fk_interno'],
          ParamType.int,
          false,
        ),
        fkResponsavel: deserializeParam(
          data['fk_responsavel'],
          ParamType.int,
          false,
        ),
        dataPreenchimento: deserializeParam(
          data['data_preenchimento'],
          ParamType.DateTime,
          false,
        ),
        exCondicoesObs: deserializeParam(
          data['ex_condicoes_obs'],
          ParamType.String,
          false,
        ),
        exArquivosAnexo: deserializeParam(
          data['ex_arquivos_anexo'],
          ParamType.String,
          false,
        ),
        exCapturaFotosAntigas: deserializeParam<String>(
          data['ex_captura_Fotos_antigas'],
          ParamType.String,
          true,
        ),
        exCapturaFotosNovas: deserializeParam<String>(
          data['ex_captura_Fotos_novas'],
          ParamType.String,
          true,
        ),
        exAssinaturaSuperusUrl: deserializeParam(
          data['ex_assinatura_superus_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FmPreenchimentoExecucaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FmPreenchimentoExecucaoStruct &&
        idPreenchimento == other.idPreenchimento &&
        fkInterno == other.fkInterno &&
        fkResponsavel == other.fkResponsavel &&
        dataPreenchimento == other.dataPreenchimento &&
        exCondicoesObs == other.exCondicoesObs &&
        exArquivosAnexo == other.exArquivosAnexo &&
        listEquality.equals(
            exCapturaFotosAntigas, other.exCapturaFotosAntigas) &&
        listEquality.equals(exCapturaFotosNovas, other.exCapturaFotosNovas) &&
        exAssinaturaSuperusUrl == other.exAssinaturaSuperusUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idPreenchimento,
        fkInterno,
        fkResponsavel,
        dataPreenchimento,
        exCondicoesObs,
        exArquivosAnexo,
        exCapturaFotosAntigas,
        exCapturaFotosNovas,
        exAssinaturaSuperusUrl
      ]);
}

FmPreenchimentoExecucaoStruct createFmPreenchimentoExecucaoStruct({
  int? idPreenchimento,
  int? fkInterno,
  int? fkResponsavel,
  DateTime? dataPreenchimento,
  String? exCondicoesObs,
  String? exArquivosAnexo,
  String? exAssinaturaSuperusUrl,
}) =>
    FmPreenchimentoExecucaoStruct(
      idPreenchimento: idPreenchimento,
      fkInterno: fkInterno,
      fkResponsavel: fkResponsavel,
      dataPreenchimento: dataPreenchimento,
      exCondicoesObs: exCondicoesObs,
      exArquivosAnexo: exArquivosAnexo,
      exAssinaturaSuperusUrl: exAssinaturaSuperusUrl,
    );
