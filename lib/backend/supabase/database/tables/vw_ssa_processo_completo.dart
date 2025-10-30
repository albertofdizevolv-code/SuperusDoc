import '../database.dart';

class VwSsaProcessoCompletoTable
    extends SupabaseTable<VwSsaProcessoCompletoRow> {
  @override
  String get tableName => 'vw_ssa_processo_completo';

  @override
  VwSsaProcessoCompletoRow createRow(Map<String, dynamic> data) =>
      VwSsaProcessoCompletoRow(data);
}

class VwSsaProcessoCompletoRow extends SupabaseDataRow {
  VwSsaProcessoCompletoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwSsaProcessoCompletoTable();

  int? get ssaId => getField<int>('ssaId');
  set ssaId(int? value) => setField<int>('ssaId', value);

  String? get ssaNumeroOs => getField<String>('ssaNumeroOs');
  set ssaNumeroOs(String? value) => setField<String>('ssaNumeroOs', value);

  int? get ssaFkIdStatus => getField<int>('ssaFkIdStatus');
  set ssaFkIdStatus(int? value) => setField<int>('ssaFkIdStatus', value);

  String? get ssaStatus => getField<String>('ssaStatus');
  set ssaStatus(String? value) => setField<String>('ssaStatus', value);

  DateTime? get ssaDataAbertura => getField<DateTime>('ssaDataAbertura');
  set ssaDataAbertura(DateTime? value) =>
      setField<DateTime>('ssaDataAbertura', value);

  String? get ssaArea => getField<String>('ssaArea');
  set ssaArea(String? value) => setField<String>('ssaArea', value);

  String? get ssaCentroCustoCliente =>
      getField<String>('ssaCentroCustoCliente');
  set ssaCentroCustoCliente(String? value) =>
      setField<String>('ssaCentroCustoCliente', value);

  String? get ssaCodigoCentroCusto => getField<String>('ssaCodigoCentroCusto');
  set ssaCodigoCentroCusto(String? value) =>
      setField<String>('ssaCodigoCentroCusto', value);

  String? get ssaLocal => getField<String>('ssaLocal');
  set ssaLocal(String? value) => setField<String>('ssaLocal', value);

  String? get ssaTipoServico => getField<String>('ssaTipoServico');
  set ssaTipoServico(String? value) =>
      setField<String>('ssaTipoServico', value);

  String? get ssaTagEquipamento => getField<String>('ssaTagEquipamento');
  set ssaTagEquipamento(String? value) =>
      setField<String>('ssaTagEquipamento', value);

  String? get ssaOrdemManutencao => getField<String>('ssaOrdemManutencao');
  set ssaOrdemManutencao(String? value) =>
      setField<String>('ssaOrdemManutencao', value);

  String? get ssaAtividadeASerRealizada =>
      getField<String>('ssaAtividadeASerRealizada');
  set ssaAtividadeASerRealizada(String? value) =>
      setField<String>('ssaAtividadeASerRealizada', value);

  String? get ssaTipoManutencao => getField<String>('ssaTipoManutencao');
  set ssaTipoManutencao(String? value) =>
      setField<String>('ssaTipoManutencao', value);

  String? get ssaObsGerais => getField<String>('ssaObsGerais');
  set ssaObsGerais(String? value) => setField<String>('ssaObsGerais', value);

  String? get ssaObsInterna => getField<String>('ssaObsInterna');
  set ssaObsInterna(String? value) => setField<String>('ssaObsInterna', value);

  String? get ssaCodIdentificador => getField<String>('ssaCodIdentificador');
  set ssaCodIdentificador(String? value) =>
      setField<String>('ssaCodIdentificador', value);

  int? get ssaFkIdProjeto => getField<int>('ssaFkIdProjeto');
  set ssaFkIdProjeto(int? value) => setField<int>('ssaFkIdProjeto', value);

  String? get ssaNomeProjeto => getField<String>('ssaNomeProjeto');
  set ssaNomeProjeto(String? value) =>
      setField<String>('ssaNomeProjeto', value);

  String? get ssaEnderecoOp => getField<String>('ssaEnderecoOp');
  set ssaEnderecoOp(String? value) => setField<String>('ssaEnderecoOp', value);

