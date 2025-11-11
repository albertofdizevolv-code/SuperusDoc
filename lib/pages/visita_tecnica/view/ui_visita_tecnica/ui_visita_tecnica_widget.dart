import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/global_components/toast_with_temp/toast_with_temp_widget.dart';
import '/pages/visita_tecnica/componentes/comentarios/comentarios_widget.dart';
import '/pages/visita_tecnica/componentes/comp_card_row/comp_card_row_widget.dart';
import '/pages/visita_tecnica/componentes/comp_especificacoes_s_p_i_q/comp_especificacoes_s_p_i_q_widget.dart';
import '/pages/visita_tecnica/componentes/comp_nivel_piso/comp_nivel_piso_widget.dart';
import '/pages/visita_tecnica/componentes/comp_signature/comp_signature_widget.dart';
import '/pages/visita_tecnica/componentes/comp_trecho/comp_trecho_widget.dart';
import '/pages/visita_tecnica/componentes/comp_upload_img/comp_upload_img_widget.dart';
import '/pages/visita_tecnica/componentes/croqui/croqui_widget.dart';
import '/pages/visita_tecnica/componentes/lista_pecas/lista_pecas_widget.dart';
import '/pages/visita_tecnica/componentes/registro_de_vista/registro_de_vista_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_visita_tecnica_model.dart';
export 'ui_visita_tecnica_model.dart';

class UiVisitaTecnicaWidget extends StatefulWidget {
  const UiVisitaTecnicaWidget({
    super.key,
    required this.typemode,
  });

  final WidgetTypeMode? typemode;

  @override
  State<UiVisitaTecnicaWidget> createState() => _UiVisitaTecnicaWidgetState();
}

