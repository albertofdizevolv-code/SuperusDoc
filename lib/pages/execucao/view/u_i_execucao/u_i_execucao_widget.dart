import '/backend/schema/enums/enums.dart';
import '/components/tab_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/execucao/componentes/comp_anexar_arquivo/comp_anexar_arquivo_widget.dart';
import '/pages/execucao/componentes/comp_area_s_s_a_execucao/comp_area_s_s_a_execucao_widget.dart';
import '/pages/execucao/componentes/comp_captura_imagens/comp_captura_imagens_widget.dart';
import '/pages/execucao/componentes/comp_interferencia/comp_interferencia_widget.dart';
import '/pages/execucao/componentes/comp_lista_pecas_ex/comp_lista_pecas_ex_widget.dart';
import '/pages/execucao/componentes/comp_montagem/comp_montagem_widget.dart';
import '/pages/execucao/componentes/comp_nivel_piso_ex/comp_nivel_piso_ex_widget.dart';
import '/pages/execucao/componentes/comp_trecho_ex/comp_trecho_ex_widget.dart';
import '/pages/execucao/componentes/popup_confirm_execucao/popup_confirm_execucao_widget.dart';
import '/pages/execucao/componentes/popup_remover_execucao/popup_remover_execucao_widget.dart';
import '/pages/execucao/view/u_i_form_preenchimento/u_i_form_preenchimento_widget.dart';
import '/pages/programacao/components/comp_dadosdo_efetivo/comp_dadosdo_efetivo_widget.dart';
import '/pages/ssa/componentes/comp_obs_geraisda_s_s_a/comp_obs_geraisda_s_s_a_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'u_i_execucao_model.dart';
export 'u_i_execucao_model.dart';

class UIExecucaoWidget extends StatefulWidget {
  const UIExecucaoWidget({
    super.key,
    required this.typemode,
  });

  final WidgetTypeMode? typemode;

  @override
  State<UIExecucaoWidget> createState() => _UIExecucaoWidgetState();
}

