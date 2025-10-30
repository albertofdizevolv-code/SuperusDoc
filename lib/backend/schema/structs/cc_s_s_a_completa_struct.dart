// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// ssa_
/// vt = Visita Tecnica
/// pr = Programacao
/// ex = Execucao
class CcSSACompletaStruct extends BaseStruct {
  CcSSACompletaStruct({
    int? fkIdStatus,
    String? status,
    int? fkIdProjeto,
    int? fkIdSubprojeto,
    int? fkIdSsa,
    int? ssaFkIdSolicitante,
    int? ssaFkIdProgramadorCliente,
    int? ssaFkIdResponsavel,
    DateTime? ssaDataAbertura,
    String? ssaNumeroOs,
    String? ssaArea,
    String? ssaCentroCustoCliente,
    String? ssaLocal,
    String? ssaTagEquipamento,
    String? ssaOrdemManutencao,
    String? ssaAtividadeASerRealizada,
    String? ssaCodigoCentroCusto,
    String? ssaTipoManutencao,
    String? ssaCodIdentificador,
    String? ssaObsGerais,
    String? ssaEnderecoOp,
    String? ssaObsInterna,
    String? ssaTipoServico,
    String? ssaNomeResponsavel,
    String? ssaNomeSolicitante,
    String? ssaNomeProgramadorCliente,
    int? fkIdVisitaTecnica,
    int? vtFkIdTecnicoResponsavel,
    int? vtFkResponsavelPelaVisita,
    String? vtNomeTecnicoResponsavel,
    DateTime? vtDataVisita,
    String? vtNomeEncarregadoCliente,
    String? vtQntPessoas,
    String? vtAssinaturaUrl,
    String? vtCroquiUrl,
    String? vtContatoEncarregadoCliente,
    double? vtTotalAreaPisoM2,
    double? vtVolumeTotalM2,
    String? vtCargaEstrutura,
    double? vtSomaAreaNivel,
    int? vtSomaQuantidadePrevista,
    List<String>? vtComentarios,
    List<int>? vtItensSelecionadosSINGLE,
    List<FmItensSelecionadosStruct>? vtItensSelecionadoFm,
    List<FmListaPecasStruct>? vtListaPecas,
    List<FmTrechoStruct>? vtTrecho,
    List<FmPisoStruct>? vtNivelPiso,
    int? fkIdProgramacao,
    int? prFkResponsavelCliente,
    int? prFkIdSolicitanteCliente,
    int? prFkIdResponsavelExecucao,
    String? prNomeResponsavelExecucao,
    DateTime? prDataInicioPrevista,
    DateTime? prDataFimPrevista,
    double? prVolumeAndaimeM3,
    double? prAreaPisoM2,
    double? prMetragemLinearM,
    double? prHomemHoraHh,
    double? prTotalMaterialTubular,
    List<FmDadosEfetivoStruct>? prDadosEfetivo,
    List<FmListaPecasStruct>? prListaPecas,
    String? nomeProjeto,
    String? nomeSubprojeto,
    int? fkIdExecucao,
    String? exResponsavelSuperus,

    /// Primeiro dia da execucao
    DateTime? exDataInicio,

    /// Execucao foi de fato concluida
    DateTime? exDataConclusao,
    List<FmPreenchimentoExecucaoStruct>? exPreenchimentoDiariaMontagem,
    List<FmTrechoStruct>? exTrecho,
    List<FmPisoStruct>? exPiso,
    List<FmDadosEfetivoStruct>? exDadosEfetivo,
    List<FmListaPecasStruct>? exListaPecas,
    List<FmInterferenciaExecucaoStruct>? exInterferencias,
  })  : _fkIdStatus = fkIdStatus,
        _status = status,
        _fkIdProjeto = fkIdProjeto,
        _fkIdSubprojeto = fkIdSubprojeto,
        _fkIdSsa = fkIdSsa,
        _ssaFkIdSolicitante = ssaFkIdSolicitante,
        _ssaFkIdProgramadorCliente = ssaFkIdProgramadorCliente,
        _ssaFkIdResponsavel = ssaFkIdResponsavel,
        _ssaDataAbertura = ssaDataAbertura,
        _ssaNumeroOs = ssaNumeroOs,
        _ssaArea = ssaArea,
        _ssaCentroCustoCliente = ssaCentroCustoCliente,
        _ssaLocal = ssaLocal,
        _ssaTagEquipamento = ssaTagEquipamento,
        _ssaOrdemManutencao = ssaOrdemManutencao,
        _ssaAtividadeASerRealizada = ssaAtividadeASerRealizada,
        _ssaCodigoCentroCusto = ssaCodigoCentroCusto,
        _ssaTipoManutencao = ssaTipoManutencao,
        _ssaCodIdentificador = ssaCodIdentificador,
        _ssaObsGerais = ssaObsGerais,
        _ssaEnderecoOp = ssaEnderecoOp,
        _ssaObsInterna = ssaObsInterna,
        _ssaTipoServico = ssaTipoServico,
        _ssaNomeResponsavel = ssaNomeResponsavel,
        _ssaNomeSolicitante = ssaNomeSolicitante,
        _ssaNomeProgramadorCliente = ssaNomeProgramadorCliente,
        _fkIdVisitaTecnica = fkIdVisitaTecnica,
        _vtFkIdTecnicoResponsavel = vtFkIdTecnicoResponsavel,
        _vtFkResponsavelPelaVisita = vtFkResponsavelPelaVisita,
        _vtNomeTecnicoResponsavel = vtNomeTecnicoResponsavel,
        _vtDataVisita = vtDataVisita,
        _vtNomeEncarregadoCliente = vtNomeEncarregadoCliente,
        _vtQntPessoas = vtQntPessoas,
        _vtAssinaturaUrl = vtAssinaturaUrl,
        _vtCroquiUrl = vtCroquiUrl,
        _vtContatoEncarregadoCliente = vtContatoEncarregadoCliente,
        _vtTotalAreaPisoM2 = vtTotalAreaPisoM2,
        _vtVolumeTotalM2 = vtVolumeTotalM2,
        _vtCargaEstrutura = vtCargaEstrutura,
        _vtSomaAreaNivel = vtSomaAreaNivel,
        _vtSomaQuantidadePrevista = vtSomaQuantidadePrevista,
        _vtComentarios = vtComentarios,
        _vtItensSelecionadosSINGLE = vtItensSelecionadosSINGLE,
        _vtItensSelecionadoFm = vtItensSelecionadoFm,
        _vtListaPecas = vtListaPecas,
        _vtTrecho = vtTrecho,
        _vtNivelPiso = vtNivelPiso,
        _fkIdProgramacao = fkIdProgramacao,
        _prFkResponsavelCliente = prFkResponsavelCliente,
        _prFkIdSolicitanteCliente = prFkIdSolicitanteCliente,
        _prFkIdResponsavelExecucao = prFkIdResponsavelExecucao,
        _prNomeResponsavelExecucao = prNomeResponsavelExecucao,
        _prDataInicioPrevista = prDataInicioPrevista,
        _prDataFimPrevista = prDataFimPrevista,
        _prVolumeAndaimeM3 = prVolumeAndaimeM3,
        _prAreaPisoM2 = prAreaPisoM2,
        _prMetragemLinearM = prMetragemLinearM,
        _prHomemHoraHh = prHomemHoraHh,
        _prTotalMaterialTubular = prTotalMaterialTubular,
        _prDadosEfetivo = prDadosEfetivo,
        _prListaPecas = prListaPecas,
        _nomeProjeto = nomeProjeto,
        _nomeSubprojeto = nomeSubprojeto,
        _fkIdExecucao = fkIdExecucao,
        _exResponsavelSuperus = exResponsavelSuperus,
        _exDataInicio = exDataInicio,
        _exDataConclusao = exDataConclusao,
        _exPreenchimentoDiariaMontagem = exPreenchimentoDiariaMontagem,
        _exTrecho = exTrecho,
        _exPiso = exPiso,
        _exDadosEfetivo = exDadosEfetivo,
        _exListaPecas = exListaPecas,
        _exInterferencias = exInterferencias;

  // "fk_id_status" field.
  int? _fkIdStatus;
  int get fkIdStatus => _fkIdStatus ?? 0;
  set fkIdStatus(int? val) => _fkIdStatus = val;

  void incrementFkIdStatus(int amount) => fkIdStatus = fkIdStatus + amount;

  bool hasFkIdStatus() => _fkIdStatus != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "fk_id_projeto" field.
  int? _fkIdProjeto;
  int get fkIdProjeto => _fkIdProjeto ?? 0;
  set fkIdProjeto(int? val) => _fkIdProjeto = val;

  void incrementFkIdProjeto(int amount) => fkIdProjeto = fkIdProjeto + amount;

  bool hasFkIdProjeto() => _fkIdProjeto != null;

  // "fk_id_subprojeto" field.
  int? _fkIdSubprojeto;
  int get fkIdSubprojeto => _fkIdSubprojeto ?? 0;
  set fkIdSubprojeto(int? val) => _fkIdSubprojeto = val;

  void incrementFkIdSubprojeto(int amount) =>
      fkIdSubprojeto = fkIdSubprojeto + amount;

  bool hasFkIdSubprojeto() => _fkIdSubprojeto != null;

  // "fk_id_ssa" field.
  int? _fkIdSsa;
  int get fkIdSsa => _fkIdSsa ?? 0;
  set fkIdSsa(int? val) => _fkIdSsa = val;

  void incrementFkIdSsa(int amount) => fkIdSsa = fkIdSsa + amount;

  bool hasFkIdSsa() => _fkIdSsa != null;

  // "ssa_fk_id_solicitante" field.
  int? _ssaFkIdSolicitante;
  int get ssaFkIdSolicitante => _ssaFkIdSolicitante ?? 0;
  set ssaFkIdSolicitante(int? val) => _ssaFkIdSolicitante = val;

  void incrementSsaFkIdSolicitante(int amount) =>
      ssaFkIdSolicitante = ssaFkIdSolicitante + amount;

  bool hasSsaFkIdSolicitante() => _ssaFkIdSolicitante != null;

  // "ssa_fk_id_programador_cliente" field.
  int? _ssaFkIdProgramadorCliente;
  int get ssaFkIdProgramadorCliente => _ssaFkIdProgramadorCliente ?? 0;
  set ssaFkIdProgramadorCliente(int? val) => _ssaFkIdProgramadorCliente = val;

