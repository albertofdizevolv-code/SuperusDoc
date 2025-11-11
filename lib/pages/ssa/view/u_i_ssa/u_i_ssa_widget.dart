import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/toast_with_temp/toast_with_temp_widget.dart';
import '/pages/ssa/componentes/comp_dadosda_solicitacao/comp_dadosda_solicitacao_widget.dart';
import '/pages/ssa/componentes/comp_dadosdo_contrato/comp_dadosdo_contrato_widget.dart';
import '/pages/ssa/componentes/comp_detalhes_atividade/comp_detalhes_atividade_widget.dart';
import '/pages/ssa/componentes/comp_obs_geraisda_s_s_a/comp_obs_geraisda_s_s_a_widget.dart';
import '/pages/ssa/componentes/comp_ordem_manutencao/comp_ordem_manutencao_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'u_i_ssa_model.dart';
export 'u_i_ssa_model.dart';

/// Request Submission Form
class UISsaWidget extends StatefulWidget {
  const UISsaWidget({
    super.key,
    required this.typemode,
  });

  final WidgetTypeMode? typemode;

  @override
  State<UISsaWidget> createState() => _UISsaWidgetState();
}

class _UISsaWidgetState extends State<UISsaWidget> {
  late UISsaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UISsaModel());

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

    return FutureBuilder<List<SolicitanteRow>>(
      future: SolicitanteTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<SolicitanteRow> containerSolicitanteRowList = snapshot.data!;

        return Container(
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.compDadosdoContratoModel,
                updateCallback: () => safeSetState(() {}),
                child: CompDadosdoContratoWidget(
                  typemode: widget.typemode!,
                ),
              ),
              wrapWithModel(
                model: _model.compDadosdaSolicitacaoModel,
                updateCallback: () => safeSetState(() {}),
                child: CompDadosdaSolicitacaoWidget(
                  typeMode: widget.typemode!,
                ),
              ),
              wrapWithModel(
                model: _model.compOrdemManutencaoModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: CompOrdemManutencaoWidget(
                  typeMode: widget.typemode!,
                  rowSolicitante: containerSolicitanteRowList,
                ),
              ),
              wrapWithModel(
                model: _model.compDetalhesAtividadeModel,
                updateCallback: () => safeSetState(() {}),
                child: CompDetalhesAtividadeWidget(
                  typemode: widget.typemode!,
                ),
              ),
              wrapWithModel(
                model: _model.compObsGeraisdaSSAModel,
                updateCallback: () => safeSetState(() {}),
                child: CompObsGeraisdaSSAWidget(
                  title: 'Observações Gerais da SSA',
                  initialValue: FFAppState().stateSSAcompleta.ssaObsGerais,
                  typeMode: widget.typemode!,
                  changeUpdateAction: () async {
                    FFAppState().updateStateSSAcompletaStruct(
                      (e) => e
                        ..ssaObsGerais = _model.compObsGeraisdaSSAModel
                            .observacoesGeraisSSATextController.text,
                    );
                    safeSetState(() {});
                  },
                ),
              ),
              Builder(
                builder: (context) {
                  if (widget.typemode == WidgetTypeMode.edit) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              await action_blocks.querySSAcompleta(
                                context,
                                fkIdSSA: FFAppState().stateSSAcompleta.fkIdSsa,
                              );

                              context.goNamed(
                                SsaDetalhesWidget.routeName,
                                queryParameters: {
                                  'id': serializeParam(
                                    FFAppState().stateSSAcompleta.fkIdSsa,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: 'Cancelar',
                            options: FFButtonOptions(
                              width: 400.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Colors.transparent,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
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
                                var _shouldSetState = false;
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text(
                                                  'Alterar as informações SSA?'),
                                              content: Text(
                                                  'Essa ação não poderá ser desfeita'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('Cancelar'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('Atualizar'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (!confirmDialogResponse) {
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
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
                                        text:
                                            'Alteração da Solicitação de Serviço de Andaime Atualizado com Sucesso',
                                        timeLoading: TimeLoading.temp4seconds,
                                      ),
                                    );
                                  },
                                );

                                await SsaTable().update(
                                  data: {
                                    'subprojeto': valueOrDefault<int>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .fkIdSubprojeto,
                                      0,
                                    ),
                                    'solicitante': valueOrDefault<int>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaFkIdSolicitante,
                                      0,
                                    ),
                                    'programador_cliente': valueOrDefault<int>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaFkIdProgramadorCliente,
                                      0,
                                    ),
                                    'tipo_manutencao': valueOrDefault<String>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaTipoManutencao,
                                      '0',
                                    ),
                                    'centro_custo_cliente':
                                        valueOrDefault<String>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaCentroCustoCliente,
                                      '0',
                                    ),
                                    'local': valueOrDefault<String>(
                                      FFAppState().stateSSAcompleta.ssaLocal,
                                      '0',
                                    ),
                                    'tag_equipamento': valueOrDefault<String>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaTagEquipamento,
                                      '0',
                                    ),
                                    'atividade_a_ser_realizada':
                                        valueOrDefault<String>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaAtividadeASerRealizada,
                                      '0',
                                    ),
                                    'obs_interna': valueOrDefault<String>(
                                      FFAppState()
                                          .stateSSAcompleta
                                          .ssaObsInterna,
                                      '0',
                                    ),
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id_ssa',
                                    FFAppState().stateSSAcompleta.fkIdSsa,
                                  ),
                                );
                                _shouldSetState = true;

                                context.goNamed(
                                  SsaDetalhesWidget.routeName,
                                  queryParameters: {
                                    'id': serializeParam(
                                      FFAppState().stateSSAcompleta.fkIdSsa,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );

                                if (_shouldSetState) safeSetState(() {});
                              },
                              text: 'Salvar alterações',
                              options: FFButtonOptions(
                                width: 400.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
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
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Excluir SSA',
                            options: FFButtonOptions(
                              width: 400.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent4,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: (isWeb == true)
                                ? null
                                : () {
                                    print('Button pressed ...');
                                  },
                            text: 'Adequar Andaime',
                            options: FFButtonOptions(
                              width: 400.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent4,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: (isWeb == true)
                                ? null
                                : () {
                                    print('Button pressed ...');
                                  },
                            text: 'Desmontar Andaime',
                            options: FFButtonOptions(
                              width: 400.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent4,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                SsaEditarWidget.routeName,
                                queryParameters: {
                                  'idSSA': serializeParam(
                                    FFAppState().stateSSAcompleta.fkIdSsa,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: 'Editar Dados',
                            options: FFButtonOptions(
                              width: 400.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    );
                  }
                },
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        );
      },
    );
  }
}
