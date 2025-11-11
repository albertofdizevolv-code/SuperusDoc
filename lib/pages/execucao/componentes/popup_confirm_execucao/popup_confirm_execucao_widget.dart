import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popup_confirm_execucao_model.dart';
export 'popup_confirm_execucao_model.dart';

/// Confirmar Conferência
class PopupConfirmExecucaoWidget extends StatefulWidget {
  const PopupConfirmExecucaoWidget({super.key});

  @override
  State<PopupConfirmExecucaoWidget> createState() =>
      _PopupConfirmExecucaoWidgetState();
}

class _PopupConfirmExecucaoWidgetState
    extends State<PopupConfirmExecucaoWidget> {
  late PopupConfirmExecucaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupConfirmExecucaoModel());

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

    return Container(
      width: 500.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Execução em andamento?',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selecione abaixo a opção que definie o status da execução.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.lato(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    FFAppState().updateStateSSAcompletaStruct(
                      (e) => e..fkIdStatus = 5,
                    );
                    safeSetState(() {});
                    await action_blocks.historico(
                      context,
                      fkIdSSA: FFAppState().stateSSAcompleta.fkIdSsa,
                      fkidStatus: 5,
                      fkidResponsavelAtual: FFAppState().usuarioLogado.id,
                      nomeResponsavelAtual: FFAppState().usuarioLogado.nome,
                    );

                    context.goNamed(ExecucaoHomeWidget.routeName);
                  },
                  text: 'Finalizar o dia',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    FFAppState().updateStateSSAcompletaStruct(
                      (e) => e
                        ..fkIdStatus = 6
                        ..exDataConclusao = FFAppState()
                            .stateSSAcompleta
                            .exPreenchimentoDiariaMontagem
                            .lastOrNull
                            ?.dataPreenchimento,
                    );
                    safeSetState(() {});
                    await ExecucaoTable().update(
                      data: {
                        'data_conclusao_montagem': supaSerialize<DateTime>(
                            FFAppState().stateSSAcompleta.exDataConclusao),
                      },
                      matchingRows: (rows) => rows.eqOrNull(
                        'id_execucao',
                        FFAppState().stateSSAcompleta.fkIdExecucao,
                      ),
                    );
                    await action_blocks.historico(
                      context,
                      fkIdSSA: FFAppState().stateSSAcompleta.fkIdSsa,
                      fkidStatus: 6,
                      fkidResponsavelAtual: FFAppState().usuarioLogado.id,
                      nomeResponsavelAtual: FFAppState().usuarioLogado.nome,
                    );

                    context.goNamed(ExecucaoHomeWidget.routeName);
                  },
                  text: 'Concluir execução',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Cancelar',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.lato(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ].divide(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