  void incrementSsaFkIdProgramadorCliente(int amount) =>
      ssaFkIdProgramadorCliente = ssaFkIdProgramadorCliente + amount;

  bool hasSsaFkIdProgramadorCliente() => _ssaFkIdProgramadorCliente != null;

  // "ssa_fk_id_responsavel" field.
  int? _ssaFkIdResponsavel;
  int get ssaFkIdResponsavel => _ssaFkIdResponsavel ?? 0;
  set ssaFkIdResponsavel(int? val) => _ssaFkIdResponsavel = val;

  void incrementSsaFkIdResponsavel(int amount) =>
      ssaFkIdResponsavel = ssaFkIdResponsavel + amount;

  bool hasSsaFkIdResponsavel() => _ssaFkIdResponsavel != null;

  // "ssa_data_abertura" field.
  DateTime? _ssaDataAbertura;
  DateTime? get ssaDataAbertura => _ssaDataAbertura;
  set ssaDataAbertura(DateTime? val) => _ssaDataAbertura = val;

  bool hasSsaDataAbertura() => _ssaDataAbertura != null;

  // "ssa_numero_os" field.
  String? _ssaNumeroOs;
  String get ssaNumeroOs => _ssaNumeroOs ?? '';
  set ssaNumeroOs(String? val) => _ssaNumeroOs = val;

  bool hasSsaNumeroOs() => _ssaNumeroOs != null;

  // "ssa_area" field.
  String? _ssaArea;
  String get ssaArea => _ssaArea ?? '';
  set ssaArea(String? val) => _ssaArea = val;

  bool hasSsaArea() => _ssaArea != null;

  // "ssa_centro_custo_cliente" field.
  String? _ssaCentroCustoCliente;
  String get ssaCentroCustoCliente => _ssaCentroCustoCliente ?? '';
  set ssaCentroCustoCliente(String? val) => _ssaCentroCustoCliente = val;

  bool hasSsaCentroCustoCliente() => _ssaCentroCustoCliente != null;

  // "ssa_local" field.
  String? _ssaLocal;
  String get ssaLocal => _ssaLocal ?? '';
  set ssaLocal(String? val) => _ssaLocal = val;

  bool hasSsaLocal() => _ssaLocal != null;

  // "ssa_tag_equipamento" field.
  String? _ssaTagEquipamento;
  String get ssaTagEquipamento => _ssaTagEquipamento ?? '';
  set ssaTagEquipamento(String? val) => _ssaTagEquipamento = val;

  bool hasSsaTagEquipamento() => _ssaTagEquipamento != null;

  // "ssa_ordem_manutencao" field.
  String? _ssaOrdemManutencao;
  String get ssaOrdemManutencao => _ssaOrdemManutencao ?? '';
  set ssaOrdemManutencao(String? val) => _ssaOrdemManutencao = val;

  bool hasSsaOrdemManutencao() => _ssaOrdemManutencao != null;

  // "ssa_atividade_a_ser_realizada" field.
  String? _ssaAtividadeASerRealizada;
  String get ssaAtividadeASerRealizada => _ssaAtividadeASerRealizada ?? '';
  set ssaAtividadeASerRealizada(String? val) =>
      _ssaAtividadeASerRealizada = val;

  bool hasSsaAtividadeASerRealizada() => _ssaAtividadeASerRealizada != null;

  // "ssa_codigo_centro_custo" field.
  String? _ssaCodigoCentroCusto;
  String get ssaCodigoCentroCusto => _ssaCodigoCentroCusto ?? '';
  set ssaCodigoCentroCusto(String? val) => _ssaCodigoCentroCusto = val;

  bool hasSsaCodigoCentroCusto() => _ssaCodigoCentroCusto != null;

  // "ssa_tipo_manutencao" field.
  String? _ssaTipoManutencao;
  String get ssaTipoManutencao => _ssaTipoManutencao ?? '';
  set ssaTipoManutencao(String? val) => _ssaTipoManutencao = val;

  bool hasSsaTipoManutencao() => _ssaTipoManutencao != null;

  // "ssa_cod_identificador" field.
  String? _ssaCodIdentificador;
  String get ssaCodIdentificador => _ssaCodIdentificador ?? '';
  set ssaCodIdentificador(String? val) => _ssaCodIdentificador = val;

  bool hasSsaCodIdentificador() => _ssaCodIdentificador != null;

  // "ssa_obs_gerais" field.
  String? _ssaObsGerais;
  String get ssaObsGerais => _ssaObsGerais ?? '';
  set ssaObsGerais(String? val) => _ssaObsGerais = val;

  bool hasSsaObsGerais() => _ssaObsGerais != null;

  // "ssa_endereco_op" field.
  String? _ssaEnderecoOp;
  String get ssaEnderecoOp => _ssaEnderecoOp ?? '';
  set ssaEnderecoOp(String? val) => _ssaEnderecoOp = val;

  bool hasSsaEnderecoOp() => _ssaEnderecoOp != null;

  // "ssa_obs_interna" field.
  String? _ssaObsInterna;
  String get ssaObsInterna => _ssaObsInterna ?? '';
  set ssaObsInterna(String? val) => _ssaObsInterna = val;

  bool hasSsaObsInterna() => _ssaObsInterna != null;

  // "ssa_tipo_servico" field.
  String? _ssaTipoServico;
  String get ssaTipoServico => _ssaTipoServico ?? '';
  set ssaTipoServico(String? val) => _ssaTipoServico = val;

  bool hasSsaTipoServico() => _ssaTipoServico != null;

  // "ssa_nome_responsavel" field.
  String? _ssaNomeResponsavel;
  String get ssaNomeResponsavel => _ssaNomeResponsavel ?? '';
  set ssaNomeResponsavel(String? val) => _ssaNomeResponsavel = val;

  bool hasSsaNomeResponsavel() => _ssaNomeResponsavel != null;

  // "ssa_nome_solicitante" field.
  String? _ssaNomeSolicitante;
  String get ssaNomeSolicitante => _ssaNomeSolicitante ?? '';
  set ssaNomeSolicitante(String? val) => _ssaNomeSolicitante = val;

  bool hasSsaNomeSolicitante() => _ssaNomeSolicitante != null;

  // "ssa_nome_programador_cliente" field.
  String? _ssaNomeProgramadorCliente;
  String get ssaNomeProgramadorCliente => _ssaNomeProgramadorCliente ?? '';
  set ssaNomeProgramadorCliente(String? val) =>
      _ssaNomeProgramadorCliente = val;

  bool hasSsaNomeProgramadorCliente() => _ssaNomeProgramadorCliente != null;

  // "fk_id_visita_tecnica" field.
  int? _fkIdVisitaTecnica;
  int get fkIdVisitaTecnica => _fkIdVisitaTecnica ?? 0;
  set fkIdVisitaTecnica(int? val) => _fkIdVisitaTecnica = val;

  void incrementFkIdVisitaTecnica(int amount) =>
      fkIdVisitaTecnica = fkIdVisitaTecnica + amount;

  bool hasFkIdVisitaTecnica() => _fkIdVisitaTecnica != null;

  // "vt_fk_id_tecnico_responsavel" field.
  int? _vtFkIdTecnicoResponsavel;
  int get vtFkIdTecnicoResponsavel => _vtFkIdTecnicoResponsavel ?? 0;
  set vtFkIdTecnicoResponsavel(int? val) => _vtFkIdTecnicoResponsavel = val;

  void incrementVtFkIdTecnicoResponsavel(int amount) =>
      vtFkIdTecnicoResponsavel = vtFkIdTecnicoResponsavel + amount;

  bool hasVtFkIdTecnicoResponsavel() => _vtFkIdTecnicoResponsavel != null;

  // "vt_fk_responsavel_pela_visita" field.
  int? _vtFkResponsavelPelaVisita;
  int get vtFkResponsavelPelaVisita => _vtFkResponsavelPelaVisita ?? 0;
  set vtFkResponsavelPelaVisita(int? val) => _vtFkResponsavelPelaVisita = val;

  void incrementVtFkResponsavelPelaVisita(int amount) =>
      vtFkResponsavelPelaVisita = vtFkResponsavelPelaVisita + amount;

  bool hasVtFkResponsavelPelaVisita() => _vtFkResponsavelPelaVisita != null;

  // "vt_nome_tecnico_responsavel" field.
  String? _vtNomeTecnicoResponsavel;
  String get vtNomeTecnicoResponsavel => _vtNomeTecnicoResponsavel ?? '';
  set vtNomeTecnicoResponsavel(String? val) => _vtNomeTecnicoResponsavel = val;

  bool hasVtNomeTecnicoResponsavel() => _vtNomeTecnicoResponsavel != null;

  // "vt_data_visita" field.
  DateTime? _vtDataVisita;
  DateTime? get vtDataVisita => _vtDataVisita;
  set vtDataVisita(DateTime? val) => _vtDataVisita = val;

  bool hasVtDataVisita() => _vtDataVisita != null;

  // "vt_nome_encarregado_cliente" field.
  String? _vtNomeEncarregadoCliente;
  String get vtNomeEncarregadoCliente => _vtNomeEncarregadoCliente ?? '';
  set vtNomeEncarregadoCliente(String? val) => _vtNomeEncarregadoCliente = val;

  bool hasVtNomeEncarregadoCliente() => _vtNomeEncarregadoCliente != null;

  // "vt_qnt_pessoas" field.
  String? _vtQntPessoas;
  String get vtQntPessoas => _vtQntPessoas ?? '';
  set vtQntPessoas(String? val) => _vtQntPessoas = val;

  bool hasVtQntPessoas() => _vtQntPessoas != null;

  // "vt_assinatura_url" field.
  String? _vtAssinaturaUrl;
  String get vtAssinaturaUrl => _vtAssinaturaUrl ?? '';
  set vtAssinaturaUrl(String? val) => _vtAssinaturaUrl = val;

  bool hasVtAssinaturaUrl() => _vtAssinaturaUrl != null;

  // "vt_croqui_url" field.
  String? _vtCroquiUrl;
  String get vtCroquiUrl => _vtCroquiUrl ?? '';
  set vtCroquiUrl(String? val) => _vtCroquiUrl = val;

  bool hasVtCroquiUrl() => _vtCroquiUrl != null;

  // "vt_contato_encarregado_cliente" field.
  String? _vtContatoEncarregadoCliente;
  String get vtContatoEncarregadoCliente => _vtContatoEncarregadoCliente ?? '';
  set vtContatoEncarregadoCliente(String? val) =>
      _vtContatoEncarregadoCliente = val;

