import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/programacao/view/u_i_programacao/u_i_programacao_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'programacao_editar_model.dart';
export 'programacao_editar_model.dart';

class ProgramacaoEditarWidget extends StatefulWidget {
  const ProgramacaoEditarWidget({
    super.key,
    required this.typemode,
  });

  final WidgetTypeMode? typemode;

  static String routeName = 'programacao_editar';
  static String routePath = '/programacaoEditar';

  @override
  State<ProgramacaoEditarWidget> createState() =>
      _ProgramacaoEditarWidgetState();
}

class _ProgramacaoEditarWidgetState extends State<ProgramacaoEditarWidget> {
  late ProgramacaoEditarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramacaoEditarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'programacao_editar',
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
                    currentPage: MenuPage.scheduling_home,
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
                                  padding: EdgeInsets.all(16.0),
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
                                              'Alterar informações da programação',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.uIProgramacaoModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: UIProgramacaoWidget(
                                          typemode: widget.typemode!,
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
  }
}
