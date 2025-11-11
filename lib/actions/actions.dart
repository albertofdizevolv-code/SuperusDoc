import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';

Future historico(
  BuildContext context, {
  required int? fkIdSSA,
  required int? fkidStatus,
  required int? fkidResponsavelAtual,
  required String? nomeResponsavelAtual,
}) async {
  // histórico
  await HistoricoSSATable().insert({
    'fk_id_ssa': fkIdSSA,
    'data_hora': supaSerialize<DateTime>(getCurrentTimestamp),
    'descricao': '${() {
      if (fkidStatus == 9) {
        return 'SSA cancelada por ';
      } else if (fkidStatus == 8) {
        return 'Material desmontado e recolhido por ';
      } else if (fkidStatus == 7) {
        return 'Montagem aprovada por ';
      } else if (fkidStatus == 6) {
        return 'Montagem concluída, aguardando aprovação do ';
      } else if (fkidStatus == 5) {
        return 'Execução iniciada por ';
      } else if (fkidStatus == 4) {
        return 'Execução programada e aguardando início por ';
      } else if (fkidStatus == 3) {
        return 'Execução em programação por ';
      } else if (fkidStatus == 2) {
        return 'Aguardando realização da visita ';
      } else {
        return 'SSA aberta por ';
      }
    }()}${nomeResponsavelAtual}',
    'fk_id_responsavel': fkidResponsavelAtual,
    'fk_id_status': fkidStatus,
  });
  await SsaTable().update(
    data: {
      'fk_id_status': fkidStatus,
    },
    matchingRows: (rows) => rows.eqOrNull(
      'id_ssa',
      FFAppState().stateSSAcompleta.fkIdSsa,
    ),
  );
}