  bool hasVtContatoEncarregadoCliente() => _vtContatoEncarregadoCliente != null;

  // "vt_total_area_piso_m2" field.
  double? _vtTotalAreaPisoM2;
  double get vtTotalAreaPisoM2 => _vtTotalAreaPisoM2 ?? 0.0;
  set vtTotalAreaPisoM2(double? val) => _vtTotalAreaPisoM2 = val;

  void incrementVtTotalAreaPisoM2(double amount) =>
      vtTotalAreaPisoM2 = vtTotalAreaPisoM2 + amount;

  bool hasVtTotalAreaPisoM2() => _vtTotalAreaPisoM2 != null;

  // "vt_volume_total_m2" field.
  double? _vtVolumeTotalM2;
  double get vtVolumeTotalM2 => _vtVolumeTotalM2 ?? 0.0;
  set vtVolumeTotalM2(double? val) => _vtVolumeTotalM2 = val;

  void incrementVtVolumeTotalM2(double amount) =>
      vtVolumeTotalM2 = vtVolumeTotalM2 + amount;

  bool hasVtVolumeTotalM2() => _vtVolumeTotalM2 != null;

  // "vt_carga_estrutura" field.
  String? _vtCargaEstrutura;
  String get vtCargaEstrutura => _vtCargaEstrutura ?? '';
  set vtCargaEstrutura(String? val) => _vtCargaEstrutura = val;

  bool hasVtCargaEstrutura() => _vtCargaEstrutura != null;

  // "vt_soma_area_nivel" field.
  double? _vtSomaAreaNivel;
  double get vtSomaAreaNivel => _vtSomaAreaNivel ?? 0.0;
  set vtSomaAreaNivel(double? val) => _vtSomaAreaNivel = val;

  void incrementVtSomaAreaNivel(double amount) =>
      vtSomaAreaNivel = vtSomaAreaNivel + amount;

  bool hasVtSomaAreaNivel() => _vtSomaAreaNivel != null;

  // "vt_soma_quantidade_prevista" field.
  int? _vtSomaQuantidadePrevista;
  int get vtSomaQuantidadePrevista => _vtSomaQuantidadePrevista ?? 0;
  set vtSomaQuantidadePrevista(int? val) => _vtSomaQuantidadePrevista = val;

  void incrementVtSomaQuantidadePrevista(int amount) =>
      vtSomaQuantidadePrevista = vtSomaQuantidadePrevista + amount;

  bool hasVtSomaQuantidadePrevista() => _vtSomaQuantidadePrevista != null;

  // "vt_comentarios" field.
  List<String>? _vtComentarios;
  List<String> get vtComentarios => _vtComentarios ?? const [];
  set vtComentarios(List<String>? val) => _vtComentarios = val;

  void updateVtComentarios(Function(List<String>) updateFn) {
    updateFn(_vtComentarios ??= []);
  }

  bool hasVtComentarios() => _vtComentarios != null;

  // "vt_itensSelecionadosSINGLE" field.
  List<int>? _vtItensSelecionadosSINGLE;
  List<int> get vtItensSelecionadosSINGLE =>
      _vtItensSelecionadosSINGLE ?? const [];
  set vtItensSelecionadosSINGLE(List<int>? val) =>
      _vtItensSelecionadosSINGLE = val;

  void updateVtItensSelecionadosSINGLE(Function(List<int>) updateFn) {
    updateFn(_vtItensSelecionadosSINGLE ??= []);
  }

  bool hasVtItensSelecionadosSINGLE() => _vtItensSelecionadosSINGLE != null;

  // "vt_itensSelecionadoFm" field.
  List<FmItensSelecionadosStruct>? _vtItensSelecionadoFm;
  List<FmItensSelecionadosStruct> get vtItensSelecionadoFm =>
      _vtItensSelecionadoFm ?? const [];
  set vtItensSelecionadoFm(List<FmItensSelecionadosStruct>? val) =>
      _vtItensSelecionadoFm = val;

  void updateVtItensSelecionadoFm(
      Function(List<FmItensSelecionadosStruct>) updateFn) {
    updateFn(_vtItensSelecionadoFm ??= []);
  }

  bool hasVtItensSelecionadoFm() => _vtItensSelecionadoFm != null;

  // "vt_ListaPecas" field.
  List<FmListaPecasStruct>? _vtListaPecas;
  List<FmListaPecasStruct> get vtListaPecas => _vtListaPecas ?? const [];
  set vtListaPecas(List<FmListaPecasStruct>? val) => _vtListaPecas = val;

  void updateVtListaPecas(Function(List<FmListaPecasStruct>) updateFn) {
    updateFn(_vtListaPecas ??= []);
  }

  bool hasVtListaPecas() => _vtListaPecas != null;

  // "vt_trecho" field.
  List<FmTrechoStruct>? _vtTrecho;
  List<FmTrechoStruct> get vtTrecho => _vtTrecho ?? const [];
  set vtTrecho(List<FmTrechoStruct>? val) => _vtTrecho = val;

  void updateVtTrecho(Function(List<FmTrechoStruct>) updateFn) {
    updateFn(_vtTrecho ??= []);
  }

  bool hasVtTrecho() => _vtTrecho != null;

  // "vt_nivel_piso" field.
  List<FmPisoStruct>? _vtNivelPiso;
  List<FmPisoStruct> get vtNivelPiso => _vtNivelPiso ?? const [];
  set vtNivelPiso(List<FmPisoStruct>? val) => _vtNivelPiso = val;

  void updateVtNivelPiso(Function(List<FmPisoStruct>) updateFn) {
    updateFn(_vtNivelPiso ??= []);
  }

  bool hasVtNivelPiso() => _vtNivelPiso != null;

  // "fk_id_programacao" field.
  int? _fkIdProgramacao;
  int get fkIdProgramacao => _fkIdProgramacao ?? 0;
  set fkIdProgramacao(int? val) => _fkIdProgramacao = val;

  void incrementFkIdProgramacao(int amount) =>
      fkIdProgramacao = fkIdProgramacao + amount;

  bool hasFkIdProgramacao() => _fkIdProgramacao != null;

  // "pr_fk_responsavel_cliente" field.
  int? _prFkResponsavelCliente;
  int get prFkResponsavelCliente => _prFkResponsavelCliente ?? 0;
  set prFkResponsavelCliente(int? val) => _prFkResponsavelCliente = val;

  void incrementPrFkResponsavelCliente(int amount) =>
      prFkResponsavelCliente = prFkResponsavelCliente + amount;

  bool hasPrFkResponsavelCliente() => _prFkResponsavelCliente != null;

  // "pr_fk_id_solicitante_cliente" field.
  int? _prFkIdSolicitanteCliente;
  int get prFkIdSolicitanteCliente => _prFkIdSolicitanteCliente ?? 0;
  set prFkIdSolicitanteCliente(int? val) => _prFkIdSolicitanteCliente = val;

  void incrementPrFkIdSolicitanteCliente(int amount) =>
      prFkIdSolicitanteCliente = prFkIdSolicitanteCliente + amount;

  bool hasPrFkIdSolicitanteCliente() => _prFkIdSolicitanteCliente != null;

  // "pr_fk_id_responsavel_execucao" field.
  int? _prFkIdResponsavelExecucao;
  int get prFkIdResponsavelExecucao => _prFkIdResponsavelExecucao ?? 0;
  set prFkIdResponsavelExecucao(int? val) => _prFkIdResponsavelExecucao = val;

  void incrementPrFkIdResponsavelExecucao(int amount) =>
      prFkIdResponsavelExecucao = prFkIdResponsavelExecucao + amount;

  bool hasPrFkIdResponsavelExecucao() => _prFkIdResponsavelExecucao != null;

  // "pr_nome_responsavel_execucao" field.
  String? _prNomeResponsavelExecucao;
  String get prNomeResponsavelExecucao => _prNomeResponsavelExecucao ?? '';
  set prNomeResponsavelExecucao(String? val) =>
      _prNomeResponsavelExecucao = val;

  bool hasPrNomeResponsavelExecucao() => _prNomeResponsavelExecucao != null;

  // "pr_data_inicio_prevista" field.
  DateTime? _prDataInicioPrevista;
  DateTime? get prDataInicioPrevista => _prDataInicioPrevista;
  set prDataInicioPrevista(DateTime? val) => _prDataInicioPrevista = val;

  bool hasPrDataInicioPrevista() => _prDataInicioPrevista != null;

  // "pr_data_fim_prevista" field.
  DateTime? _prDataFimPrevista;
  DateTime? get prDataFimPrevista => _prDataFimPrevista;
  set prDataFimPrevista(DateTime? val) => _prDataFimPrevista = val;

  bool hasPrDataFimPrevista() => _prDataFimPrevista != null;

  // "pr_volume_andaime_m3" field.
  double? _prVolumeAndaimeM3;
  double get prVolumeAndaimeM3 => _prVolumeAndaimeM3 ?? 0.0;
  set prVolumeAndaimeM3(double? val) => _prVolumeAndaimeM3 = val;

  void incrementPrVolumeAndaimeM3(double amount) =>
      prVolumeAndaimeM3 = prVolumeAndaimeM3 + amount;

  bool hasPrVolumeAndaimeM3() => _prVolumeAndaimeM3 != null;

  // "pr_area_piso_m2" field.
  double? _prAreaPisoM2;
  double get prAreaPisoM2 => _prAreaPisoM2 ?? 0.0;
  set prAreaPisoM2(double? val) => _prAreaPisoM2 = val;

  void incrementPrAreaPisoM2(double amount) =>
      prAreaPisoM2 = prAreaPisoM2 + amount;

  bool hasPrAreaPisoM2() => _prAreaPisoM2 != null;

  // "pr_metragem_linear_m" field.
  double? _prMetragemLinearM;
  double get prMetragemLinearM => _prMetragemLinearM ?? 0.0;
  set prMetragemLinearM(double? val) => _prMetragemLinearM = val;

  void incrementPrMetragemLinearM(double amount) =>
      prMetragemLinearM = prMetragemLinearM + amount;

  bool hasPrMetragemLinearM() => _prMetragemLinearM != null;

  // "pr_homem_hora_hh" field.
  double? _prHomemHoraHh;
  double get prHomemHoraHh => _prHomemHoraHh ?? 0.0;
  set prHomemHoraHh(double? val) => _prHomemHoraHh = val;

  void incrementPrHomemHoraHh(double amount) =>
      prHomemHoraHh = prHomemHoraHh + amount;

