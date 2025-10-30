import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/tab_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/toast_with_temp/toast_with_temp_widget.dart';
import '/pages/execucao/componentes/comp_anexar_arquivo/comp_anexar_arquivo_widget.dart';
import '/pages/execucao/componentes/comp_area_s_s_a_execucao/comp_area_s_s_a_execucao_widget.dart';
import '/pages/execucao/componentes/comp_captura_imagens/comp_captura_imagens_widget.dart';
import '/pages/execucao/componentes/comp_interferencia/comp_interferencia_widget.dart';
import '/pages/execucao/componentes/comp_lista_pecas_ex/comp_lista_pecas_ex_widget.dart';
import '/pages/execucao/componentes/comp_montagem/comp_montagem_widget.dart';
import '/pages/execucao/componentes/comp_nivel_piso_ex/comp_nivel_piso_ex_widget.dart';
import '/pages/execucao/componentes/comp_trecho_ex/comp_trecho_ex_widget.dart';
import '/pages/execucao/componentes/comp_upload_img_list/comp_upload_img_list_widget.dart';
import '/pages/execucao/view/u_i_form_preenchimento/u_i_form_preenchimento_widget.dart';
import '/pages/programacao/components/comp_dadosdo_efetivo/comp_dadosdo_efetivo_widget.dart';
import '/pages/ssa/componentes/comp_obs_geraisda_s_s_a/comp_obs_geraisda_s_s_a_widget.dart';
import '/pages/visita_tecnica/componentes/comp_upload_img/comp_upload_img_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
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
                                              uploaded: (imgAntes, imgDepois,
                                                  anexo) async {
                                                _model.imgsAntigas = imgAntes
                                                    .toList()
                                                    .cast<FFUploadedFile>();
                                                _model.imgsDepois = imgDepois
                                                    .toList()
                                                    .cast<FFUploadedFile>();
                                                _model.anexo = anexo;
                                                safeSetState(() {});
                                              },
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
                                                      uploaded: (imgAntes,
                                                          imgDepois,
                                                          anexo) async {},
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
                          children: [],
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final listFormDiario = FFAppState()
                                      .stateSSAcompleta
                                      .exPreenchimentoDiariaMontagem
                                      .toList();

                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(listFormDiario.length,
                                            (listFormDiarioIndex) {
                                      final listFormDiarioItem =
                                          listFormDiario[listFormDiarioIndex];
                                      return Expanded(
                                        child: wrapWithModel(
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
                                                    listFormDiarioItem.fkInterno
                                                ? SetGestorDestructor.Active
                                                : SetGestorDestructor.disabled,
                                            fkIdInterno:
                                                listFormDiarioItem.fkInterno,
                                            activeAction: () async {
                                              _model.pageActive =
                                                  listFormDiarioItem.fkInterno;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
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
                                      updateCallback: () => safeSetState(() {}),
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
                                      borderRadius: BorderRadius.circular(6.0),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                                        font: GoogleFonts.inter(
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
                                                        width: double.infinity,
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
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
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
                                                    ].divide(
                                                        SizedBox(height: 8.0)),
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
                                                    print('Button pressed ...');
                                                  },
                                                  text: 'Limpar Assinatura',
                                                  options: FFButtonOptions(
                                                    width: 380.0,
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Colors.transparent,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
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
                                      updateCallback: () => safeSetState(() {}),
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
                                      updateCallback: () => safeSetState(() {}),
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
                          // imgsAntigas
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: CompUploadImgListWidget(
                                  pathBucket: PathBucket.fotos,
                                  arquivo: _model.imgsAntigas,
                                  url: (url) async {
                                    FFAppState().updateStateSSAcompletaStruct(
                                      (e) => e
                                        ..updateExPreenchimentoDiariaMontagem(
                                          (e) => e.add(
                                              FmPreenchimentoExecucaoStruct(
                                            exCapturaFotosAntigas: url,
                                          )),
                                        ),
                                    );
                                    safeSetState(() {});
                                  },
                                ),
                              );
                            },
                          );

                          // imgsNovas
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: CompUploadImgListWidget(
                                  pathBucket: PathBucket.fotos,
                                  arquivo: _model.imgsDepois,
                                  url: (url) async {
                                    FFAppState().updateStateSSAcompletaStruct(
                                      (e) => e
                                        ..updateExPreenchimentoDiariaMontagem(
                                          (e) => e.add(
                                              FmPreenchimentoExecucaoStruct(
                                            exCapturaFotosNovas: url,
                                          )),
                                        ),
                                    );
                                    safeSetState(() {});
                                  },
                                ),
                              );
                            },
                          );

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
                                child: CompUploadImgWidget(
                                  pathBucket: PathBucket.croqui,
                                  arquivo: _model.anexo!,
                                  url: (url) async {
                                    FFAppState().updateStateSSAcompletaStruct(
                                      (e) => e
                                        ..updateExPreenchimentoDiariaMontagem(
                                          (e) => e.add(
                                              FmPreenchimentoExecucaoStruct(
                                            exArquivosAnexo: url,
                                          )),
                                        ),
                                    );
                                    safeSetState(() {});
                                  },
                                ),
                              );
                            },
                          );

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
                                  text: 'Execução realizada com sucesso',
                                  timeLoading: TimeLoading.temp8seconds,
                                ),
                              );
                            },
                          );

                          _model.outNewExecucao = await ExecucaoTable().insert({
                            'fk_id_ssa': FFAppState().stateSSAcompleta.fkIdSsa,
                            'fk_id_responsavel_superus':
                                FFAppState().usuarioLogado.id,
                            'data_inicio_montagem': supaSerialize<DateTime>(
                                FFAppState().stateSSAcompleta.exDataInicio),
                          });
                          for (int loop1Index = 0;
                              loop1Index <
                                  FFAppState()
                                      .stateSSAcompleta
                                      .exPreenchimentoDiariaMontagem
                                      .length;
                              loop1Index++) {
                            final currentLoop1Item = FFAppState()
                                .stateSSAcompleta
                                .exPreenchimentoDiariaMontagem[loop1Index];
                            await ExecucaoMontagemDiariaTable().insert({
                              'fk_execucao': _model.outNewExecucao?.idExecucao,
                              'data_execucao': supaSerialize<DateTime>(
                                  currentLoop1Item.dataPreenchimento),
                              'responsavel_ref': currentLoop1Item.fkResponsavel,
                              'observacoes': currentLoop1Item.exCondicoesObs,
                              'fotos_antigas_url':
                                  currentLoop1Item.exCapturaFotosAntigas,
                              'fotos_novas_url':
                                  currentLoop1Item.exCapturaFotosNovas,
                              'anexos_url': valueOrDefault<String>(
                                currentLoop1Item.exArquivosAnexo,
                                'N/A',
                              ),
                              'assinatura_responsavel_url':
                                  currentLoop1Item.exAssinaturaSuperusUrl,
                            });
                          }
                          for (int loop2Index = 0;
                              loop2Index <
                                  FFAppState().stateSSAcompleta.exTrecho.length;
                              loop2Index++) {
                            final currentLoop2Item = FFAppState()
                                .stateSSAcompleta
                                .exTrecho[loop2Index];
                            await TrechosExecucaoTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'trecho': currentLoop2Item.trecho,
                              'tipo': currentLoop2Item.tipoTrecho,
                              'comp': currentLoop2Item.comprimento,
                              'alt': currentLoop2Item.altura,
                              'larg': currentLoop2Item.largura,
                              'v_desc': currentLoop2Item.descontar,
                              'v_total': currentLoop2Item.volumeTotal,
                              'execucao_ref': _model.outNewExecucao?.idExecucao,
                            });
                          }
                          for (int loop3Index = 0;
                              loop3Index <
                                  FFAppState().stateSSAcompleta.exPiso.length;
                              loop3Index++) {
                            final currentLoop3Item = FFAppState()
                                .stateSSAcompleta
                                .exPiso[loop3Index];
                            await PisosExecucaoTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'nivel': currentLoop3Item.nivelPiso,
                              'elevacao': currentLoop3Item.elevacao,
                              'comp': currentLoop3Item.comprimento,
                              'larg': currentLoop3Item.largura,
                              'area_descontar': currentLoop3Item.areaDescontar,
                              'area_nivel': currentLoop3Item.areaNivel,
                              'execucao_ref': _model.outNewExecucao?.idExecucao,
                            });
                          }
                          for (int loop4Index = 0;
                              loop4Index <
                                  FFAppState()
                                      .stateSSAcompleta
                                      .exDadosEfetivo
                                      .length;
                              loop4Index++) {
                            final currentLoop4Item = FFAppState()
                                .stateSSAcompleta
                                .exDadosEfetivo[loop4Index];
                            await EquipeExecucaoTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'execucao_ref': _model.outNewExecucao?.idExecucao,
                              'funcionario_ref': currentLoop4Item.fkIdUser,
                              'hora_inicio': supaSerialize<PostgresTime>(
                                  PostgresTime(currentLoop4Item.horarioInicio)),
                              'hora_fim': supaSerialize<PostgresTime>(
                                  PostgresTime(currentLoop4Item.horaTermino)),
                              'horas_totais': currentLoop4Item.horasTotais,
                            });
                          }
                          for (int loop5Index = 0;
                              loop5Index <
                                  FFAppState()
                                      .stateSSAcompleta
                                      .exListaPecas
                                      .length;
                              loop5Index++) {
                            final currentLoop5Item = FFAppState()
                                .stateSSAcompleta
                                .exListaPecas[loop5Index];
                            await ListaPecasExecucaoTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'execucao_ref': _model.outNewExecucao?.idExecucao,
                              'material_ref': currentLoop5Item.idMaterial,
                              'quantidade_reservada':
                                  currentLoop5Item.quantidade,
                            });
                          }
                          for (int loop6Index = 0;
                              loop6Index <
                                  FFAppState()
                                      .stateSSAcompleta
                                      .exInterferencias
                                      .length;
                              loop6Index++) {
                            final currentLoop6Item = FFAppState()
                                .stateSSAcompleta
                                .exInterferencias[loop6Index];
                            await InterferenciaExecucaoTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'fk_id_ssa':
                                  FFAppState().stateSSAcompleta.fkIdSsa,
                              'fk_id_execucao':
                                  _model.outNewExecucao?.idExecucao,
                              'data_execucao': supaSerialize<DateTime>(
                                  FFAppState()
                                      .stateSSAcompleta
                                      .exPreenchimentoDiariaMontagem
                                      .where((e) =>
                                          e.fkInterno ==
                                          currentLoop6Item.fkInterno)
                                      .toList()
                                      .firstOrNull
                                      ?.dataPreenchimento),
                              'descricao': currentLoop6Item.descricao,
                              'duracao': currentLoop6Item.duracao,
                              'efetivo_afetado':
                                  currentLoop6Item.efetivoAfetado,
                              'impacto_hora': currentLoop6Item.impactoHora,
                              'fk_id_motivo': currentLoop6Item.fkMotivo,
                            });
                          }
                          await SsaTable().update(
                            data: {
                              'fk_id_status': 5,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id_ssa',
                              FFAppState().stateSSAcompleta.fkIdSsa,
                            ),
                          );
                          await action_blocks.historico(
                            context,
                            fkIdSSA: FFAppState().stateSSAcompleta.fkIdSsa,
                            fkidStatus:
                                FFAppState().stateSSAcompleta.fkIdStatus,
                            fkidResponsavelAtual: FFAppState().usuarioLogado.id,
                            nomeResponsavelAtual:
                                FFAppState().usuarioLogado.nome,
                          );

                          context.pushNamed(ExecucaoHomeWidget.routeName);

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