  int? get ssaFkIdSubprojeto => getField<int>('ssaFkIdSubprojeto');
  set ssaFkIdSubprojeto(int? value) =>
      setField<int>('ssaFkIdSubprojeto', value);

  String? get ssaNomeSubprojeto => getField<String>('ssaNomeSubprojeto');
  set ssaNomeSubprojeto(String? value) =>
      setField<String>('ssaNomeSubprojeto', value);

  int? get ssaFkIdSolicitante => getField<int>('ssaFkIdSolicitante');
  set ssaFkIdSolicitante(int? value) =>
      setField<int>('ssaFkIdSolicitante', value);

  String? get ssaNomeSolicitante => getField<String>('ssaNomeSolicitante');
  set ssaNomeSolicitante(String? value) =>
      setField<String>('ssaNomeSolicitante', value);

  int? get ssaFkIdProgramadorCliente =>
      getField<int>('ssaFkIdProgramadorCliente');
  set ssaFkIdProgramadorCliente(int? value) =>
      setField<int>('ssaFkIdProgramadorCliente', value);

  String? get ssaNomeProgramadorCliente =>
      getField<String>('ssaNomeProgramadorCliente');
  set ssaNomeProgramadorCliente(String? value) =>
      setField<String>('ssaNomeProgramadorCliente', value);

  int? get ssaFkIdResponsavel => getField<int>('ssaFkIdResponsavel');
  set ssaFkIdResponsavel(int? value) =>
      setField<int>('ssaFkIdResponsavel', value);

  String? get ssaNomeResponsavel => getField<String>('ssaNomeResponsavel');
  set ssaNomeResponsavel(String? value) =>
      setField<String>('ssaNomeResponsavel', value);

  int? get ssaFkIdTecnicoResponsavel =>
      getField<int>('ssaFkIdTecnicoResponsavel');
  set ssaFkIdTecnicoResponsavel(int? value) =>
      setField<int>('ssaFkIdTecnicoResponsavel', value);

  String? get ssaNomeTecnicoResponsavel =>
      getField<String>('ssaNomeTecnicoResponsavel');
  set ssaNomeTecnicoResponsavel(String? value) =>
      setField<String>('ssaNomeTecnicoResponsavel', value);

  int? get visitaId => getField<int>('visitaId');
  set visitaId(int? value) => setField<int>('visitaId', value);

  DateTime? get visitaDataVisita => getField<DateTime>('visitaDataVisita');
  set visitaDataVisita(DateTime? value) =>
      setField<DateTime>('visitaDataVisita', value);

  int? get visitaFkIdResponsavelCliente =>
      getField<int>('visitaFkIdResponsavelCliente');
  set visitaFkIdResponsavelCliente(int? value) =>
      setField<int>('visitaFkIdResponsavelCliente', value);

  int? get visitaFkIdResponsavelVisita =>
      getField<int>('visitaFkIdResponsavelVisita');
  set visitaFkIdResponsavelVisita(int? value) =>
      setField<int>('visitaFkIdResponsavelVisita', value);

  double? get visitaVolumeTotalM2 => getField<double>('visitaVolumeTotalM2');
  set visitaVolumeTotalM2(double? value) =>
      setField<double>('visitaVolumeTotalM2', value);

  String? get visitaQntPessoasEstrutura =>
      getField<String>('visitaQntPessoasEstrutura');
  set visitaQntPessoasEstrutura(String? value) =>
      setField<String>('visitaQntPessoasEstrutura', value);

  String? get visitaCargaEstrutura => getField<String>('visitaCargaEstrutura');
  set visitaCargaEstrutura(String? value) =>
      setField<String>('visitaCargaEstrutura', value);

  double? get visitaTotalAreaPisoM2 =>
      getField<double>('visitaTotalAreaPisoM2');
  set visitaTotalAreaPisoM2(double? value) =>
      setField<double>('visitaTotalAreaPisoM2', value);

  String? get visitaCroquiAreaUrl => getField<String>('visitaCroquiAreaUrl');
  set visitaCroquiAreaUrl(String? value) =>
      setField<String>('visitaCroquiAreaUrl', value);