  bool hasPrHomemHoraHh() => _prHomemHoraHh != null;

  // "pr_total_material_tubular" field.
  double? _prTotalMaterialTubular;
  double get prTotalMaterialTubular => _prTotalMaterialTubular ?? 0.0;
  set prTotalMaterialTubular(double? val) => _prTotalMaterialTubular = val;

  void incrementPrTotalMaterialTubular(double amount) =>
      prTotalMaterialTubular = prTotalMaterialTubular + amount;

  bool hasPrTotalMaterialTubular() => _prTotalMaterialTubular != null;

  // "pr_dados_efetivo" field.
  List<FmDadosEfetivoStruct>? _prDadosEfetivo;
  List<FmDadosEfetivoStruct> get prDadosEfetivo => _prDadosEfetivo ?? const [];
  set prDadosEfetivo(List<FmDadosEfetivoStruct>? val) => _prDadosEfetivo = val;

  void updatePrDadosEfetivo(Function(List<FmDadosEfetivoStruct>) updateFn) {
    updateFn(_prDadosEfetivo ??= []);
  }

  bool hasPrDadosEfetivo() => _prDadosEfetivo != null;

  // "pr_listaPecas" field.
  List<FmListaPecasStruct>? _prListaPecas;
  List<FmListaPecasStruct> get prListaPecas => _prListaPecas ?? const [];
  set prListaPecas(List<FmListaPecasStruct>? val) => _prListaPecas = val;

  void updatePrListaPecas(Function(List<FmListaPecasStruct>) updateFn) {
    updateFn(_prListaPecas ??= []);
  }

  bool hasPrListaPecas() => _prListaPecas != null;

  // "nome_projeto" field.
  String? _nomeProjeto;
  String get nomeProjeto => _nomeProjeto ?? '';
  set nomeProjeto(String? val) => _nomeProjeto = val;

  bool hasNomeProjeto() => _nomeProjeto != null;

  // "nome_subprojeto" field.
  String? _nomeSubprojeto;
  String get nomeSubprojeto => _nomeSubprojeto ?? '';
  set nomeSubprojeto(String? val) => _nomeSubprojeto = val;

  bool hasNomeSubprojeto() => _nomeSubprojeto != null;

  // "fk_id_execucao" field.
  int? _fkIdExecucao;
  int get fkIdExecucao => _fkIdExecucao ?? 0;
  set fkIdExecucao(int? val) => _fkIdExecucao = val;

  void incrementFkIdExecucao(int amount) =>
      fkIdExecucao = fkIdExecucao + amount;

  bool hasFkIdExecucao() => _fkIdExecucao != null;

  // "ex_responsavel_superus" field.
  String? _exResponsavelSuperus;
  String get exResponsavelSuperus => _exResponsavelSuperus ?? '';
  set exResponsavelSuperus(String? val) => _exResponsavelSuperus = val;

  bool hasExResponsavelSuperus() => _exResponsavelSuperus != null;

  // "ex_data_inicio" field.
  DateTime? _exDataInicio;
  DateTime? get exDataInicio => _exDataInicio;
  set exDataInicio(DateTime? val) => _exDataInicio = val;

  bool hasExDataInicio() => _exDataInicio != null;

  // "ex_data_conclusao" field.
  DateTime? _exDataConclusao;
  DateTime? get exDataConclusao => _exDataConclusao;
  set exDataConclusao(DateTime? val) => _exDataConclusao = val;

  bool hasExDataConclusao() => _exDataConclusao != null;

  // "ex_preenchimento_diaria_montagem" field.
  List<FmPreenchimentoExecucaoStruct>? _exPreenchimentoDiariaMontagem;
  List<FmPreenchimentoExecucaoStruct> get exPreenchimentoDiariaMontagem =>
      _exPreenchimentoDiariaMontagem ?? const [];
  set exPreenchimentoDiariaMontagem(List<FmPreenchimentoExecucaoStruct>? val) =>
      _exPreenchimentoDiariaMontagem = val;

  void updateExPreenchimentoDiariaMontagem(
      Function(List<FmPreenchimentoExecucaoStruct>) updateFn) {
    updateFn(_exPreenchimentoDiariaMontagem ??= []);
  }

  bool hasExPreenchimentoDiariaMontagem() =>
      _exPreenchimentoDiariaMontagem != null;

  // "ex_trecho" field.
  List<FmTrechoStruct>? _exTrecho;
  List<FmTrechoStruct> get exTrecho => _exTrecho ?? const [];
  set exTrecho(List<FmTrechoStruct>? val) => _exTrecho = val;

  void updateExTrecho(Function(List<FmTrechoStruct>) updateFn) {
    updateFn(_exTrecho ??= []);
  }

  bool hasExTrecho() => _exTrecho != null;

  // "ex_piso" field.
  List<FmPisoStruct>? _exPiso;
  List<FmPisoStruct> get exPiso => _exPiso ?? const [];
  set exPiso(List<FmPisoStruct>? val) => _exPiso = val;

  void updateExPiso(Function(List<FmPisoStruct>) updateFn) {
    updateFn(_exPiso ??= []);
  }

  bool hasExPiso() => _exPiso != null;

  // "ex_dados_efetivo" field.
  List<FmDadosEfetivoStruct>? _exDadosEfetivo;
  List<FmDadosEfetivoStruct> get exDadosEfetivo => _exDadosEfetivo ?? const [];
  set exDadosEfetivo(List<FmDadosEfetivoStruct>? val) => _exDadosEfetivo = val;

  void updateExDadosEfetivo(Function(List<FmDadosEfetivoStruct>) updateFn) {
    updateFn(_exDadosEfetivo ??= []);
  }

  bool hasExDadosEfetivo() => _exDadosEfetivo != null;

  // "ex_lista_pecas" field.
  List<FmListaPecasStruct>? _exListaPecas;
  List<FmListaPecasStruct> get exListaPecas => _exListaPecas ?? const [];
  set exListaPecas(List<FmListaPecasStruct>? val) => _exListaPecas = val;

  void updateExListaPecas(Function(List<FmListaPecasStruct>) updateFn) {
    updateFn(_exListaPecas ??= []);
  }

  bool hasExListaPecas() => _exListaPecas != null;

  // "ex_interferencias" field.
  List<FmInterferenciaExecucaoStruct>? _exInterferencias;
  List<FmInterferenciaExecucaoStruct> get exInterferencias =>
      _exInterferencias ?? const [];
  set exInterferencias(List<FmInterferenciaExecucaoStruct>? val) =>
      _exInterferencias = val;

  void updateExInterferencias(
      Function(List<FmInterferenciaExecucaoStruct>) updateFn) {
    updateFn(_exInterferencias ??= []);
  }

  bool hasExInterferencias() => _exInterferencias != null;

  static CcSSACompletaStruct fromMap(Map<String, dynamic> data) =>
      CcSSACompletaStruct(
        fkIdStatus: castToType<int>(data['fk_id_status']),
        status: data['status'] as String?,
        fkIdProjeto: castToType<int>(data['fk_id_projeto']),
        fkIdSubprojeto: castToType<int>(data['fk_id_subprojeto']),
        fkIdSsa: castToType<int>(data['fk_id_ssa']),
        ssaFkIdSolicitante: castToType<int>(data['ssa_fk_id_solicitante']),
        ssaFkIdProgramadorCliente:
            castToType<int>(data['ssa_fk_id_programador_cliente']),
        ssaFkIdResponsavel: castToType<int>(data['ssa_fk_id_responsavel']),
        ssaDataAbertura: data['ssa_data_abertura'] as DateTime?,
        ssaNumeroOs: data['ssa_numero_os'] as String?,
        ssaArea: data['ssa_area'] as String?,
        ssaCentroCustoCliente: data['ssa_centro_custo_cliente'] as String?,
        ssaLocal: data['ssa_local'] as String?,
        ssaTagEquipamento: data['ssa_tag_equipamento'] as String?,
        ssaOrdemManutencao: data['ssa_ordem_manutencao'] as String?,
        ssaAtividadeASerRealizada:
            data['ssa_atividade_a_ser_realizada'] as String?,
        ssaCodigoCentroCusto: data['ssa_codigo_centro_custo'] as String?,
        ssaTipoManutencao: data['ssa_tipo_manutencao'] as String?,
        ssaCodIdentificador: data['ssa_cod_identificador'] as String?,
        ssaObsGerais: data['ssa_obs_gerais'] as String?,
        ssaEnderecoOp: data['ssa_endereco_op'] as String?,
        ssaObsInterna: data['ssa_obs_interna'] as String?,
        ssaTipoServico: data['ssa_tipo_servico'] as String?,
        ssaNomeResponsavel: data['ssa_nome_responsavel'] as String?,
        ssaNomeSolicitante: data['ssa_nome_solicitante'] as String?,
        ssaNomeProgramadorCliente:
            data['ssa_nome_programador_cliente'] as String?,
        fkIdVisitaTecnica: castToType<int>(data['fk_id_visita_tecnica']),
        vtFkIdTecnicoResponsavel:
            castToType<int>(data['vt_fk_id_tecnico_responsavel']),
        vtFkResponsavelPelaVisita:
            castToType<int>(data['vt_fk_responsavel_pela_visita']),
        vtNomeTecnicoResponsavel:
            data['vt_nome_tecnico_responsavel'] as String?,
        vtDataVisita: data['vt_data_visita'] as DateTime?,
        vtNomeEncarregadoCliente:
            data['vt_nome_encarregado_cliente'] as String?,
        vtQntPessoas: data['vt_qnt_pessoas'] as String?,
        vtAssinaturaUrl: data['vt_assinatura_url'] as String?,
        vtCroquiUrl: data['vt_croqui_url'] as String?,
        vtContatoEncarregadoCliente:
            data['vt_contato_encarregado_cliente'] as String?,
        vtTotalAreaPisoM2: castToType<double>(data['vt_total_area_piso_m2']),
        vtVolumeTotalM2: castToType<double>(data['vt_volume_total_m2']),
        vtCargaEstrutura: data['vt_carga_estrutura'] as String?,
        vtSomaAreaNivel: castToType<double>(data['vt_soma_area_nivel']),
        vtSomaQuantidadePrevista:
            castToType<int>(data['vt_soma_quantidade_prevista']),
        vtComentarios: getDataList(data['vt_comentarios']),
        vtItensSelecionadosSINGLE:
            getDataList(data['vt_itensSelecionadosSINGLE']),
        vtItensSelecionadoFm: getStructList(
          data['vt_itensSelecionadoFm'],
          FmItensSelecionadosStruct.fromMap,
        ),
        vtListaPecas: getStructList(
          data['vt_ListaPecas'],
          FmListaPecasStruct.fromMap,
        ),
        vtTrecho: getStructList(
          data['vt_trecho'],
          FmTrechoStruct.fromMap,
        ),
        vtNivelPiso: getStructList(
          data['vt_nivel_piso'],
          FmPisoStruct.fromMap,
        ),
        fkIdProgramacao: castToType<int>(data['fk_id_programacao']),
        prFkResponsavelCliente:
            castToType<int>(data['pr_fk_responsavel_cliente']),
        prFkIdSolicitanteCliente:
            castToType<int>(data['pr_fk_id_solicitante_cliente']),
        prFkIdResponsavelExecucao:
            castToType<int>(data['pr_fk_id_responsavel_execucao']),
        prNomeResponsavelExecucao:
            data['pr_nome_responsavel_execucao'] as String?,
        prDataInicioPrevista: data['pr_data_inicio_prevista'] as DateTime?,
        prDataFimPrevista: data['pr_data_fim_prevista'] as DateTime?,
        prVolumeAndaimeM3: castToType<double>(data['pr_volume_andaime_m3']),
        prAreaPisoM2: castToType<double>(data['pr_area_piso_m2']),
        prMetragemLinearM: castToType<double>(data['pr_metragem_linear_m']),
        prHomemHoraHh: castToType<double>(data['pr_homem_hora_hh']),
        prTotalMaterialTubular:
            castToType<double>(data['pr_total_material_tubular']),
        prDadosEfetivo: getStructList(
          data['pr_dados_efetivo'],
          FmDadosEfetivoStruct.fromMap,
        ),
        prListaPecas: getStructList(
          data['pr_listaPecas'],
          FmListaPecasStruct.fromMap,
        ),
        nomeProjeto: data['nome_projeto'] as String?,
        nomeSubprojeto: data['nome_subprojeto'] as String?,
        fkIdExecucao: castToType<int>(data['fk_id_execucao']),
        exResponsavelSuperus: data['ex_responsavel_superus'] as String?,
        exDataInicio: data['ex_data_inicio'] as DateTime?,
        exDataConclusao: data['ex_data_conclusao'] as DateTime?,
        exPreenchimentoDiariaMontagem: getStructList(
          data['ex_preenchimento_diaria_montagem'],
          FmPreenchimentoExecucaoStruct.fromMap,
        ),
        exTrecho: getStructList(
          data['ex_trecho'],
          FmTrechoStruct.fromMap,
        ),
        exPiso: getStructList(
          data['ex_piso'],
          FmPisoStruct.fromMap,
        ),
        exDadosEfetivo: getStructList(
          data['ex_dados_efetivo'],
          FmDadosEfetivoStruct.fromMap,
        ),
        exListaPecas: getStructList(
          data['ex_lista_pecas'],
          FmListaPecasStruct.fromMap,
        ),
        exInterferencias: getStructList(
          data['ex_interferencias'],
          FmInterferenciaExecucaoStruct.fromMap,
        ),
      );