Future querySSAcompleta(
  BuildContext context, {
  required int? fkIdSSA,
}) async {
  List<VwSsaProcessoCompletoRow>? outSSAcompleto;

  FFAppState().stateSSAcompleta = CcSSACompletaStruct();
  FFAppState().update(() {});
  outSSAcompleto = await VwSsaProcessoCompletoTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'ssaId',
      fkIdSSA,
    ),
  );
  FFAppState().updateStateSSAcompletaStruct(
    (e) => e
      ..fkIdSsa = outSSAcompleto?.firstOrNull?.ssaId
      ..fkIdStatus = outSSAcompleto?.firstOrNull?.ssaFkIdStatus
      ..fkIdProjeto = outSSAcompleto?.firstOrNull?.ssaFkIdProjeto
      ..status = outSSAcompleto?.firstOrNull?.ssaStatus
      ..fkIdSubprojeto = outSSAcompleto?.firstOrNull?.ssaFkIdSubprojeto
      ..ssaFkIdSolicitante = outSSAcompleto?.firstOrNull?.ssaFkIdSolicitante
      ..ssaFkIdProgramadorCliente =
          outSSAcompleto?.firstOrNull?.ssaFkIdProgramadorCliente
      ..ssaFkIdResponsavel = outSSAcompleto?.firstOrNull?.ssaFkIdResponsavel
      ..ssaDataAbertura = outSSAcompleto?.firstOrNull?.ssaDataAbertura
      ..ssaNumeroOs = outSSAcompleto?.firstOrNull?.ssaNumeroOs
      ..ssaArea = outSSAcompleto?.firstOrNull?.ssaArea
      ..ssaCentroCustoCliente =
          outSSAcompleto?.firstOrNull?.ssaCentroCustoCliente
      ..ssaLocal = outSSAcompleto?.firstOrNull?.ssaLocal
      ..ssaTagEquipamento = outSSAcompleto?.firstOrNull?.ssaTagEquipamento
      ..ssaOrdemManutencao = outSSAcompleto?.firstOrNull?.ssaOrdemManutencao
      ..ssaAtividadeASerRealizada =
          outSSAcompleto?.firstOrNull?.ssaAtividadeASerRealizada
      ..ssaCodigoCentroCusto = outSSAcompleto?.firstOrNull?.ssaCodigoCentroCusto
      ..ssaTipoManutencao = outSSAcompleto?.firstOrNull?.ssaTipoManutencao
      ..ssaCodIdentificador = outSSAcompleto?.firstOrNull?.ssaCodIdentificador
      ..ssaObsGerais = outSSAcompleto?.firstOrNull?.ssaObsGerais
      ..ssaEnderecoOp = outSSAcompleto?.firstOrNull?.ssaEnderecoOp
      ..ssaObsInterna = outSSAcompleto?.firstOrNull?.ssaObsInterna
      ..ssaTipoServico = outSSAcompleto?.firstOrNull?.ssaTipoServico
      ..ssaNomeResponsavel = outSSAcompleto?.firstOrNull?.ssaNomeResponsavel
      ..ssaNomeSolicitante = outSSAcompleto?.firstOrNull?.ssaNomeSolicitante
      ..ssaNomeProgramadorCliente =
          outSSAcompleto?.firstOrNull?.ssaNomeProgramadorCliente
      ..fkIdVisitaTecnica = outSSAcompleto?.firstOrNull?.visitaId
      ..vtFkIdTecnicoResponsavel =
          outSSAcompleto?.firstOrNull?.ssaFkIdTecnicoResponsavel
      ..vtFkResponsavelPelaVisita =
          outSSAcompleto?.firstOrNull?.ssaFkIdTecnicoResponsavel
      ..vtNomeTecnicoResponsavel =
          outSSAcompleto?.firstOrNull?.ssaNomeTecnicoResponsavel
      ..vtDataVisita = outSSAcompleto?.firstOrNull?.visitaDataVisita
      ..vtNomeEncarregadoCliente =
          outSSAcompleto?.firstOrNull?.ssaNomeTecnicoResponsavel
      ..vtQntPessoas = outSSAcompleto?.firstOrNull?.visitaQntPessoasEstrutura
      ..vtAssinaturaUrl =
          outSSAcompleto?.firstOrNull?.visitaAssinaturaClienteUrl
      ..vtCroquiUrl = outSSAcompleto?.firstOrNull?.visitaCroquiAreaUrl
      ..vtContatoEncarregadoCliente =
          outSSAcompleto?.firstOrNull?.visitaContatoEncarregado
      ..vtTotalAreaPisoM2 = outSSAcompleto?.firstOrNull?.visitaTotalAreaPisoM2
      ..vtVolumeTotalM2 = outSSAcompleto?.firstOrNull?.visitaVolumeTotalM2
      ..vtCargaEstrutura = outSSAcompleto?.firstOrNull?.visitaCargaEstrutura
      ..vtSomaAreaNivel = outSSAcompleto?.firstOrNull?.visitaSomaAreaNivel
      ..vtSomaQuantidadePrevista =
          outSSAcompleto?.firstOrNull?.visitaSomaQuantidadePrevista
      ..fkIdProgramacao = outSSAcompleto?.firstOrNull?.programacaoId
      ..prFkResponsavelCliente =
          outSSAcompleto?.firstOrNull?.programacaoFkIdResponsavelExecucao
      ..prFkIdSolicitanteCliente =
          outSSAcompleto?.firstOrNull?.programacaoFkIdSolicitanteCliente
      ..prFkIdResponsavelExecucao =
          outSSAcompleto?.firstOrNull?.programacaoFkIdResponsavelExecucao
      ..prNomeResponsavelExecucao =
          outSSAcompleto?.firstOrNull?.programacaoNomeResponsavelExecucao
      ..prDataInicioPrevista =
          outSSAcompleto?.firstOrNull?.programacaoDataInicioPrevista
      ..prDataFimPrevista =
          outSSAcompleto?.firstOrNull?.programacaoDataFimPrevista
      ..prVolumeAndaimeM3 =
          outSSAcompleto?.firstOrNull?.programacaoVolumeAndaimeM3
      ..prAreaPisoM2 = outSSAcompleto?.firstOrNull?.programacaoAreaPisoM2
      ..prMetragemLinearM =
          outSSAcompleto?.firstOrNull?.programacaoMetragemLinearM
      ..prHomemHoraHh = outSSAcompleto?.firstOrNull?.programacaoHomemHoraHh
      ..prTotalMaterialTubular =
          outSSAcompleto?.firstOrNull?.programacaoTotalMaterialTubularM
      ..nomeProjeto = outSSAcompleto?.firstOrNull?.ssaNomeProjeto
      ..nomeSubprojeto = outSSAcompleto?.firstOrNull?.ssaNomeSubprojeto,
  );
  FFAppState().update(() {});
  await Future.wait([
    Future(() async {
      for (int loop1Index = 0;
          loop1Index < outSSAcompleto!.firstOrNull!.visitaListaPecas!.length;
          loop1Index++) {
        final currentLoop1Item =
            outSSAcompleto.firstOrNull!.visitaListaPecas![loop1Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateVtListaPecas(
              (e) => e.add(FmListaPecasStruct(
                id: valueOrDefault<int>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$["id"]''',
                  ),
                  0,
                ),
                idMaterial: valueOrDefault<int>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$["id_material"]''',
                  ),
                  0,
                ),
                codigo: valueOrDefault<String>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$["Codigo"]''',
                  )?.toString(),
                  '0',
                ),
                pecas: valueOrDefault<String>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$["Pecas"]''',
                  )?.toString(),
                  '0',
                ),
                peso: valueOrDefault<double>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$["Peso"]''',
                  ),
                  0.0,
                ),
                tamanho: valueOrDefault<double>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$["tamanho"]''',
                  ),
                  0.0,
                ),
                prEstoque: valueOrDefault<int>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$['Estoque']''',
                  ),
                  0,
                ),
                quantidade: valueOrDefault<int>(
                  getJsonField(
                    currentLoop1Item,
                    r'''$['quantidade']''',
                  ),
                  0,
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop2Index = 0;
          loop2Index < outSSAcompleto!.firstOrNull!.visitaTrechos!.length;
          loop2Index++) {
        final currentLoop2Item =
            outSSAcompleto.firstOrNull!.visitaTrechos![loop2Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateVtTrecho(
              (e) => e.add(FmTrechoStruct(
                id: valueOrDefault<int>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["fk_id"]''',
                  ),
                  0,
                ),
                trecho: valueOrDefault<String>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["trecho"]''',
                  )?.toString(),
                  '0',
                ),
                tipoTrecho: getJsonField(
                  currentLoop2Item,
                  r'''$["tipo_trecho"]''',
                ).toString(),
                comprimento: valueOrDefault<double>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["comprimento"]''',
                  ),
                  0.0,
                ),
                altura: valueOrDefault<double>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["altura"]''',
                  ),
                  0.0,
                ),
                largura: valueOrDefault<double>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["largura"]''',
                  ),
                  0.0,
                ),
                descontar: valueOrDefault<double>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["descontar"]''',
                  ),
                  0.0,
                ),
                volumeTotal: valueOrDefault<double>(
                  getJsonField(
                    currentLoop2Item,
                    r'''$["volume_total"]''',
                  ),
                  0.0,
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop3Index = 0;
          loop3Index < outSSAcompleto!.firstOrNull!.visitaPisos!.length;
          loop3Index++) {
        final currentLoop3Item =
            outSSAcompleto.firstOrNull!.visitaPisos![loop3Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateVtNivelPiso(
              (e) => e.add(FmPisoStruct(
                id: valueOrDefault<int>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["fk_id"]''',
                  ),
                  0,
                ),
                nivelPiso: valueOrDefault<double>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["nivel_Piso"]''',
                  ),
                  0.0,
                ),
                elevacao: valueOrDefault<double>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["elevação"]''',
                  ),
                  0.0,
                ),
                comprimento: valueOrDefault<double>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["comprimento"]''',
                  ),
                  0.0,
                ),
                largura: valueOrDefault<double>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["largura"]''',
                  ),
                  0.0,
                ),
                areaDescontar: valueOrDefault<double>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["area_descontar"]''',
                  ),
                  0.0,
                ),
                areaNivel: valueOrDefault<double>(
                  getJsonField(
                    currentLoop3Item,
                    r'''$["area_nivel"]''',
                  ),
                  0.0,
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop4Index = 0;
          loop4Index <
              outSSAcompleto!.firstOrNull!.visitaItensSelecionado!.length;
          loop4Index++) {
        final currentLoop4Item =
            outSSAcompleto.firstOrNull!.visitaItensSelecionado![loop4Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateVtItensSelecionadoFm(
              (e) => e.add(FmItensSelecionadosStruct(
                id: valueOrDefault<int>(
                  getJsonField(
                    currentLoop4Item,
                    r'''$["id_selecao"]''',
                  ),
                  0,
                ),
                fkIdVisita: valueOrDefault<int>(
                  getJsonField(
                    currentLoop4Item,
                    r'''$["fk_id_visita"]''',
                  ),
                  0,
                ),
                fkIdItem: valueOrDefault<int>(
                  getJsonField(
                    currentLoop4Item,
                    r'''$["fk_id_item"]''',
                  ),
                  0,
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop5Index = 0;
          loop5Index <
              outSSAcompleto!.firstOrNull!.visitaItensSelecionados!.length;
          loop5Index++) {
        final currentLoop5Item =
            outSSAcompleto.firstOrNull!.visitaItensSelecionados![loop5Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateVtItensSelecionadosSINGLE(
              (e) => e.add(currentLoop5Item),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop6Index = 0;
          loop6Index < outSSAcompleto!.firstOrNull!.visitaComentarios.length;
          loop6Index++) {
        final currentLoop6Item =
            outSSAcompleto.firstOrNull!.visitaComentarios[loop6Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateVtComentarios(
              (e) => e.add(currentLoop6Item),
            ),
        );
      }
    }),
  ]);
  await Future.wait([
    Future(() async {
      for (int loop7Index = 0;
          loop7Index <
              outSSAcompleto!.firstOrNull!.programacaoDadosEfetivo!.length;
          loop7Index++) {
        final currentLoop7Item =
            outSSAcompleto.firstOrNull!.programacaoDadosEfetivo![loop7Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updatePrDadosEfetivo(
              (e) => e.add(FmDadosEfetivoStruct(
                fkIdUser: valueOrDefault<int>(
                  getJsonField(
                    currentLoop7Item,
                    r'''$["fk_id_user"]''',
                  ),
                  0,
                ),
                nome: getJsonField(
                  currentLoop7Item,
                  r'''$["Nome"]''',
                ).toString(),
                funcao: getJsonField(
                  currentLoop7Item,
                  r'''$["Função"]''',
                ).toString(),
                horarioInicio: functions.handleStringToTime(getJsonField(
                  currentLoop7Item,
                  r'''$["horarioInicio"]''',
                ).toString()),
                horaTermino: functions.handleStringToTime(getJsonField(
                  currentLoop7Item,
                  r'''$["horaTermino"]''',
                ).toString()),
                horasTotais: valueOrDefault<double>(
                  getJsonField(
                    currentLoop7Item,
                    r'''$["horasTotais"]''',
                  ),
                  0.0,
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop8Index = 0;
          loop8Index <
              outSSAcompleto!.firstOrNull!.programacaoListaPecas!.length;
          loop8Index++) {
        final currentLoop8Item =
            outSSAcompleto.firstOrNull!.programacaoListaPecas![loop8Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updatePrListaPecas(
              (e) => e.add(FmListaPecasStruct(
                id: valueOrDefault<int>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["id"]''',
                  ),
                  0,
                ),
                idMaterial: valueOrDefault<int>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["id_material"]''',
                  ),
                  0,
                ),
                codigo: valueOrDefault<String>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["Codigo"]''',
                  )?.toString(),
                  '0',
                ),
                pecas: valueOrDefault<String>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["Pecas"]''',
                  )?.toString(),
                  '0',
                ),
                peso: valueOrDefault<double>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["Peso"]''',
                  ),
                  0.0,
                ),
                quantidade: valueOrDefault<int>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["quantidade"]''',
                  ),
                  0,
                ),
                tamanho: valueOrDefault<double>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["tamanho"]''',
                  ),
                  0.0,
                ),
                prEstoque: valueOrDefault<int>(
                  getJsonField(
                    currentLoop8Item,
                    r'''$["Estoque"]''',
                  ),
                  0,
                ),
              )),
            ),
        );
      }
    }),
  ]);
  FFAppState().updateStateSSAcompletaStruct(
    (e) => e
      ..exResponsavelSuperus =
          outSSAcompleto?.firstOrNull?.ssaNomeTecnicoResponsavel
      ..fkIdExecucao = outSSAcompleto?.firstOrNull?.execucaoId
      ..exDataInicio = outSSAcompleto?.firstOrNull?.execucaoDataInicio,
  );
  await Future.wait([
    Future(() async {
      for (int loop9Index = 0;
          loop9Index < outSSAcompleto!.firstOrNull!.execucaoTrechos!.length;
          loop9Index++) {
        final currentLoop9Item =
            outSSAcompleto.firstOrNull!.execucaoTrechos![loop9Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExTrecho(
              (e) => e.add(FmTrechoStruct(
                id: valueOrDefault<int>(
                  getJsonField(
                    currentLoop9Item,
                    r'''$["id"]''',
                  ),
                  0,
                ),
                fkInterno: valueOrDefault<int>(
                  getJsonField(
                    currentLoop9Item,
                    r'''$["id"]''',
                  ),
                  0,
                ),
                trecho: getJsonField(
                  currentLoop9Item,
                  r'''$["trecho"]''',
                ).toString(),
                tipoTrecho: getJsonField(
                  currentLoop9Item,
                  r'''$["tipo"]''',
                ).toString(),
                comprimento: getJsonField(
                  currentLoop9Item,
                  r'''$["comp"]''',
                ),
                altura: getJsonField(
                  currentLoop9Item,
                  r'''$["alt"]''',
                ),
                largura: getJsonField(
                  currentLoop9Item,
                  r'''$["larg"]''',
                ),
                descontar: getJsonField(
                  currentLoop9Item,
                  r'''$["v_desc"]''',
                ),
                volumeTotal: getJsonField(
                  currentLoop9Item,
                  r'''$["v_total"]''',
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop10Index = 0;
          loop10Index < outSSAcompleto!.firstOrNull!.execucaoPisos!.length;
          loop10Index++) {
        final currentLoop10Item =
            outSSAcompleto.firstOrNull!.execucaoPisos![loop10Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExPiso(
              (e) => e.add(FmPisoStruct(
                id: getJsonField(
                  currentLoop10Item,
                  r'''$["id"]''',
                ),
                fkInterno: getJsonField(
                  currentLoop10Item,
                  r'''$["id"]''',
                ),
                nivelPiso: getJsonField(
                  currentLoop10Item,
                  r'''$["area_nivel"]''',
                ),
                elevacao: getJsonField(
                  currentLoop10Item,
                  r'''$["elevacao"]''',
                ),
                comprimento: getJsonField(
                  currentLoop10Item,
                  r'''$["comp"]''',
                ),
                largura: getJsonField(
                  currentLoop10Item,
                  r'''$["larg"]''',
                ),
                areaDescontar: getJsonField(
                  currentLoop10Item,
                  r'''$["area_descontar"]''',
                ),
                areaNivel: getJsonField(
                  currentLoop10Item,
                  r'''$["area_nivel"]''',
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop11Index = 0;
          loop11Index < outSSAcompleto!.firstOrNull!.execucaoEquipe!.length;
          loop11Index++) {
        final currentLoop11Item =
            outSSAcompleto.firstOrNull!.execucaoEquipe![loop11Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExDadosEfetivo(
              (e) => e.add(FmDadosEfetivoStruct(
                fkIdUser: getJsonField(
                  currentLoop11Item,
                  r'''$["funcionario_ref"]''',
                ),
                fkInterno: getJsonField(
                  currentLoop11Item,
                  r'''$["id"]''',
                ),
                nome: getJsonField(
                  currentLoop11Item,
                  r'''$["nome"]''',
                ).toString(),
                funcao: getJsonField(
                  currentLoop11Item,
                  r'''$["funcao"]''',
                ).toString(),
                horasTotais: getJsonField(
                  currentLoop11Item,
                  r'''$["horas_totais"]''',
                ),
                horarioInicio: functions.handleStringToTime(getJsonField(
                  currentLoop11Item,
                  r'''$["hora_inicio"]''',
                ).toString()),
                horaTermino: functions.handleStringToTime(getJsonField(
                  currentLoop11Item,
                  r'''$["hora_fim"]''',
                ).toString()),
                id: getJsonField(
                  currentLoop11Item,
                  r'''$["id"]''',
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop12Index = 0;
          loop12Index < outSSAcompleto!.firstOrNull!.execucaoListaPecas!.length;
          loop12Index++) {
        final currentLoop12Item =
            outSSAcompleto.firstOrNull!.execucaoListaPecas![loop12Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExListaPecas(
              (e) => e.add(FmListaPecasStruct(
                id: getJsonField(
                  currentLoop12Item,
                  r'''$["id"]''',
                ),
                fkInterno: getJsonField(
                  currentLoop12Item,
                  r'''$["id"]''',
                ),
                idMaterial: getJsonField(
                  currentLoop12Item,
                  r'''$["id_material"]''',
                ),
                codigo: getJsonField(
                  currentLoop12Item,
                  r'''$["codigo"]''',
                ).toString(),
                pecas: getJsonField(
                  currentLoop12Item,
                  r'''$["item"]''',
                ).toString(),
                peso: getJsonField(
                  currentLoop12Item,
                  r'''$["peso"]''',
                ),
                quantidade: getJsonField(
                  currentLoop12Item,
                  r'''$["quantidade_reservada"]''',
                ),
                tamanho: getJsonField(
                  currentLoop12Item,
                  r'''$["tamanho"]''',
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop13Index = 0;
          loop13Index <
              outSSAcompleto!.firstOrNull!.execucaoInterferencias!.length;
          loop13Index++) {
        final currentLoop13Item =
            outSSAcompleto.firstOrNull!.execucaoInterferencias![loop13Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExInterferencias(
              (e) => e.add(FmInterferenciaExecucaoStruct(
                id: getJsonField(
                  currentLoop13Item,
                  r'''$["id"]''',
                ),
                fkInterno: getJsonField(
                  currentLoop13Item,
                  r'''$["id"]''',
                ),
                fkMotivo: getJsonField(
                  currentLoop13Item,
                  r'''$["fk_id_motivo"]''',
                ),
                descricao: getJsonField(
                  currentLoop13Item,
                  r'''$["descricao"]''',
                ).toString(),
                duracao: getJsonField(
                  currentLoop13Item,
                  r'''$["duracao"]''',
                ),
                efetivoAfetado: getJsonField(
                  currentLoop13Item,
                  r'''$["efetivo_afetado"]''',
                ),
                impactoHora: getJsonField(
                  currentLoop13Item,
                  r'''$["impacto_hora"]''',
                ),
              )),
            ),
        );
      }
    }),
    Future(() async {
      for (int loop14Index = 0;
          loop14Index <
              outSSAcompleto!.firstOrNull!.execucaoMontagemDiaria!.length;
          loop14Index++) {
        final currentLoop14Item =
            outSSAcompleto.firstOrNull!.execucaoMontagemDiaria![loop14Index];
        FFAppState().updateStateSSAcompletaStruct(
          (e) => e
            ..updateExPreenchimentoDiariaMontagem(
              (e) => e.add(FmPreenchimentoExecucaoStruct(
                id: getJsonField(
                  currentLoop14Item,
                  r'''$["id_execucao_diaria"]''',
                ),
                fkInterno: getJsonField(
                  currentLoop14Item,
                  r'''$["id_execucao_diaria"]''',
                ),
                fkResponsavel: getJsonField(
                  currentLoop14Item,
                  r'''$["responsavel_ref"]''',
                ),
                dataPreenchimento: functions.handleStringToTime(getJsonField(
                  currentLoop14Item,
                  r'''$["data_execucao"]''',
                ).toString()),
                exCondicoesObs: getJsonField(
                  currentLoop14Item,
                  r'''$["observacoes"]''',
                ).toString(),
                exArquivosAnexo: '',
                exCapturaFotosAntigas: (getJsonField(
                  currentLoop14Item,
                  r'''$["fotos_antigas_url"]''',
                  true,
                ) as List?)
                    ?.map<String>((e) => e.toString())
                    .toList()
                    .cast<String>(),
                exCapturaFotosNovas: (getJsonField(
                  currentLoop14Item,
                  r'''$["fotos_novas_url"]''',
                  true,
                ) as List?)
                    ?.map<String>((e) => e.toString())
                    .toList()
                    .cast<String>(),
                exAssinaturaSuperusUrl: getJsonField(
                  currentLoop14Item,
                  r'''$["anexos_url"]''',
                ).toString(),
              )),
            ),
        );
      }
    }),
  ]);
}

Future qdetailsVisitaTecnica(
  BuildContext context, {
  required int? fkid,
}) async {}

Future qdetailsProgramacao(
  BuildContext context, {
  required int? fkid,
}) async {}

Future qdetailsExecucao(
  BuildContext context, {
  required int? fkid,
}) async {}
