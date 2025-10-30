import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empresa_selecao_model.dart';
export 'empresa_selecao_model.dart';

class EmpresaSelecaoWidget extends StatefulWidget {
  const EmpresaSelecaoWidget({super.key});

  static String routeName = 'EmpresaSelecao';
  static String routePath = '/empresaSelecao';

  @override
  State<EmpresaSelecaoWidget> createState() => _EmpresaSelecaoWidgetState();
}

class _EmpresaSelecaoWidgetState extends State<EmpresaSelecaoWidget> {
  late EmpresaSelecaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmpresaSelecaoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outItens = await VisitaTecnicaItensTable().queryRows(
        queryFn: (q) => q,
      );
      FFAppState().configItensSelecionaveisVT = [];
      safeSetState(() {});
      _model.itens = _model.outItens!.toList().cast<VisitaTecnicaItensRow>();
      safeSetState(() {});
      while (_model.itens.length >= 1) {
        FFAppState().addToConfigItensSelecionaveisVT(CfItensVisitaTecnicaStruct(
          idItem: _model.itens.firstOrNull?.idItem,
          fkIdCategoria: _model.itens.firstOrNull?.fkIdCategoria,
          nomeItem: _model.itens.firstOrNull?.nomeItem,
          ordemExibicao: _model.itens.firstOrNull?.ordemExibicao,
          ativo: _model.itens.firstOrNull?.ativo,
        ));
        safeSetState(() {});
        _model.removeFromItens(_model.itens.firstOrNull!);
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'EmpresaSelecao',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: FutureBuilder<List<EmpresaRow>>(
              future: EmpresaTable().queryRows(
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
                List<EmpresaRow> containerEmpresaRowList = snapshot.data!;

                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).secondary,
                        FlutterFlowTheme.of(context).primary
                      ],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/PCP360_LOGO_BRANCA_layerstyle.png',
                              width: 300.0,
                              height: 250.0,
                              fit: BoxFit.contain,
                            ),
                            FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= '',
                              ),
                              options: List<String>.from(containerEmpresaRowList
                                  .map((e) => e.uidEmpresa)
                                  .toList()),
                              optionLabels: containerEmpresaRowList
                                  .map((e) => e.nomeCliente)
                                  .toList(),
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue = val),
                              width: 400.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
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
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Selecionar Empresa',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).lightGray,
                              borderWidth: 1.0,
                              borderRadius: 5.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            FFButtonWidget(
                              onPressed: (_model.dropDownValue == null ||
                                      _model.dropDownValue == '')
                                  ? null
                                  : () async {
                                      FFAppState().configEmpresaSelecionada =
                                          CfEmpresaSelecionadaStruct(
                                        nomeCliente: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.nomeCliente,
                                        cnpj: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.cnpj,
                                        endereco: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.endereco,
                                        email: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.email,
                                        telefone: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.telefone,
                                        numColigada: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.numColigada,
                                        uidEmpresa: containerEmpresaRowList
                                            .where((e) =>
                                                e.uidEmpresa ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull
                                            ?.uidEmpresa,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed(
                                          DashboardHomeWidget.routeName);
                                    },
                              text: 'Entrar',
                              options: FFButtonOptions(
                                width: 400.0,
                                height: 52.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).info,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(5.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent4,
                              ),
                            ),
                          ].divide(SizedBox(height: 22.0)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