  String? get visitaAssinaturaClienteUrl =>
      getField<String>('visitaAssinaturaClienteUrl');
  set visitaAssinaturaClienteUrl(String? value) =>
      setField<String>('visitaAssinaturaClienteUrl', value);

  List<String> get visitaComentarios =>
      getListField<String>('visitaComentarios');
  set visitaComentarios(List<String>? value) =>
      setListField<String>('visitaComentarios', value);

  double? get visitaTotalMaterialTubularM =>
      getField<double>('visitaTotalMaterialTubularM');
  set visitaTotalMaterialTubularM(double? value) =>
      setField<double>('visitaTotalMaterialTubularM', value);

  String? get visitaEncarregadoVisitaTecnica =>
      getField<String>('visitaEncarregadoVisitaTecnica');
  set visitaEncarregadoVisitaTecnica(String? value) =>
      setField<String>('visitaEncarregadoVisitaTecnica', value);

  String? get visitaContatoEncarregado =>
      getField<String>('visitaContatoEncarregado');
  set visitaContatoEncarregado(String? value) =>
      setField<String>('visitaContatoEncarregado', value);

  dynamic get visitaItensSelecionados =>
      getField<dynamic>('visitaItensSelecionados');
  set visitaItensSelecionados(dynamic value) =>
      setField<dynamic>('visitaItensSelecionados', value);

  dynamic get visitaItensSelecionado =>
      getField<dynamic>('visitaItensSelecionado');
  set visitaItensSelecionado(dynamic value) =>
      setField<dynamic>('visitaItensSelecionado', value);

  dynamic get visitaTrechos => getField<dynamic>('visitaTrechos');
  set visitaTrechos(dynamic value) =>
      setField<dynamic>('visitaTrechos', value);

  dynamic get visitaPisos => getField<dynamic>('visitaPisos');
  set visitaPisos(dynamic value) => setField<dynamic>('visitaPisos', value);

  dynamic get visitaListaPecas => getField<dynamic>('visitaListaPecas');
  set visitaListaPecas(dynamic value) =>
      setField<dynamic>('visitaListaPecas', value);

  double? get visitaSomaVTotal => getField<double>('visitaSomaVTotal');
  set visitaSomaVTotal(double? value) =>
      setField<double>('visitaSomaVTotal', value);

  double? get visitaSomaAreaNivel => getField<double>('visitaSomaAreaNivel');
  set visitaSomaAreaNivel(double? value) =>
      setField<double>('visitaSomaAreaNivel', value);

  int? get visitaSomaQuantidadePrevista =>
      getField<int>('visitaSomaQuantidadePrevista');
  set visitaSomaQuantidadePrevista(int? value) =>
      setField<int>('visitaSomaQuantidadePrevista', value);

  int? get programacaoId => getField<int>('programacaoId');
  set programacaoId(int? value) => setField<int>('programacaoId', value);

  int? get programacaoFkIdResponsavelExecucao =>
      getField<int>('programacaoFkIdResponsavelExecucao');
  set programacaoFkIdResponsavelExecucao(int? value) =>
      setField<int>('programacaoFkIdResponsavelExecucao', value);

  String? get programacaoNomeResponsavelExecucao =>
      getField<String>('programacaoNomeResponsavelExecucao');
  set programacaoNomeResponsavelExecucao(String? value) =>
      setField<String>('programacaoNomeResponsavelExecucao', value);

  int? get programacaoFkIdSolicitanteCliente =>
      getField<int>('programacaoFkIdSolicitanteCliente');
  set programacaoFkIdSolicitanteCliente(int? value) =>
      setField<int>('programacaoFkIdSolicitanteCliente', value);

  String? get programacaoNomeSolicitanteCliente =>
      getField<String>('programacaoNomeSolicitanteCliente');
  set programacaoNomeSolicitanteCliente(String? value) =>
      setField<String>('programacaoNomeSolicitanteCliente', value);

  DateTime? get programacaoDataInicioPrevista =>
      getField<DateTime>('programacaoDataInicioPrevista');
  set programacaoDataInicioPrevista(DateTime? value) =>
      setField<DateTime>('programacaoDataInicioPrevista', value);

  DateTime? get programacaoDataFimPrevista =>
      getField<DateTime>('programacaoDataFimPrevista');
  set programacaoDataFimPrevista(DateTime? value) =>
      setField<DateTime>('programacaoDataFimPrevista', value);