class _UIExecucaoWidgetState extends State<UIExecucaoWidget> {
  late UIExecucaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UIExecucaoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.pageActive = valueOrDefault<int>(
        FFAppState()
            .stateSSAcompleta
            .exPreenchimentoDiariaMontagem
            .firstOrNull
            ?.id,
        1,
      );
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
          model: _model.compAreaSSAExecucaoModel,
          updateCallback: () => safeSetState(() {}),
          child: CompAreaSSAExecucaoWidget(
            typemode: widget.typemode!,
          ),
        ),
        Material(
          color: Colors.transparent,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Builder(
                    builder: (context) {
                      if (widget.typemode == WidgetTypeMode.create) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total de dias da execução: ${FFAppState().stateSSAcompleta.exPreenchimentoDiariaMontagem.length.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: UIFormPreenchimentoWidget(
                                              typemode: WidgetTypeMode.create,
                                              fkid: random_data.randomInteger(
                                                  2, 100),
                                              index: 0,
                                              primeiroDia: FFAppState()
                                                          .stateSSAcompleta
                                                          .exPreenchimentoDiariaMontagem
                                                          .length >=
                                                      1
                                                  ? false
                                                  : true,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    text: 'Adicionar um dia',
                                    icon: Icon(
                                      FFIcons.kplus,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            if (FFAppState()
                                    .stateSSAcompleta
                                    .exPreenchimentoDiariaMontagem
                                    .length >=
                                1)
                              Builder(
                                builder: (context) {
                                  final listmontagem = FFAppState()
                                      .stateSSAcompleta
                                      .exPreenchimentoDiariaMontagem
                                      .toList();

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(listmontagem.length,
                                        (listmontagemIndex) {
                                      final listmontagemItem =
                                          listmontagem[listmontagemIndex];
                                      return Builder(
                                        builder: (context) => wrapWithModel(
                                          model: _model.compMontagemModels
                                              .getModel(
                                            listmontagemItem.fkInterno
                                                .toString(),
                                            listmontagemIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: CompMontagemWidget(
                                            key: Key(
                                              'Keyj1l_${listmontagemItem.fkInterno.toString()}',
                                            ),
                                            idinterno:
                                                listmontagemItem.fkInterno,
                                            index: listmontagemIndex + 1,
                                            detailsAction: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child:
                                                        UIFormPreenchimentoWidget(
                                                      typemode:
                                                          WidgetTypeMode.view,
                                                      fkid: FFAppState()
                                                          .stateSSAcompleta
                                                          .exPreenchimentoDiariaMontagem
                                                          .where((e) =>
                                                              e.fkInterno ==
                                                              listmontagemItem
                                                                  .fkInterno)
                                                          .toList()
                                                          .firstOrNull!
                                                          .fkInterno,
                                                      index:
                                                          listmontagemIndex + 1,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            deleteAction: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child:
                                                        PopupRemoverExecucaoWidget(
                                                      execucaoDiariaFk: FFAppState()
                                                          .stateSSAcompleta
                                                          .exPreenchimentoDiariaMontagem
                                                          .where((e) =>
                                                              e.fkInterno ==
                                                              listmontagemItem
                                                                  .fkInterno)
                                                          .toList()
                                                          .firstOrNull!
                                                          .id,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    }).divide(SizedBox(height: 24.0)),
                                  );
                                },
                              ),
                          ],
                        );
                      } else if (widget.typemode == WidgetTypeMode.edit) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Edição',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.lato(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listFormDiario = FFAppState()
                                          .stateSSAcompleta
                                          .exPreenchimentoDiariaMontagem
                                          .toList();

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children:
                                            List.generate(listFormDiario.length,
                                                (listFormDiarioIndex) {
                                          final listFormDiarioItem =
                                              listFormDiario[
                                                  listFormDiarioIndex];
                                          return wrapWithModel(
                                            model: _model.tabBarModels.getModel(
                                              listFormDiarioIndex.toString(),
                                              listFormDiarioIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            updateOnChange: true,
                                            child: TabBarWidget(
                                              key: Key(
                                                'Keyx28_${listFormDiarioIndex.toString()}',
                                              ),
                                              index: listFormDiarioIndex,
                                              optionActive: _model.pageActive ==
                                                      listFormDiarioItem.id
                                                  ? SetGestorDestructor.Active
                                                  : SetGestorDestructor
                                                      .disabled,
                                              fkIdInterno:
                                                  listFormDiarioItem.fkInterno,
                                              activeAction: () async {
                                                _model.pageActive =
                                                    listFormDiarioItem.id;
                                                safeSetState(() {});
                                              },
                                            ),
                                          );
                                        }).divide(SizedBox(width: 28.0)),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                              ],
                            ),
                            wrapWithModel(
                              model: _model.compTrechoExModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CompTrechoExWidget(
                                typemode: widget.typemode!,
                                table: FFAppState()
                                    .stateSSAcompleta
                                    .exTrecho
                                    .where(
                                        (e) => e.fkInterno == _model.pageActive)
                                    .toList(),
                                removeAction: (indexPosition) async {},
                                addAction: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.compNivelPisoExModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CompNivelPisoExWidget(
                                typemode: widget.typemode!,
                                table: FFAppState()
                                    .stateSSAcompleta
                                    .exPiso
                                    .where(
                                        (e) => e.fkInterno == _model.pageActive)
                                    .toList(),
                                addAction: () async {},
                                removeAction: (indexPosition) async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.compDadosdoEfetivoModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CompDadosdoEfetivoWidget(
                                idProjeto:
                                    FFAppState().stateSSAcompleta.fkIdProjeto,
                                typeMode: widget.typemode!,
                                table: FFAppState()
                                    .stateSSAcompleta
                                    .exDadosEfetivo
                                    .where(
                                        (e) => e.fkInterno == _model.pageActive)
                                    .toList(),
                                addAction: (outView) async {},
                                removeAction: (indexPosition) async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.compInterferenciaModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CompInterferenciaWidget(
                                typemode: widget.typemode!,
                                table: FFAppState()
                                    .stateSSAcompleta
                                    .exInterferencias
                                    .where(
                                        (e) => e.fkInterno == _model.pageActive)
                                    .toList(),
                                removeAction: (indexPosition) async {},
                                addAction: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.compListaPecasExModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CompListaPecasExWidget(
                                typemode: widget.typemode!,
                                table: FFAppState()
                                    .stateSSAcompleta
                                    .exListaPecas
                                    .where(
                                        (e) => e.fkInterno == _model.pageActive)
                                    .toList(),
                                countControllerAction:
                                    (indexPosition, countController) async {},
                                removeAction: (indexPosition) async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.compObsGeraisdaSSAModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CompObsGeraisdaSSAWidget(
                                title: 'Condições específicas / Observações',
                                initialValue: FFAppState()
                                    .stateSSAcompleta
                                    .exPreenchimentoDiariaMontagem
                                    .where(
                                        (e) => e.fkInterno == _model.pageActive)
                                    .toList()
                                    .firstOrNull!
                                    .exCondicoesObs,
                                typeMode: widget.typemode!,
                                changeUpdateAction: () async {},
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 500.0,
                                      height: 320.0,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.compAnexarArquivoModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CompAnexarArquivoWidget(
                                          typemode: widget.typemode!,
                                          fileReturnAction: (anyFile) async {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 16.0, 24.0, 16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Assinatura do Cliente Solicitante',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textController,
                                                            focusNode: _model
                                                                .textFieldFocusNode,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .lato(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              hintText:
                                                                  'TextField',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .lato(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .lato(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                            maxLines: 7,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            validator: _model
                                                                .textControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 28.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'Limpar Assinatura',
                                                    options: FFButtonOptions(
                                                      width: 380.0,
                                                      height: 48.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Colors.transparent,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(SizedBox(height: 24.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 28.0)),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 500.0,
                                      height: 300.0,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.compCapturaImagensModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CompCapturaImagensWidget(
                                          title: 'Depois',
                                          typemode: widget.typemode!,
                                          imagensActionReturn:
                                              (imagensReturn) async {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 500.0,
                                      height: 300.0,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.compCapturaImagensModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CompCapturaImagensWidget(
                                          title: 'Antes',
                                          typemode: widget.typemode!,
                                          imagensActionReturn:
                                              (imagensReturn) async {},
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 28.0)),
                              ),
                          ].divide(SizedBox(height: 24.0)),
                        );
                      }
                    },
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).alternate,
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
                          // anexo
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: PopupConfirmExecucaoWidget(),
                              );
                            },
                          );
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
                    child: FFButtonWidget(
                      onPressed: () {
                        print('edit pressed ...');
                      },
                      text: 'Alterar informações',
                      options: FFButtonOptions(
                        width: 380.0,
                        height: 48.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
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
