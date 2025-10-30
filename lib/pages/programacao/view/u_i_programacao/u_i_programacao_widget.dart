import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/toast_with_temp/toast_with_temp_widget.dart';
import '/pages/programacao/components/comp_dadosdo_efetivo/comp_dadosdo_efetivo_widget.dart';
import '/pages/programacao/components/comp_form/comp_form_widget.dart';
import '/pages/programacao/components/comp_listade_peas/comp_listade_peas_widget.dart';
import '/pages/programacao/components/comp_resumode_producao/comp_resumode_producao_widget.dart';
import '/pages/programacao/components/modal_dados_efetivo/modal_dados_efetivo_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'u_i_programacao_model.dart';
export 'u_i_programacao_model.dart';

class UIProgramacaoWidget extends StatefulWidget {
  const UIProgramacaoWidget({
    super.key,
    required this.typemode,
  });

  final WidgetTypeMode? typemode;

  @override
  State<UIProgramacaoWidget> createState() => _UIProgramacaoWidgetState();
}

class _UIProgramacaoWidgetState extends State<UIProgramacaoWidget> {
  late UIProgramacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UIProgramacaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.compFormModel,
          updateCallback: () => safeSetState(() {}),
          child: CompFormWidget(
            typemode: widget.typemode!,
          ),
        ),
        Builder(
          builder: (context) => wrapWithModel(
            model: _model.compDadosdoEfetivoModel,
            updateCallback: () => safeSetState(() {}),
            child: CompDadosdoEfetivoWidget(
              idProjeto: FFAppState().stateSSAcompleta.fkIdProjeto,
              typeMode: widget.typemode!,
              table: FFAppState().stateSSAcompleta.prDadosEfetivo,
              addAction: (outView) async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: ModalDadosEfetivoWidget(
                        funcionarios: outView,
                        confirmAction: (nome, funcao, horaInicio, horaTermino,
                            horasTotais, fkUser) async {
                          FFAppState().updateStateSSAcompletaStruct(
                            (e) => e
                              ..updatePrDadosEfetivo(
                                (e) => e.add(FmDadosEfetivoStruct(
                                  nome: nome,
                                  funcao: funcao,
                                  horarioInicio: horaInicio,
                                  horaTermino: horaTermino,
                                  horasTotais: horasTotais,
                                  fkIdUser: fkUser,
                                )),
                              ),
                          );
                          FFAppState().update(() {});
                        },
                      ),
                    );
                  },
                );
              },
              removeAction: (indexPosition) async {
                FFAppState().updateStateSSAcompletaStruct(
                  (e) => e
                    ..updatePrDadosEfetivo(
                      (e) => e.removeAt(indexPosition),
                    ),
                );
                safeSetState(() {});
              },
            ),
          ),
        ),
        Builder(
          builder: (context) => wrapWithModel(
            model: _model.compListadePeasModel,
            updateCallback: () => safeSetState(() {}),
            child: CompListadePeasWidget(
              typemode: widget.typemode!,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.compResumodeProducaoModel,
          updateCallback: () => safeSetState(() {}),
          child: CompResumodeProducaoWidget(),
        ),
        Builder(
          builder: (context) {
            if (widget.typemode == WidgetTypeMode.create) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.safePop();
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        width: 380.0,
                        height: 48.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.transparent,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          _model.outNewProgramacao =
                              await ProgramacaoTable().insert({
                            'fk_id_ssa': FFAppState().stateSSAcompleta.fkIdSsa,
                            'fk_id_responsavel_execucao': FFAppState()
                                .stateSSAcompleta
                                .prFkIdResponsavelExecucao,
                            'fk_id_solicitante_cliente': FFAppState()
                                .stateSSAcompleta
                                .ssaFkIdSolicitante,
                            'data_inicio_prevista': supaSerialize<DateTime>(
                                FFAppState()
                                    .stateSSAcompleta
                                    .prDataInicioPrevista),
                            'data_fim_prevista': supaSerialize<DateTime>(
                                FFAppState()
                                    .stateSSAcompleta
                                    .prDataFimPrevista),
                            'volume_andaime_m3':
                                FFAppState().stateSSAcompleta.prVolumeAndaimeM3,
                            'area_piso_m2':
                                FFAppState().stateSSAcompleta.prAreaPisoM2,
                            'metragem_linear_m': 0.0,
                            'homem_hora_hh': functions.calcularTotalHomemHora(
                                FFAppState()
                                    .stateSSAcompleta
                                    .prDadosEfetivo
                                    .map((e) => e.horasTotais)
                                    .toList()),
                            'total_material_tubular_m':
                                functions.sumMetrosPecasVisitaTecnica(
                                    FFAppState()
                                        .stateSSAcompleta
                                        .prListaPecas
                                        .map((e) => e.quantidade)
                                        .toList(),
                                    FFAppState()
                                        .stateSSAcompleta
                                        .prListaPecas
                                        .map((e) => e.tamanho)
                                        .toList()),
                          });
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: ToastWithTempWidget(
                                  type: Toast.success,
                                  text: 'Programação realizada com sucesso',
                                  timeLoading: TimeLoading.temp6seconds,
                                ),
                              );
                            },
                          );

                          await _model.loopEfetivo(context);
                          await _model.loopListaPecasProgramacao(
                            context,
                            fkIdProgramacao:
                                _model.outNewProgramacao?.idProgramacao,
                          );
                          await action_blocks.historico(
                            context,
                            fkIdSSA: FFAppState().stateSSAcompleta.fkIdSsa,
                            fkidStatus: 4,
                            fkidResponsavelAtual: FFAppState().usuarioLogado.id,
                            nomeResponsavelAtual:
                                FFAppState().usuarioLogado.nome,
                          );
                          await SsaTable().update(
                            data: {
                              'fk_id_status': 4,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id_ssa',
                              FFAppState().stateSSAcompleta.fkIdSsa,
                            ),
                          );

                          context.goNamed(ProgramacaoHomeWidget.routeName);

                          FFAppState().stateSSAcompleta = CcSSACompletaStruct();
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        text: 'Salvar',
                        options: FFButtonOptions(
                          width: 380.0,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 24.0)),
              );
            } else if (widget.typemode == WidgetTypeMode.edit) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.goNamed(SsaHomeWidget.routeName);
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        width: 380.0,
                        height: 48.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.transparent,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: ToastWithTempWidget(
                                  type: Toast.success,
                                  text: 'Alterações realizada com sucesso',
                                  timeLoading: TimeLoading.temp8seconds,
                                ),
                              );
                            },
                          );

                          await ProgramacaoTable().update(
                            data: {
                              'fk_id_ssa':
                                  FFAppState().stateSSAcompleta.fkIdSsa,
                              'fk_id_responsavel_execucao':
                                  FFAppState().stateSSAcompleta.fkIdExecucao,
                              'fk_id_solicitante_cliente': FFAppState()
                                  .stateSSAcompleta
                                  .prFkIdSolicitanteCliente,
                              'data_inicio_prevista': supaSerialize<DateTime>(
                                  FFAppState()
                                      .stateSSAcompleta
                                      .prDataInicioPrevista),
                              'data_fim_prevista': supaSerialize<DateTime>(
                                  FFAppState()
                                      .stateSSAcompleta
                                      .prDataFimPrevista),
                              'volume_andaime_m3': FFAppState()
                                  .stateSSAcompleta
                                  .prVolumeAndaimeM3,
                              'area_piso_m2':
                                  FFAppState().stateSSAcompleta.prAreaPisoM2,
                              'metragem_linear_m': 0.0,
                              'homem_hora_hh': functions.calcularTotalHomemHora(
                                  FFAppState()
                                      .stateSSAcompleta
                                      .prDadosEfetivo
                                      .map((e) => e.horasTotais)
                                      .toList()),
                              'total_material_tubular_m':
                                  functions.sumMetrosPecasVisitaTecnica(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .prListaPecas
                                          .map((e) => e.quantidade)
                                          .toList(),
                                      FFAppState()
                                          .stateSSAcompleta
                                          .prListaPecas
                                          .map((e) => e.tamanho)
                                          .toList()),
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id_programacao',
                              FFAppState().stateSSAcompleta.fkIdSsa,
                            ),
                          );
                          await _model.loopEfetivo(context);
                          await _model.loopListaPecasProgramacao(
                            context,
                            fkIdProgramacao: _model.outUpdateProgramacao
                                ?.firstOrNull?.idProgramacao,
                          );

                          context.goNamed(SsaHomeWidget.routeName);

                          FFAppState().stateSSAcompleta = CcSSACompletaStruct();
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        text: 'Alterar informações',
                        options: FFButtonOptions(
                          width: 380.0,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 24.0)),
              );
            } else {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        ProgramacaoEditarWidget.routeName,
                        queryParameters: {
                          'typemode': serializeParam(
                            WidgetTypeMode.edit,
                            ParamType.Enum,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Editar',
                    options: FFButtonOptions(
                      width: 380.0,
                      height: 48.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(width: 24.0)),
              );
            }
          },
        ),
      ].divide(SizedBox(height: 24.0)),
    );
  }
}