class _UiVisitaTecnicaWidgetState extends State<UiVisitaTecnicaWidget> {
  late UiVisitaTecnicaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiVisitaTecnicaModel());

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        wrapWithModel(
          model: _model.registroDeVistaModel,
          updateCallback: () => safeSetState(() {}),
          child: RegistroDeVistaWidget(
            typemode: widget.typemode!,
          ),
        ),
        wrapWithModel(
          model: _model.compCardRowModel1,
          updateCallback: () => safeSetState(() {}),
          child: CompCardRowWidget(
            title: 'Descrição de Condições Críticas',
            fkCategoria: 1,
            typemode: widget.typemode!,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: wrapWithModel(
                model: _model.compCardRowModel2,
                updateCallback: () => safeSetState(() {}),
                child: CompCardRowWidget(
                  title: 'Tipo de Andaime',
                  fkCategoria: 2,
                  typemode: widget.typemode!,
                ),
              ),
            ),
            wrapWithModel(
              model: _model.croquiModel,
              updateCallback: () => safeSetState(() {}),
              child: CroquiWidget(
                typemode: widget.typemode!,
                uploaded:
                    (_model.uploadedLocalFile_croquiUploadData023.bytes
                                    ?.isNotEmpty ??
                                false)
                        ? true
                        : false,
                callbackUpload: () async {
                  final selectedFiles = await selectFiles(
                    multiFile: false,
                  );
                  if (selectedFiles != null) {
                    safeSetState(() =>
                        _model.isDataUploading_croquiUploadData023 = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    try {
                      selectedUploadedFiles = selectedFiles
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                                originalFilename: m.originalFilename,
                              ))
                          .toList();
                    } finally {
                      _model.isDataUploading_croquiUploadData023 = false;
                    }
                    if (selectedUploadedFiles.length == selectedFiles.length) {
                      safeSetState(() {
                        _model.uploadedLocalFile_croquiUploadData023 =
                            selectedUploadedFiles.first;
                      });
                    } else {
                      safeSetState(() {});
                      return;
                    }
                  }
                },
                clearUpload: () async {
                  safeSetState(() {
                    _model.isDataUploading_croquiUploadData023 = false;
                    _model.uploadedLocalFile_croquiUploadData023 =
                        FFUploadedFile(
                            bytes: Uint8List.fromList([]),
                            originalFilename: '');
                  });
                },
              ),
            ),
          ].divide(SizedBox(width: 24.0)),
        ),
        wrapWithModel(
          model: _model.compEspecificacoesSPIQModel,
          updateCallback: () => safeSetState(() {}),
          child: CompEspecificacoesSPIQWidget(
            typeMode: widget.typemode!,
          ),
        ),
        wrapWithModel(
          model: _model.compTrechoModel,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: CompTrechoWidget(
            idSSA: FFAppState().stateSSAcompleta.fkIdSsa,
            typemode: widget.typemode!,
          ),
        ),
        wrapWithModel(
          model: _model.compNivelPisoModel,
          updateCallback: () => safeSetState(() {}),
          child: CompNivelPisoWidget(
            idSSA: FFAppState().stateSSAcompleta.fkIdSsa,
            typemode: widget.typemode!,
          ),
        ),
        wrapWithModel(
          model: _model.listaPecasModel,
          updateCallback: () => safeSetState(() {}),
          child: ListaPecasWidget(
            typemode: widget.typemode!,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: wrapWithModel(
                model: _model.compSignatureModel,
                updateCallback: () => safeSetState(() {}),
                child: CompSignatureWidget(
                  title: 'Assinatura',
                  typemode: widget.typemode!,
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: wrapWithModel(
                model: _model.comentariosModel,
                updateCallback: () => safeSetState(() {}),
                child: ComentariosWidget(
                  typemode: widget.typemode!,
                ),
              ),
            ),
          ].divide(SizedBox(width: 24.0)),
        ),
        Builder(
          builder: (context) {
            if (widget.typemode == WidgetTypeMode.view) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          VisitaTecnicaEditarWidget.routeName,
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
                        width: double.infinity,
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
                  Expanded(
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Gerar PDF',
                      options: FFButtonOptions(
                        width: double.infinity,
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
            } else if (widget.typemode == WidgetTypeMode.edit) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(SsaHomeWidget.routeName);
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        width: double.infinity,
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
                          if ((_model.uploadedLocalFile_croquiUploadData023
                                      .bytes?.isNotEmpty ??
                                  false)) {
                            await deleteSupabaseFileFromPublicUrl(
                                FFAppState().stateSSAcompleta.vtCroquiUrl);
                            // Get Croqui
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
                                    arquivo: _model
                                        .uploadedLocalFile_croquiUploadData023,
                                    url: (url) async {
                                      FFAppState().updateStateSSAcompletaStruct(
                                        (e) => e..vtCroquiUrl = url,
                                      );
                                      safeSetState(() {});
                                    },
                                  ),
                                );
                              },
                            );
                          } else {
                            FFAppState().updateStateSSAcompletaStruct(
                              (e) => e..vtCroquiUrl = 'N/A',
                            );
                            safeSetState(() {});
                          }

                          // toast com tempo
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
                                  text: 'As informações com sucesso',
                                  timeLoading: TimeLoading.temp10seconds,
                                ),
                              );
                            },
                          );

                          await VisitaTecnicaTable().update(
                            data: {
                              'croqui_area_url': valueOrDefault<String>(
                                FFAppState().stateSSAcompleta.vtCroquiUrl,
                                'N/A',
                              ),
                              'comentarios':
                                  FFAppState().stateSSAcompleta.vtComentarios,
                              'total_area_piso_m2': valueOrDefault<double>(
                                functions.sumListVisitaTecnica(FFAppState()
                                    .stateSSAcompleta
                                    .vtNivelPiso
                                    .map((e) => e.areaNivel)
                                    .toList()),
                                0.0,
                              ),
                              'total_material_tubular_m':
                                  valueOrDefault<double>(
                                functions.sumMetrosPecasVisitaTecnica(
                                    FFAppState()
                                        .stateSSAcompleta
                                        .vtListaPecas
                                        .map((e) => e.quantidade)
                                        .toList(),
                                    FFAppState()
                                        .stateSSAcompleta
                                        .vtListaPecas
                                        .map((e) => e.tamanho)
                                        .toList()),
                                0.0,
                              ),
                              'volume_total_m2': valueOrDefault<double>(
                                functions.sumListVisitaTecnica(FFAppState()
                                    .stateSSAcompleta
                                    .vtTrecho
                                    .map((e) => e.volumeTotal)
                                    .toList()),
                                0.0,
                              ),
                              'qnt_Pessoas_estrutura': valueOrDefault<String>(
                                FFAppState().stateSSAcompleta.vtQntPessoas,
                                'N/A',
                              ),
                              'carga_estrutura': valueOrDefault<String>(
                                FFAppState().stateSSAcompleta.vtCargaEstrutura,
                                'N/A',
                              ),
                              'encarregado_visitaTecnica':
                                  valueOrDefault<String>(
                                FFAppState()
                                    .stateSSAcompleta
                                    .vtNomeEncarregadoCliente,
                                'N/A',
                              ),
                              'contato_encarregado': valueOrDefault<String>(
                                FFAppState()
                                    .stateSSAcompleta
                                    .vtContatoEncarregadoCliente,
                                'N/A',
                              ),
                              'data_visita': supaSerialize<DateTime>(
                                  FFAppState().stateSSAcompleta.vtDataVisita),
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id_visita',
                              valueOrDefault<int>(
                                FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
                                0,
                              ),
                            ),
                          );
                          await _model.loopItensSelecionados(
                            context,
                            typemode: WidgetTypeMode.edit,
                            fkVisitaTecnica: valueOrDefault<int>(
                              FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
                              0,
                            ),
                          );
                          // Trechos
                          await _model.loopTrechos(
                            context,
                            typemode: WidgetTypeMode.edit,
                            fkVisitaTecnica: valueOrDefault<int>(
                              FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
                              0,
                            ),
                          );
                          // Pisos
                          await _model.loopNiveisPiso(
                            context,
                            typemode: WidgetTypeMode.edit,
                            fkVisitaTecnica: valueOrDefault<int>(
                              FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
                              0,
                            ),
                          );

                          context.goNamed(SsaHomeWidget.routeName);

                          // ListaPecasVT
                          await _model.loopListaPecasVT(
                            context,
                            type: WidgetTypeMode.edit,
                            fkVisitaTecnica: valueOrDefault<int>(
                              FFAppState().stateSSAcompleta.fkIdVisitaTecnica,
                              0,
                            ),
                          );
                          FFAppState().uploadBase64 = '';
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        text: 'Alterar informações',
                        options: FFButtonOptions(
                          width: double.infinity,
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
                children: [
                  Flexible(
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.safePop();
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        width: double.infinity,
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
                  Flexible(
                    child: Builder(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          if ((_model.uploadedLocalFile_croquiUploadData023
                                      .bytes?.isNotEmpty ??
                                  false)) {
                            // Get Croqui
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
                                    arquivo: _model
                                        .uploadedLocalFile_croquiUploadData023,
                                    url: (url) async {
                                      FFAppState().updateStateSSAcompletaStruct(
                                        (e) => e..vtCroquiUrl = url,
                                      );
                                      safeSetState(() {});
                                    },
                                  ),
                                );
                              },
                            );
                          } else {
                            FFAppState().updateStateSSAcompletaStruct(
                              (e) => e..vtCroquiUrl = 'N/A',
                            );
                            safeSetState(() {});
                          }

                          if (FFAppState().uploadBase64 != '') {
                            // Get Assinatura
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
                                    pathBucket: PathBucket.assinatura,
                                    arquivo: functions.base64ToUpload(
                                        FFAppState().uploadBase64)!,
                                    url: (url) async {
                                      FFAppState().updateStateSSAcompletaStruct(
                                        (e) => e..vtAssinaturaUrl = url,
                                      );
                                      safeSetState(() {});
                                    },
                                  ),
                                );
                              },
                            );
                          } else {
                            FFAppState().updateStateSSAcompletaStruct(
                              (e) => e..vtAssinaturaUrl = 'N/A',
                            );
                            safeSetState(() {});
                          }

                          // toast com tempo
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
                                  text: 'Visita tecnica realizada com sucesso',
                                  timeLoading: TimeLoading.temp10seconds,
                                ),
                              );
                            },
                          );

                          _model.outNewVisitaTecnica =
                              await VisitaTecnicaTable().insert({
                            'fk_id_ssa': FFAppState().stateSSAcompleta.fkIdSsa,
                            'data_visita': supaSerialize<DateTime>(
                                FFAppState().stateSSAcompleta.vtDataVisita),
                            'fk_id_responsavel_visita': FFAppState()
                                .stateSSAcompleta
                                .vtFkResponsavelPelaVisita,
                            'croqui_area_url':
                                FFAppState().stateSSAcompleta.vtCroquiUrl,
                            'comentarios':
                                FFAppState().stateSSAcompleta.vtComentarios,
                            'assinatura_cliente_url':
                                FFAppState().stateSSAcompleta.vtAssinaturaUrl,
                            'fk_id_responsavel_cliente': FFAppState()
                                .stateSSAcompleta
                                .ssaFkIdResponsavel,
                            'total_area_piso_m2': valueOrDefault<double>(
                              functions.sumListVisitaTecnica(FFAppState()
                                  .stateSSAcompleta
                                  .vtNivelPiso
                                  .map((e) => e.areaNivel)
                                  .toList()),
                              0.0,
                            ),
                            'total_material_tubular_m': valueOrDefault<double>(
                              functions.sumMetrosPecasVisitaTecnica(
                                  FFAppState()
                                      .stateSSAcompleta
                                      .vtListaPecas
                                      .map((e) => e.quantidade)
                                      .toList(),
                                  FFAppState()
                                      .stateSSAcompleta
                                      .vtListaPecas
                                      .map((e) => e.tamanho)
                                      .toList()),
                              0.0,
                            ),
                            'volume_total_m2': valueOrDefault<double>(
                              functions.sumListVisitaTecnica(FFAppState()
                                  .stateSSAcompleta
                                  .vtTrecho
                                  .map((e) => e.volumeTotal)
                                  .toList()),
                              0.0,
                            ),
                            'qnt_Pessoas_estrutura':
                                FFAppState().stateSSAcompleta.vtQntPessoas,
                            'carga_estrutura':
                                FFAppState().stateSSAcompleta.vtCargaEstrutura,
                            'encarregado_visitaTecnica': FFAppState()
                                .stateSSAcompleta
                                .vtNomeEncarregadoCliente,
                            'contato_encarregado': FFAppState()
                                .stateSSAcompleta
                                .vtContatoEncarregadoCliente,
                          });
                          await _model.loopItensSelecionados(
                            context,
                            typemode: WidgetTypeMode.create,
                            fkVisitaTecnica:
                                _model.outNewVisitaTecnica?.idVisita,
                          );
                          // Trechos
                          await _model.loopTrechos(
                            context,
                            typemode: WidgetTypeMode.create,
                            fkVisitaTecnica:
                                _model.outNewVisitaTecnica?.idVisita,
                          );
                          // Pisos
                          await _model.loopNiveisPiso(
                            context,
                            typemode: WidgetTypeMode.create,
                            fkVisitaTecnica:
                                _model.outNewVisitaTecnica?.idVisita,
                          );
                          await SsaTable().update(
                            data: {
                              'fk_id_status': 3,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id_ssa',
                              FFAppState().stateSSAcompleta.fkIdSsa,
                            ),
                          );
                          // ListaPecasVT
                          await _model.loopListaPecasVT(
                            context,
                            type: WidgetTypeMode.create,
                            fkVisitaTecnica:
                                _model.outNewVisitaTecnica?.idVisita,
                          );
                          // historico
                          await action_blocks.historico(
                            context,
                            fkIdSSA: FFAppState().stateSSAcompleta.fkIdSsa,
                            fkidStatus: 3,
                            fkidResponsavelAtual: FFAppState()
                                .stateSSAcompleta
                                .vtFkIdTecnicoResponsavel,
                            nomeResponsavelAtual: FFAppState()
                                .stateSSAcompleta
                                .vtNomeTecnicoResponsavel,
                          );

                          context.goNamed(VisitaTecnicaHomeWidget.routeName);

                          FFAppState().uploadBase64 = '';
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        text: 'Salvar',
                        options: FFButtonOptions(
                          width: double.infinity,
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
            }
          },
        ),
      ].divide(SizedBox(height: 24.0)),
    );
  }
}
