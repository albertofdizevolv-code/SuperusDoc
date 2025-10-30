import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_menu/card_menu_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_bar_menu_principal_model.dart';
export 'side_bar_menu_principal_model.dart';

class SideBarMenuPrincipalWidget extends StatefulWidget {
  const SideBarMenuPrincipalWidget({
    super.key,
    this.currentPage,
  });

  final MenuPage? currentPage;

  @override
  State<SideBarMenuPrincipalWidget> createState() =>
      _SideBarMenuPrincipalWidgetState();
}

class _SideBarMenuPrincipalWidgetState
    extends State<SideBarMenuPrincipalWidget> {
  late SideBarMenuPrincipalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarMenuPrincipalModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
      ),
      child: Container(
        width: FFAppState().menuToggle == false ? 80.0 : 270.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).menu,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(DashboardHomeWidget.routeName);
                            },
                            child: Builder(
                              builder: (context) {
                                if (FFAppState().menuToggle == false) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/logo.png',
                                      height: 28.0,
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                } else {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/PCP360_LOGO_BRANCA_layerstyle.png',
                                      width: 100.0,
                                      height: 40.0,
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = false);
                          }),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(DashboardHomeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.cardMenuDashboardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CardMenuWidget(
                        icon: Icon(
                          FFIcons.kgridSquare,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        title: 'Dashboard',
                        active: widget.currentPage == MenuPage.dashboard_home,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(SsaHomeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.cardMenuSsaModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CardMenuWidget(
                        icon: Icon(
                          FFIcons.kstickyNoteTextSquare,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        title: 'SSA',
                        active: widget.currentPage == MenuPage.ssa_home,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(VisitaTecnicaHomeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.cardMenuTechnicalVisitModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CardMenuWidget(
                        icon: Icon(
                          FFIcons.klocationPin,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        title: 'Visita Tecnica',
                        active: widget.currentPage ==
                            MenuPage.technical_visit_home,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(ProgramacaoHomeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.cardMenuSchedulingModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CardMenuWidget(
                        icon: Icon(
                          FFIcons.kcalendar,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        title: 'Programação',
                        active: widget.currentPage == MenuPage.scheduling_home,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(ExecucaoHomeWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.cardMenuExecutionModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CardMenuWidget(
                        icon: Icon(
                          FFIcons.kpapersText,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        title: 'Execução',
                        active: widget.currentPage == MenuPage.execution_home,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(MeasurementHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuMeasurementModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.kruler,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Medição',
                          active:
                              widget.currentPage == MenuPage.measurement_home,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(ApprovalHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuApprovalModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.knoteListCheck,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Aprovação',
                          active: widget.currentPage == MenuPage.approval_home,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(ExtraActivityHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuExtraActivityModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.kcheckCircle,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Atividade Extra',
                          active: widget.currentPage ==
                              MenuPage.extra_activity_home,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context
                            .pushNamed(MaterialCollectionHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuMaterialCollectionModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.kbadgeCheck,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Recolhimento de Material',
                          active: widget.currentPage ==
                              MenuPage.material_collection_home,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(CompensationHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuCompensationModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.kdocument,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Indenização',
                          active:
                              widget.currentPage == MenuPage.compensation_home,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(InventoryHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuInventoryModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.kpackage,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Estoque',
                          active:
                              widget.currentPage == MenuPage.inventory_home,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(ReportsHomeWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.cardMenuReportsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardMenuWidget(
                          icon: Icon(
                            FFIcons.kchartTrendUp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                          title: 'Relatórios',
                          active: widget.currentPage == MenuPage.reports_home,
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 2.0)),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(EmpresaSelecaoWidget.routeName);
              },
              child: wrapWithModel(
                model: _model.cardMenuChangeCompanyModel,
                updateCallback: () => safeSetState(() {}),
                child: CardMenuWidget(
                  icon: Icon(
                    FFIcons.kuserChange,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  title: 'Alterar Operação',
                  active: widget.currentPage == MenuPage.change_company,
                ),
              ),
            ),
            if (FFAppState().menuToggle == true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(34.0, 16.0, 0.0, 0.0),
                child: Text(
                  'Ultima atualização: ${FFAppState().UltimaAtualizacao}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.lato(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
          ].addToEnd(SizedBox(height: 48.0)),
        ),
      ),
    );
  }
}
