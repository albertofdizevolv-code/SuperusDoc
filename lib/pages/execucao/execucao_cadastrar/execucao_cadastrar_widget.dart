import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/execucao/view/u_i_execucao/u_i_execucao_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'execucao_cadastrar_model.dart';
export 'execucao_cadastrar_model.dart';

class ExecucaoCadastrarWidget extends StatefulWidget {
  const ExecucaoCadastrarWidget({super.key});

  static String routeName = 'execucao_cadastrar';
  static String routePath = '/execucaoCadastrar';

  @override
  State<ExecucaoCadastrarWidget> createState() =>
      _ExecucaoCadastrarWidgetState();
}

class _ExecucaoCadastrarWidgetState extends State<ExecucaoCadastrarWidget> {
  late ExecucaoCadastrarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExecucaoCadastrarModel());

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
        title: 'detalhes-execucao',
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
                    currentPage: MenuPage.execution_home,
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
                                          title: 'Execução',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.uIExecucaoModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: UIExecucaoWidget(
                                          typemode: WidgetTypeMode.create,
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
