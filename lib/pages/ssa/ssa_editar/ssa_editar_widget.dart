import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/ssa/view/u_i_ssa/u_i_ssa_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'ssa_editar_model.dart';
export 'ssa_editar_model.dart';

class SsaEditarWidget extends StatefulWidget {
  const SsaEditarWidget({
    super.key,
    required this.idSSA,
  });

  final int? idSSA;

  static String routeName = 'Ssa_editar';
  static String routePath = '/ssaEditar';

  @override
  State<SsaEditarWidget> createState() => _SsaEditarWidgetState();
}

class _SsaEditarWidgetState extends State<SsaEditarWidget> {
  late SsaEditarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SsaEditarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VwSsaDetalhesRow>>(
      future: VwSsaDetalhesTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id_ssa',
          widget.idSSA,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<VwSsaDetalhesRow> ssaEditarVwSsaDetalhesRowList = snapshot.data!;

        final ssaEditarVwSsaDetalhesRow =
            ssaEditarVwSsaDetalhesRowList.isNotEmpty
                ? ssaEditarVwSsaDetalhesRowList.first
                : null;

        return Title(
            title: 'Ssa_editar',
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
                          child: ScrollConfiguration(
                            behavior: ScrollConfiguration.of(context).copyWith(
                              scrollbars: false,
                              dragDevices: {
                                PointerDeviceKind.mouse,
                                PointerDeviceKind.touch,
                                PointerDeviceKind.stylus,
                                PointerDeviceKind.unknown,
                              },
                            ),
                            child: Scrollbar(
                              controller: _model.scrollScrollController,
                              child: SingleChildScrollView(
                                controller: _model.scrollScrollController,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          wrapWithModel(
                                            model: _model.headtitleButtonModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HeadtitleButtonWidget(
                                              title:
                                                  'Editar Solicitação de Serviço de Andaime',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.uISsaModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UISsaWidget(
                                              typemode: WidgetTypeMode.edit,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
