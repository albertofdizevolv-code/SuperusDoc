import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/tabela_home_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/select_drop_down_projeto/select_drop_down_projeto_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/ssa/componentes/filter_options_panel/filter_options_panel_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ssa_home_model.dart';
export 'ssa_home_model.dart';

class SsaHomeWidget extends StatefulWidget {
  const SsaHomeWidget({super.key});

  static String routeName = 'Ssa_home';
  static String routePath = '/ssaHome';

  @override
  State<SsaHomeWidget> createState() => _SsaHomeWidgetState();
}

class _SsaHomeWidgetState extends State<SsaHomeWidget> {
  late SsaHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SsaHomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stateSSAcompleta = CcSSACompletaStruct();
      safeSetState(() {});
      _model.outviewTabelaHome = await VwTabelaHomeTable().queryRows(
        queryFn: (q) => q,
      );
      _model.listVwSSA =
          _model.outviewTabelaHome!.toList().cast<VwTabelaHomeRow>();
      safeSetState(() {});
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
        title: 'Ssa_home',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.sideBarMenuPrincipalModel,
                  updateCallback: () => safeSetState(() {}),
                  child: SideBarMenuPrincipalWidget(
                    currentPage: MenuPage.ssa_home,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.headtitleButtonModel,
                              updateCallback: () => safeSetState(() {}),
                              child: HeadtitleButtonWidget(
                                title: 'SSA\'s',
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                wrapWithModel(
                                  model: _model.selectDropDownProjetoModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SelectDropDownProjetoWidget(),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  wrapWithModel(
                                    model: _model.filterOptionsPanelModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterOptionsPanelWidget(
                                      area: _model.outviewTabelaHome
                                          ?.map((e) => e.area)
                                          .withoutNulls
                                          .toList(),
                                      status: _model.outviewTabelaHome
                                          ?.map((e) => e.status)
                                          .withoutNulls
                                          .toList(),
                                      periodo: _model.outviewTabelaHome
                                          ?.map((e) => e.dataAbertura)
                                          .withoutNulls
                                          .toList(),
                                      filtro: _model.filtro,
                                      aplicarFiltros: () async {
                                        _model.filtro = !_model.filtro;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.outFuncinario =
                                        await FuncionariosTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'empresa_ref',
                                        FFAppState()
                                            .configEmpresaSelecionada
                                            .uidEmpresa,
                                      ),
                                    );

                                    context.pushNamed(
                                      SsaCadastrarWidget.routeName,
                                      queryParameters: {
                                        'funcionarios': serializeParam(
                                          _model.outFuncinario,
                                          ParamType.SupabaseRow,
                                          isList: true,
                                        ),
                                      }.withoutNulls,
                                    );

                                    safeSetState(() {});
                                  },
                                  text: 'Cadastrar SSA',
                                  options: FFButtonOptions(
                                    width: 350.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Importar em Massa',
                                  options: FFButtonOptions(
                                    width: 350.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.lato(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.tabelaHomeModel,
                                updateCallback: () => safeSetState(() {}),
                                child: TabelaHomeWidget(
                                  parameter1: _model.listVwSSA,
                                  iconeBtn: Icon(
                                    FFIcons.kfileListSearch,
                                  ),
                                  titleListEmpty: 'Sem SSA no momento',
                                  navegateAction: (idSSA) async {
                                    context.pushNamed(
                                      SsaDetalhesWidget.routeName,
                                      queryParameters: {
                                        'id': serializeParam(
                                          FFAppState().stateSSAcompleta.fkIdSsa,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