  static CcSSACompletaStruct? maybeFromMap(dynamic data) => data is Map
      ? CcSSACompletaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fk_id_status': _fkIdStatus,
        'status': _status,
        'fk_id_projeto': _fkIdProjeto,
        'fk_id_subprojeto': _fkIdSubprojeto,
        'fk_id_ssa': _fkIdSsa,
        'ssa_fk_id_solicitante': _ssaFkIdSolicitante,
        'ssa_fk_id_programador_cliente': _ssaFkIdProgramadorCliente,
        'ssa_fk_id_responsavel': _ssaFkIdResponsavel,
        'ssa_data_abertura': _ssaDataAbertura,
        'ssa_numero_os': _ssaNumeroOs,
        'ssa_area': _ssaArea,
        'ssa_centro_custo_cliente': _ssaCentroCustoCliente,
        'ssa_local': _ssaLocal,
        'ssa_tag_equipamento': _ssaTagEquipamento,
        'ssa_ordem_manutencao': _ssaOrdemManutencao,
        'ssa_atividade_a_ser_realizada': _ssaAtividadeASerRealizada,
        'ssa_codigo_centro_custo': _ssaCodigoCentroCusto,
        'ssa_tipo_manutencao': _ssaTipoManutencao,
        'ssa_cod_identificador': _ssaCodIdentificador,
        'ssa_obs_gerais': _ssaObsGerais,
        'ssa_endereco_op': _ssaEnderecoOp,
        'ssa_obs_interna': _ssaObsInterna,
        'ssa_tipo_servico': _ssaTipoServico,
        'ssa_nome_responsavel': _ssaNomeResponsavel,
        'ssa_nome_solicitante': _ssaNomeSolicitante,
        'ssa_nome_programador_cliente': _ssaNomeProgramadorCliente,
        'fk_id_visita_tecnica': _fkIdVisitaTecnica,
        'vt_fk_id_tecnico_responsavel': _vtFkIdTecnicoResponsavel,
        'vt_fk_responsavel_pela_visita': _vtFkResponsavelPelaVisita,
        'vt_nome_tecnico_responsavel': _vtNomeTecnicoResponsavel,
        'vt_data_visita': _vtDataVisita,
        'vt_nome_encarregado_cliente': _vtNomeEncarregadoCliente,
        'vt_qnt_pessoas': _vtQntPessoas,
        'vt_assinatura_url': _vtAssinaturaUrl,
        'vt_croqui_url': _vtCroquiUrl,
        'vt_contato_encarregado_cliente': _vtContatoEncarregadoCliente,
        'vt_total_area_piso_m2': _vtTotalAreaPisoM2,
        'vt_volume_total_m2': _vtVolumeTotalM2,
        'vt_carga_estrutura': _vtCargaEstrutura,
        'vt_soma_area_nivel': _vtSomaAreaNivel,
        'vt_soma_quantidade_prevista': _vtSomaQuantidadePrevista,
        'vt_comentarios': _vtComentarios,
        'vt_itensSelecionadosSINGLE': _vtItensSelecionadosSINGLE,
        'vt_itensSelecionadoFm':
            _vtItensSelecionadoFm?.map((e) => e.toMap()).toList(),
        'vt_ListaPecas': _vtListaPecas?.map((e) => e.toMap()).toList(),
        'vt_trecho': _vtTrecho?.map((e) => e.toMap()).toList(),
        'vt_nivel_piso': _vtNivelPiso?.map((e) => e.toMap()).toList(),
        'fk_id_programacao': _fkIdProgramacao,
        'pr_fk_responsavel_cliente': _prFkResponsavelCliente,
        'pr_fk_id_solicitante_cliente': _prFkIdSolicitanteCliente,
        'pr_fk_id_responsavel_execucao': _prFkIdResponsavelExecucao,
        'pr_nome_responsavel_execucao': _prNomeResponsavelExecucao,
        'pr_data_inicio_prevista': _prDataInicioPrevista,
        'pr_data_fim_prevista': _prDataFimPrevista,
        'pr_volume_andaime_m3': _prVolumeAndaimeM3,
        'pr_area_piso_m2': _prAreaPisoM2,
        'pr_metragem_linear_m': _prMetragemLinearM,
        'pr_homem_hora_hh': _prHomemHoraHh,
        'pr_total_material_tubular': _prTotalMaterialTubular,
        'pr_dados_efetivo': _prDadosEfetivo?.map((e) => e.toMap()).toList(),
        'pr_listaPecas': _prListaPecas?.map((e) => e.toMap()).toList(),
        'nome_projeto': _nomeProjeto,
        'nome_subprojeto': _nomeSubprojeto,
        'fk_id_execucao': _fkIdExecucao,
        'ex_responsavel_superus': _exResponsavelSuperus,
        'ex_data_inicio': _exDataInicio,
        'ex_data_conclusao': _exDataConclusao,
        'ex_preenchimento_diaria_montagem':
            _exPreenchimentoDiariaMontagem?.map((e) => e.toMap()).toList(),
        'ex_trecho': _exTrecho?.map((e) => e.toMap()).toList(),
        'ex_piso': _exPiso?.map((e) => e.toMap()).toList(),
        'ex_dados_efetivo': _exDadosEfetivo?.map((e) => e.toMap()).toList(),
        'ex_lista_pecas': _exListaPecas?.map((e) => e.toMap()).toList(),
        'ex_interferencias': _exInterferencias?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fk_id_status': serializeParam(
          _fkIdStatus,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'fk_id_projeto': serializeParam(
          _fkIdProjeto,
          ParamType.int,
        ),
        'fk_id_subprojeto': serializeParam(
          _fkIdSubprojeto,
          ParamType.int,
        ),
        'fk_id_ssa': serializeParam(
          _fkIdSsa,
          ParamType.int,
        ),
        'ssa_fk_id_solicitante': serializeParam(
          _ssaFkIdSolicitante,
          ParamType.int,
        ),
        'ssa_fk_id_programador_cliente': serializeParam(
          _ssaFkIdProgramadorCliente,
          ParamType.int,
        ),
        'ssa_fk_id_responsavel': serializeParam(
          _ssaFkIdResponsavel,
          ParamType.int,
        ),
        'ssa_data_abertura': serializeParam(
          _ssaDataAbertura,
          ParamType.DateTime,
        ),
        'ssa_numero_os': serializeParam(
          _ssaNumeroOs,
          ParamType.String,
        ),
        'ssa_area': serializeParam(
          _ssaArea,
          ParamType.String,
        ),
        'ssa_centro_custo_cliente': serializeParam(
          _ssaCentroCustoCliente,
          ParamType.String,
        ),
        'ssa_local': serializeParam(
          _ssaLocal,
          ParamType.String,
        ),
        'ssa_tag_equipamento': serializeParam(
          _ssaTagEquipamento,
          ParamType.String,
        ),
        'ssa_ordem_manutencao': serializeParam(
          _ssaOrdemManutencao,
          ParamType.String,
        ),
        'ssa_atividade_a_ser_realizada': serializeParam(
          _ssaAtividadeASerRealizada,
          ParamType.String,
        ),
        'ssa_codigo_centro_custo': serializeParam(
          _ssaCodigoCentroCusto,
          ParamType.String,
        ),
        'ssa_tipo_manutencao': serializeParam(
          _ssaTipoManutencao,
          ParamType.String,
        ),
        'ssa_cod_identificador': serializeParam(
          _ssaCodIdentificador,
          ParamType.String,
        ),
        'ssa_obs_gerais': serializeParam(
          _ssaObsGerais,
          ParamType.String,
        ),
        'ssa_endereco_op': serializeParam(
          _ssaEnderecoOp,
          ParamType.String,
        ),
        'ssa_obs_interna': serializeParam(
          _ssaObsInterna,
          ParamType.String,
        ),
        'ssa_tipo_servico': serializeParam(
          _ssaTipoServico,
          ParamType.String,
        ),
        'ssa_nome_responsavel': serializeParam(
          _ssaNomeResponsavel,
          ParamType.String,
        ),
        'ssa_nome_solicitante': serializeParam(
          _ssaNomeSolicitante,
          ParamType.String,
        ),
        'ssa_nome_programador_cliente': serializeParam(
          _ssaNomeProgramadorCliente,
          ParamType.String,
        ),
        'fk_id_visita_tecnica': serializeParam(
          _fkIdVisitaTecnica,
          ParamType.int,
        ),
        'vt_fk_id_tecnico_responsavel': serializeParam(
          _vtFkIdTecnicoResponsavel,
          ParamType.int,
        ),
        'vt_fk_responsavel_pela_visita': serializeParam(
          _vtFkResponsavelPelaVisita,
          ParamType.int,
        ),
        'vt_nome_tecnico_responsavel': serializeParam(
          _vtNomeTecnicoResponsavel,
          ParamType.String,
        ),
        'vt_data_visita': serializeParam(
          _vtDataVisita,
          ParamType.DateTime,
        ),
        'vt_nome_encarregado_cliente': serializeParam(
          _vtNomeEncarregadoCliente,
          ParamType.String,
        ),
        'vt_qnt_pessoas': serializeParam(
          _vtQntPessoas,
          ParamType.String,
        ),
        'vt_assinatura_url': serializeParam(
          _vtAssinaturaUrl,
          ParamType.String,
        ),
        'vt_croqui_url': serializeParam(
          _vtCroquiUrl,
          ParamType.String,
        ),
        'vt_contato_encarregado_cliente': serializeParam(
          _vtContatoEncarregadoCliente,
          ParamType.String,
        ),
        'vt_total_area_piso_m2': serializeParam(
          _vtTotalAreaPisoM2,
          ParamType.double,
        ),
        'vt_volume_total_m2': serializeParam(
          _vtVolumeTotalM2,
          ParamType.double,
        ),
        'vt_carga_estrutura': serializeParam(
          _vtCargaEstrutura,
          ParamType.String,
        ),
        'vt_soma_area_nivel': serializeParam(
          _vtSomaAreaNivel,
          ParamType.double,
        ),
        'vt_soma_quantidade_prevista': serializeParam(
          _vtSomaQuantidadePrevista,
          ParamType.int,
        ),
        'vt_comentarios': serializeParam(
          _vtComentarios,
          ParamType.String,
          isList: true,
        ),
        'vt_itensSelecionadosSINGLE': serializeParam(
          _vtItensSelecionadosSINGLE,
          ParamType.int,
          isList: true,
        ),
        'vt_itensSelecionadoFm': serializeParam(
          _vtItensSelecionadoFm,
          ParamType.DataStruct,
          isList: true,
        ),
        'vt_ListaPecas': serializeParam(
          _vtListaPecas,
          ParamType.DataStruct,
          isList: true,
        ),
        'vt_trecho': serializeParam(
          _vtTrecho,
          ParamType.DataStruct,
          isList: true,
        ),
        'vt_nivel_piso': serializeParam(
          _vtNivelPiso,
          ParamType.DataStruct,
          isList: true,
        ),
        'fk_id_programacao': serializeParam(
          _fkIdProgramacao,
          ParamType.int,
        ),
        'pr_fk_responsavel_cliente': serializeParam(
          _prFkResponsavelCliente,
          ParamType.int,
        ),
        'pr_fk_id_solicitante_cliente': serializeParam(
          _prFkIdSolicitanteCliente,
          ParamType.int,
        ),
        'pr_fk_id_responsavel_execucao': serializeParam(
          _prFkIdResponsavelExecucao,
          ParamType.int,
        ),
        'pr_nome_responsavel_execucao': serializeParam(
          _prNomeResponsavelExecucao,
          ParamType.String,
        ),
        'pr_data_inicio_prevista': serializeParam(
          _prDataInicioPrevista,
          ParamType.DateTime,
        ),
        'pr_data_fim_prevista': serializeParam(
          _prDataFimPrevista,
          ParamType.DateTime,
        ),
        'pr_volume_andaime_m3': serializeParam(
          _prVolumeAndaimeM3,
          ParamType.double,
        ),
        'pr_area_piso_m2': serializeParam(
          _prAreaPisoM2,
          ParamType.double,
        ),
        'pr_metragem_linear_m': serializeParam(
          _prMetragemLinearM,
          ParamType.double,
        ),
        'pr_homem_hora_hh': serializeParam(
          _prHomemHoraHh,
          ParamType.double,
        ),
        'pr_total_material_tubular': serializeParam(
          _prTotalMaterialTubular,
          ParamType.double,
        ),
        'pr_dados_efetivo': serializeParam(
          _prDadosEfetivo,
          ParamType.DataStruct,
          isList: true,
        ),
        'pr_listaPecas': serializeParam(
          _prListaPecas,
          ParamType.DataStruct,
          isList: true,
        ),
        'nome_projeto': serializeParam(
          _nomeProjeto,
          ParamType.String,
        ),
        'nome_subprojeto': serializeParam(
          _nomeSubprojeto,
          ParamType.String,
        ),
        'fk_id_execucao': serializeParam(
          _fkIdExecucao,
          ParamType.int,
        ),
        'ex_responsavel_superus': serializeParam(
          _exResponsavelSuperus,
          ParamType.String,
        ),
        'ex_data_inicio': serializeParam(
          _exDataInicio,
          ParamType.DateTime,
        ),
        'ex_data_conclusao': serializeParam(
          _exDataConclusao,
          ParamType.DateTime,
        ),
        'ex_preenchimento_diaria_montagem': serializeParam(
          _exPreenchimentoDiariaMontagem,
          ParamType.DataStruct,
          isList: true,
        ),
        'ex_trecho': serializeParam(
          _exTrecho,
          ParamType.DataStruct,
          isList: true,
        ),
        'ex_piso': serializeParam(
          _exPiso,
          ParamType.DataStruct,
          isList: true,
        ),
        'ex_dados_efetivo': serializeParam(
          _exDadosEfetivo,
          ParamType.DataStruct,
          isList: true,
        ),
        'ex_lista_pecas': serializeParam(
          _exListaPecas,
          ParamType.DataStruct,
          isList: true,
        ),
        'ex_interferencias': serializeParam(
          _exInterferencias,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CcSSACompletaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CcSSACompletaStruct(
        fkIdStatus: deserializeParam(
          data['fk_id_status'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        fkIdProjeto: deserializeParam(
          data['fk_id_projeto'],
          ParamType.int,
          false,
        ),
        fkIdSubprojeto: deserializeParam(
          data['fk_id_subprojeto'],
          ParamType.int,
          false,
        ),
        fkIdSsa: deserializeParam(
          data['fk_id_ssa'],
          ParamType.int,
          false,
        ),
        ssaFkIdSolicitante: deserializeParam(
          data['ssa_fk_id_solicitante'],
          ParamType.int,
          false,
        ),
        ssaFkIdProgramadorCliente: deserializeParam(
          data['ssa_fk_id_programador_cliente'],
          ParamType.int,
          false,
        ),
        ssaFkIdResponsavel: deserializeParam(
          data['ssa_fk_id_responsavel'],
          ParamType.int,
          false,
        ),
        ssaDataAbertura: deserializeParam(
          data['ssa_data_abertura'],
          ParamType.DateTime,
          false,
        ),
        ssaNumeroOs: deserializeParam(
          data['ssa_numero_os'],
          ParamType.String,
          false,
        ),
        ssaArea: deserializeParam(
          data['ssa_area'],
          ParamType.String,
          false,
        ),
        ssaCentroCustoCliente: deserializeParam(
          data['ssa_centro_custo_cliente'],
          ParamType.String,
          false,
        ),
        ssaLocal: deserializeParam(
          data['ssa_local'],
          ParamType.String,
          false,
        ),
        ssaTagEquipamento: deserializeParam(
          data['ssa_tag_equipamento'],
          ParamType.String,
          false,
        ),
        ssaOrdemManutencao: deserializeParam(
          data['ssa_ordem_manutencao'],
          ParamType.String,
          false,
        ),
        ssaAtividadeASerRealizada: deserializeParam(
          data['ssa_atividade_a_ser_realizada'],
          ParamType.String,
          false,
        ),
        ssaCodigoCentroCusto: deserializeParam(
          data['ssa_codigo_centro_custo'],
          ParamType.String,
          false,
        ),
        ssaTipoManutencao: deserializeParam(
          data['ssa_tipo_manutencao'],
          ParamType.String,
          false,
        ),
        ssaCodIdentificador: deserializeParam(
          data['ssa_cod_identificador'],
          ParamType.String,
          false,
        ),
        ssaObsGerais: deserializeParam(
          data['ssa_obs_gerais'],
          ParamType.String,
          false,
        ),
        ssaEnderecoOp: deserializeParam(
          data['ssa_endereco_op'],
          ParamType.String,
          false,
        ),
        ssaObsInterna: deserializeParam(
          data['ssa_obs_interna'],
          ParamType.String,
          false,
        ),
        ssaTipoServico: deserializeParam(
          data['ssa_tipo_servico'],
          ParamType.String,
          false,
        ),
        ssaNomeResponsavel: deserializeParam(
          data['ssa_nome_responsavel'],
          ParamType.String,
          false,
        ),
        ssaNomeSolicitante: deserializeParam(
          data['ssa_nome_solicitante'],
          ParamType.String,
          false,
        ),
        ssaNomeProgramadorCliente: deserializeParam(
          data['ssa_nome_programador_cliente'],
          ParamType.String,
          false,
        ),
        fkIdVisitaTecnica: deserializeParam(
          data['fk_id_visita_tecnica'],
          ParamType.int,
          false,
        ),
        vtFkIdTecnicoResponsavel: deserializeParam(
          data['vt_fk_id_tecnico_responsavel'],
          ParamType.int,
          false,
        ),
        vtFkResponsavelPelaVisita: deserializeParam(
          data['vt_fk_responsavel_pela_visita'],
          ParamType.int,
          false,
        ),
        vtNomeTecnicoResponsavel: deserializeParam(
          data['vt_nome_tecnico_responsavel'],
          ParamType.String,
          false,
        ),
        vtDataVisita: deserializeParam(
          data['vt_data_visita'],
          ParamType.DateTime,
          false,
        ),
        vtNomeEncarregadoCliente: deserializeParam(
          data['vt_nome_encarregado_cliente'],
          ParamType.String,
          false,
        ),
        vtQntPessoas: deserializeParam(
          data['vt_qnt_pessoas'],
          ParamType.String,
          false,
        ),
        vtAssinaturaUrl: deserializeParam(
          data['vt_assinatura_url'],
          ParamType.String,
          false,
        ),
        vtCroquiUrl: deserializeParam(
          data['vt_croqui_url'],
          ParamType.String,
          false,
        ),
        vtContatoEncarregadoCliente: deserializeParam(
          data['vt_contato_encarregado_cliente'],
          ParamType.String,
          false,
        ),
        vtTotalAreaPisoM2: deserializeParam(
          data['vt_total_area_piso_m2'],
          ParamType.double,
          false,
        ),
        vtVolumeTotalM2: deserializeParam(
          data['vt_volume_total_m2'],
          ParamType.double,
          false,
        ),
        vtCargaEstrutura: deserializeParam(
          data['vt_carga_estrutura'],
          ParamType.String,
          false,
        ),
        vtSomaAreaNivel: deserializeParam(
          data['vt_soma_area_nivel'],
          ParamType.double,
          false,
        ),
        vtSomaQuantidadePrevista: deserializeParam(
          data['vt_soma_quantidade_prevista'],
          ParamType.int,
          false,
        ),
        vtComentarios: deserializeParam<String>(
          data['vt_comentarios'],
          ParamType.String,
          true,
        ),
        vtItensSelecionadosSINGLE: deserializeParam<int>(
          data['vt_itensSelecionadosSINGLE'],
          ParamType.int,
          true,
        ),
        vtItensSelecionadoFm: deserializeStructParam<FmItensSelecionadosStruct>(
          data['vt_itensSelecionadoFm'],
          ParamType.DataStruct,
          true,
          structBuilder: FmItensSelecionadosStruct.fromSerializableMap,
        ),
        vtListaPecas: deserializeStructParam<FmListaPecasStruct>(
          data['vt_ListaPecas'],
          ParamType.DataStruct,
          true,
          structBuilder: FmListaPecasStruct.fromSerializableMap,
        ),
        vtTrecho: deserializeStructParam<FmTrechoStruct>(
          data['vt_trecho'],
          ParamType.DataStruct,
          true,
          structBuilder: FmTrechoStruct.fromSerializableMap,
        ),
        vtNivelPiso: deserializeStructParam<FmPisoStruct>(
          data['vt_nivel_piso'],
          ParamType.DataStruct,
          true,
          structBuilder: FmPisoStruct.fromSerializableMap,
        ),
        fkIdProgramacao: deserializeParam(
          data['fk_id_programacao'],
          ParamType.int,
          false,
        ),
        prFkResponsavelCliente: deserializeParam(
          data['pr_fk_responsavel_cliente'],
          ParamType.int,
          false,
        ),
        prFkIdSolicitanteCliente: deserializeParam(
          data['pr_fk_id_solicitante_cliente'],
          ParamType.int,
          false,
        ),
        prFkIdResponsavelExecucao: deserializeParam(
          data['pr_fk_id_responsavel_execucao'],
          ParamType.int,
          false,
        ),
        prNomeResponsavelExecucao: deserializeParam(
          data['pr_nome_responsavel_execucao'],
          ParamType.String,
          false,
        ),
        prDataInicioPrevista: deserializeParam(
          data['pr_data_inicio_prevista'],
          ParamType.DateTime,
          false,
        ),
        prDataFimPrevista: deserializeParam(
          data['pr_data_fim_prevista'],
          ParamType.DateTime,
          false,
        ),
        prVolumeAndaimeM3: deserializeParam(
          data['pr_volume_andaime_m3'],
          ParamType.double,
          false,
        ),
        prAreaPisoM2: deserializeParam(
          data['pr_area_piso_m2'],
          ParamType.double,
          false,
        ),
        prMetragemLinearM: deserializeParam(
          data['pr_metragem_linear_m'],
          ParamType.double,
          false,
        ),
        prHomemHoraHh: deserializeParam(
          data['pr_homem_hora_hh'],
          ParamType.double,
          false,
        ),
        prTotalMaterialTubular: deserializeParam(
          data['pr_total_material_tubular'],
          ParamType.double,
          false,
        ),
        prDadosEfetivo: deserializeStructParam<FmDadosEfetivoStruct>(
          data['pr_dados_efetivo'],
          ParamType.DataStruct,
          true,
          structBuilder: FmDadosEfetivoStruct.fromSerializableMap,
        ),
        prListaPecas: deserializeStructParam<FmListaPecasStruct>(
          data['pr_listaPecas'],
          ParamType.DataStruct,
          true,
          structBuilder: FmListaPecasStruct.fromSerializableMap,
        ),
        nomeProjeto: deserializeParam(
          data['nome_projeto'],
          ParamType.String,
          false,
        ),
        nomeSubprojeto: deserializeParam(
          data['nome_subprojeto'],
          ParamType.String,
          false,
        ),
        fkIdExecucao: deserializeParam(
          data['fk_id_execucao'],
          ParamType.int,
          false,
        ),
        exResponsavelSuperus: deserializeParam(
          data['ex_responsavel_superus'],
          ParamType.String,
          false,
        ),
        exDataInicio: deserializeParam(
          data['ex_data_inicio'],
          ParamType.DateTime,
          false,
        ),
        exDataConclusao: deserializeParam(
          data['ex_data_conclusao'],
          ParamType.DateTime,
          false,
        ),
        exPreenchimentoDiariaMontagem:
            deserializeStructParam<FmPreenchimentoExecucaoStruct>(
          data['ex_preenchimento_diaria_montagem'],
          ParamType.DataStruct,
          true,
          structBuilder: FmPreenchimentoExecucaoStruct.fromSerializableMap,
        ),
        exTrecho: deserializeStructParam<FmTrechoStruct>(
          data['ex_trecho'],
          ParamType.DataStruct,
          true,
          structBuilder: FmTrechoStruct.fromSerializableMap,
        ),
        exPiso: deserializeStructParam<FmPisoStruct>(
          data['ex_piso'],
          ParamType.DataStruct,
          true,
          structBuilder: FmPisoStruct.fromSerializableMap,
        ),
        exDadosEfetivo: deserializeStructParam<FmDadosEfetivoStruct>(
          data['ex_dados_efetivo'],
          ParamType.DataStruct,
          true,
          structBuilder: FmDadosEfetivoStruct.fromSerializableMap,
        ),
        exListaPecas: deserializeStructParam<FmListaPecasStruct>(
          data['ex_lista_pecas'],
          ParamType.DataStruct,
          true,
          structBuilder: FmListaPecasStruct.fromSerializableMap,
        ),
        exInterferencias: deserializeStructParam<FmInterferenciaExecucaoStruct>(
          data['ex_interferencias'],
          ParamType.DataStruct,
          true,
          structBuilder: FmInterferenciaExecucaoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CcSSACompletaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CcSSACompletaStruct &&
        fkIdStatus == other.fkIdStatus &&
        status == other.status &&
        fkIdProjeto == other.fkIdProjeto &&
        fkIdSubprojeto == other.fkIdSubprojeto &&
        fkIdSsa == other.fkIdSsa &&
        ssaFkIdSolicitante == other.ssaFkIdSolicitante &&
        ssaFkIdProgramadorCliente == other.ssaFkIdProgramadorCliente &&
        ssaFkIdResponsavel == other.ssaFkIdResponsavel &&
        ssaDataAbertura == other.ssaDataAbertura &&
        ssaNumeroOs == other.ssaNumeroOs &&
        ssaArea == other.ssaArea &&
        ssaCentroCustoCliente == other.ssaCentroCustoCliente &&
        ssaLocal == other.ssaLocal &&
        ssaTagEquipamento == other.ssaTagEquipamento &&
        ssaOrdemManutencao == other.ssaOrdemManutencao &&
        ssaAtividadeASerRealizada == other.ssaAtividadeASerRealizada &&
        ssaCodigoCentroCusto == other.ssaCodigoCentroCusto &&
        ssaTipoManutencao == other.ssaTipoManutencao &&
        ssaCodIdentificador == other.ssaCodIdentificador &&
        ssaObsGerais == other.ssaObsGerais &&
        ssaEnderecoOp == other.ssaEnderecoOp &&
        ssaObsInterna == other.ssaObsInterna &&
        ssaTipoServico == other.ssaTipoServico &&
        ssaNomeResponsavel == other.ssaNomeResponsavel &&
        ssaNomeSolicitante == other.ssaNomeSolicitante &&
        ssaNomeProgramadorCliente == other.ssaNomeProgramadorCliente &&
        fkIdVisitaTecnica == other.fkIdVisitaTecnica &&
        vtFkIdTecnicoResponsavel == other.vtFkIdTecnicoResponsavel &&
        vtFkResponsavelPelaVisita == other.vtFkResponsavelPelaVisita &&
        vtNomeTecnicoResponsavel == other.vtNomeTecnicoResponsavel &&
        vtDataVisita == other.vtDataVisita &&
        vtNomeEncarregadoCliente == other.vtNomeEncarregadoCliente &&
        vtQntPessoas == other.vtQntPessoas &&
        vtAssinaturaUrl == other.vtAssinaturaUrl &&
        vtCroquiUrl == other.vtCroquiUrl &&
        vtContatoEncarregadoCliente == other.vtContatoEncarregadoCliente &&
        vtTotalAreaPisoM2 == other.vtTotalAreaPisoM2 &&
        vtVolumeTotalM2 == other.vtVolumeTotalM2 &&
        vtCargaEstrutura == other.vtCargaEstrutura &&
        vtSomaAreaNivel == other.vtSomaAreaNivel &&
        vtSomaQuantidadePrevista == other.vtSomaQuantidadePrevista &&
        listEquality.equals(vtComentarios, other.vtComentarios) &&
        listEquality.equals(
            vtItensSelecionadosSINGLE, other.vtItensSelecionadosSINGLE) &&
        listEquality.equals(vtItensSelecionadoFm, other.vtItensSelecionadoFm) &&
        listEquality.equals(vtListaPecas, other.vtListaPecas) &&
        listEquality.equals(vtTrecho, other.vtTrecho) &&
        listEquality.equals(vtNivelPiso, other.vtNivelPiso) &&
        fkIdProgramacao == other.fkIdProgramacao &&
        prFkResponsavelCliente == other.prFkResponsavelCliente &&
        prFkIdSolicitanteCliente == other.prFkIdSolicitanteCliente &&
        prFkIdResponsavelExecucao == other.prFkIdResponsavelExecucao &&
        prNomeResponsavelExecucao == other.prNomeResponsavelExecucao &&
        prDataInicioPrevista == other.prDataInicioPrevista &&
        prDataFimPrevista == other.prDataFimPrevista &&
        prVolumeAndaimeM3 == other.prVolumeAndaimeM3 &&
        prAreaPisoM2 == other.prAreaPisoM2 &&
        prMetragemLinearM == other.prMetragemLinearM &&
        prHomemHoraHh == other.prHomemHoraHh &&
        prTotalMaterialTubular == other.prTotalMaterialTubular &&
        listEquality.equals(prDadosEfetivo, other.prDadosEfetivo) &&
        listEquality.equals(prListaPecas, other.prListaPecas) &&
        nomeProjeto == other.nomeProjeto &&
        nomeSubprojeto == other.nomeSubprojeto &&
        fkIdExecucao == other.fkIdExecucao &&
        exResponsavelSuperus == other.exResponsavelSuperus &&
        exDataInicio == other.exDataInicio &&
        exDataConclusao == other.exDataConclusao &&
        listEquality.equals(exPreenchimentoDiariaMontagem,
            other.exPreenchimentoDiariaMontagem) &&
        listEquality.equals(exTrecho, other.exTrecho) &&
        listEquality.equals(exPiso, other.exPiso) &&
        listEquality.equals(exDadosEfetivo, other.exDadosEfetivo) &&
        listEquality.equals(exListaPecas, other.exListaPecas) &&
        listEquality.equals(exInterferencias, other.exInterferencias);
  }

  @override
  int get hashCode => const ListEquality().hash([
        fkIdStatus,
        status,
        fkIdProjeto,
        fkIdSubprojeto,
        fkIdSsa,
        ssaFkIdSolicitante,
        ssaFkIdProgramadorCliente,
        ssaFkIdResponsavel,
        ssaDataAbertura,
        ssaNumeroOs,
        ssaArea,
        ssaCentroCustoCliente,
        ssaLocal,
        ssaTagEquipamento,
        ssaOrdemManutencao,
        ssaAtividadeASerRealizada,
        ssaCodigoCentroCusto,
        ssaTipoManutencao,
        ssaCodIdentificador,
        ssaObsGerais,
        ssaEnderecoOp,
        ssaObsInterna,
        ssaTipoServico,
        ssaNomeResponsavel,
        ssaNomeSolicitante,
        ssaNomeProgramadorCliente,
        fkIdVisitaTecnica,
        vtFkIdTecnicoResponsavel,
        vtFkResponsavelPelaVisita,
        vtNomeTecnicoResponsavel,
        vtDataVisita,
        vtNomeEncarregadoCliente,
        vtQntPessoas,
        vtAssinaturaUrl,
        vtCroquiUrl,
        vtContatoEncarregadoCliente,
        vtTotalAreaPisoM2,
        vtVolumeTotalM2,
        vtCargaEstrutura,
        vtSomaAreaNivel,
        vtSomaQuantidadePrevista,
        vtComentarios,
        vtItensSelecionadosSINGLE,
        vtItensSelecionadoFm,
        vtListaPecas,
        vtTrecho,
        vtNivelPiso,
        fkIdProgramacao,
        prFkResponsavelCliente,
        prFkIdSolicitanteCliente,
        prFkIdResponsavelExecucao,
        prNomeResponsavelExecucao,
        prDataInicioPrevista,
        prDataFimPrevista,
        prVolumeAndaimeM3,
        prAreaPisoM2,
        prMetragemLinearM,
        prHomemHoraHh,
        prTotalMaterialTubular,
        prDadosEfetivo,
        prListaPecas,
        nomeProjeto,
        nomeSubprojeto,
        fkIdExecucao,
        exResponsavelSuperus,
        exDataInicio,
        exDataConclusao,
        exPreenchimentoDiariaMontagem,
        exTrecho,
        exPiso,
        exDadosEfetivo,
        exListaPecas,
        exInterferencias
      ]);
}

CcSSACompletaStruct createCcSSACompletaStruct({
  int? fkIdStatus,
  String? status,
  int? fkIdProjeto,
  int? fkIdSubprojeto,
  int? fkIdSsa,
  int? ssaFkIdSolicitante,
  int? ssaFkIdProgramadorCliente,
  int? ssaFkIdResponsavel,
  DateTime? ssaDataAbertura,
  String? ssaNumeroOs,
  String? ssaArea,
  String? ssaCentroCustoCliente,
  String? ssaLocal,
  String? ssaTagEquipamento,
  String? ssaOrdemManutencao,
  String? ssaAtividadeASerRealizada,
  String? ssaCodigoCentroCusto,
  String? ssaTipoManutencao,
  String? ssaCodIdentificador,
  String? ssaObsGerais,
  String? ssaEnderecoOp,
  String? ssaObsInterna,
  String? ssaTipoServico,
  String? ssaNomeResponsavel,
  String? ssaNomeSolicitante,
  String? ssaNomeProgramadorCliente,
  int? fkIdVisitaTecnica,
  int? vtFkIdTecnicoResponsavel,
  int? vtFkResponsavelPelaVisita,
  String? vtNomeTecnicoResponsavel,
  DateTime? vtDataVisita,
  String? vtNomeEncarregadoCliente,
  String? vtQntPessoas,
  String? vtAssinaturaUrl,
  String? vtCroquiUrl,
  String? vtContatoEncarregadoCliente,
  double? vtTotalAreaPisoM2,
  double? vtVolumeTotalM2,
  String? vtCargaEstrutura,
  double? vtSomaAreaNivel,
  int? vtSomaQuantidadePrevista,
  int? fkIdProgramacao,
  int? prFkResponsavelCliente,
  int? prFkIdSolicitanteCliente,
  int? prFkIdResponsavelExecucao,
  String? prNomeResponsavelExecucao,
  DateTime? prDataInicioPrevista,
  DateTime? prDataFimPrevista,
  double? prVolumeAndaimeM3,
  double? prAreaPisoM2,
  double? prMetragemLinearM,
  double? prHomemHoraHh,
  double? prTotalMaterialTubular,
  String? nomeProjeto,
  String? nomeSubprojeto,
  int? fkIdExecucao,
  String? exResponsavelSuperus,
  DateTime? exDataInicio,
  DateTime? exDataConclusao,
}) =>
    CcSSACompletaStruct(
      fkIdStatus: fkIdStatus,
      status: status,
      fkIdProjeto: fkIdProjeto,
      fkIdSubprojeto: fkIdSubprojeto,
      fkIdSsa: fkIdSsa,
      ssaFkIdSolicitante: ssaFkIdSolicitante,
      ssaFkIdProgramadorCliente: ssaFkIdProgramadorCliente,
      ssaFkIdResponsavel: ssaFkIdResponsavel,
      ssaDataAbertura: ssaDataAbertura,
      ssaNumeroOs: ssaNumeroOs,
      ssaArea: ssaArea,
      ssaCentroCustoCliente: ssaCentroCustoCliente,
      ssaLocal: ssaLocal,
      ssaTagEquipamento: ssaTagEquipamento,
      ssaOrdemManutencao: ssaOrdemManutencao,
      ssaAtividadeASerRealizada: ssaAtividadeASerRealizada,
      ssaCodigoCentroCusto: ssaCodigoCentroCusto,
      ssaTipoManutencao: ssaTipoManutencao,
      ssaCodIdentificador: ssaCodIdentificador,
      ssaObsGerais: ssaObsGerais,
      ssaEnderecoOp: ssaEnderecoOp,
      ssaObsInterna: ssaObsInterna,
      ssaTipoServico: ssaTipoServico,
      ssaNomeResponsavel: ssaNomeResponsavel,
      ssaNomeSolicitante: ssaNomeSolicitante,
      ssaNomeProgramadorCliente: ssaNomeProgramadorCliente,
      fkIdVisitaTecnica: fkIdVisitaTecnica,
      vtFkIdTecnicoResponsavel: vtFkIdTecnicoResponsavel,
      vtFkResponsavelPelaVisita: vtFkResponsavelPelaVisita,
      vtNomeTecnicoResponsavel: vtNomeTecnicoResponsavel,
      vtDataVisita: vtDataVisita,
      vtNomeEncarregadoCliente: vtNomeEncarregadoCliente,
      vtQntPessoas: vtQntPessoas,
      vtAssinaturaUrl: vtAssinaturaUrl,
      vtCroquiUrl: vtCroquiUrl,
      vtContatoEncarregadoCliente: vtContatoEncarregadoCliente,
      vtTotalAreaPisoM2: vtTotalAreaPisoM2,
      vtVolumeTotalM2: vtVolumeTotalM2,
      vtCargaEstrutura: vtCargaEstrutura,
      vtSomaAreaNivel: vtSomaAreaNivel,
      vtSomaQuantidadePrevista: vtSomaQuantidadePrevista,
      fkIdProgramacao: fkIdProgramacao,
      prFkResponsavelCliente: prFkResponsavelCliente,
      prFkIdSolicitanteCliente: prFkIdSolicitanteCliente,
      prFkIdResponsavelExecucao: prFkIdResponsavelExecucao,
      prNomeResponsavelExecucao: prNomeResponsavelExecucao,
      prDataInicioPrevista: prDataInicioPrevista,
      prDataFimPrevista: prDataFimPrevista,
      prVolumeAndaimeM3: prVolumeAndaimeM3,
      prAreaPisoM2: prAreaPisoM2,
      prMetragemLinearM: prMetragemLinearM,
      prHomemHoraHh: prHomemHoraHh,
      prTotalMaterialTubular: prTotalMaterialTubular,
      nomeProjeto: nomeProjeto,
      nomeSubprojeto: nomeSubprojeto,
      fkIdExecucao: fkIdExecucao,
      exResponsavelSuperus: exResponsavelSuperus,
      exDataInicio: exDataInicio,
      exDataConclusao: exDataConclusao,
    );