  double? get programacaoVolumeAndaimeM3 =>
      getField<double>('programacaoVolumeAndaimeM3');
  set programacaoVolumeAndaimeM3(double? value) =>
      setField<double>('programacaoVolumeAndaimeM3', value);

  double? get programacaoAreaPisoM2 =>
      getField<double>('programacaoAreaPisoM2');
  set programacaoAreaPisoM2(double? value) =>
      setField<double>('programacaoAreaPisoM2', value);

  double? get programacaoMetragemLinearM =>
      getField<double>('programacaoMetragemLinearM');
  set programacaoMetragemLinearM(double? value) =>
      setField<double>('programacaoMetragemLinearM', value);

  double? get programacaoHomemHoraHh =>
      getField<double>('programacaoHomemHoraHh');
  set programacaoHomemHoraHh(double? value) =>
      setField<double>('programacaoHomemHoraHh', value);

  double? get programacaoTotalMaterialTubularM =>
      getField<double>('programacaoTotalMaterialTubularM');
  set programacaoTotalMaterialTubularM(double? value) =>
      setField<double>('programacaoTotalMaterialTubularM', value);

  dynamic get programacaoDadosEfetivo =>
      getField<dynamic>('programacaoDadosEfetivo');
  set programacaoDadosEfetivo(dynamic value) =>
      setField<dynamic>('programacaoDadosEfetivo', value);

  dynamic get programacaoListaPecas =>
      getField<dynamic>('programacaoListaPecas');
  set programacaoListaPecas(dynamic value) =>
      setField<dynamic>('programacaoListaPecas', value);

  int? get execucaoId => getField<int>('execucaoId');
  set execucaoId(int? value) => setField<int>('execucaoId', value);

  DateTime? get execucaoDataInicio => getField<DateTime>('execucaoDataInicio');
  set execucaoDataInicio(DateTime? value) =>
      setField<DateTime>('execucaoDataInicio', value);

  DateTime? get execucaoDataConclusao =>
      getField<DateTime>('execucaoDataConclusao');
  set execucaoDataConclusao(DateTime? value) =>
      setField<DateTime>('execucaoDataConclusao', value);

  String? get execucaoAssinaturaSolicitanteUrl =>
      getField<String>('execucaoAssinaturaSolicitanteUrl');
  set execucaoAssinaturaSolicitanteUrl(String? value) =>
      setField<String>('execucaoAssinaturaSolicitanteUrl', value);

  int? get execucaoFkIdResponsavelSuperus =>
      getField<int>('execucaoFkIdResponsavelSuperus');
  set execucaoFkIdResponsavelSuperus(int? value) =>
      setField<int>('execucaoFkIdResponsavelSuperus', value);

  String? get execucaoNomeResponsavelSuperus =>
      getField<String>('execucaoNomeResponsavelSuperus');
  set execucaoNomeResponsavelSuperus(String? value) =>
      setField<String>('execucaoNomeResponsavelSuperus', value);

  dynamic get execucaoTrechos => getField<dynamic>('execucaoTrechos');
  set execucaoTrechos(dynamic value) =>
      setField<dynamic>('execucaoTrechos', value);

  dynamic get execucaoPisos => getField<dynamic>('execucaoPisos');
  set execucaoPisos(dynamic value) =>
      setField<dynamic>('execucaoPisos', value);

  dynamic get execucaoListaPecas => getField<dynamic>('execucaoListaPecas');
  set execucaoListaPecas(dynamic value) =>
      setField<dynamic>('execucaoListaPecas', value);

  dynamic get execucaoEquipe => getField<dynamic>('execucaoEquipe');
  set execucaoEquipe(dynamic value) =>
      setField<dynamic>('execucaoEquipe', value);

  dynamic get execucaoInterferencias =>
      getField<dynamic>('execucaoInterferencias');
  set execucaoInterferencias(dynamic value) =>
      setField<dynamic>('execucaoInterferencias', value);

  dynamic get execucaoMontagemDiaria =>
      getField<dynamic>('execucaoMontagemDiaria');
  set execucaoMontagemDiaria(dynamic value) =>
      setField<dynamic>('execucaoMontagemDiaria', value);
}
