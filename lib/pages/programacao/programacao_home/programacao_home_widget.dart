import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/tabela_home_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'programacao_home_model.dart';
export 'programacao_home_model.dart';

class ProgramacaoHomeWidget extends StatefulWidget {
  const ProgramacaoHomeWidget({super.key});

  static String routeName = 'programacao_home';
  static String routePath = '/programacaoHome';

  @override
  State<ProgramacaoHomeWidget> createState() => _ProgramacaoHomeWidgetState();
}

class _ProgramacaoHomeWidgetState extends State<ProgramacaoHomeWidget> {
  late ProgramacaoHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramacaoHomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().stateSSAcompleta = CcSSACompletaStruct();
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

    return FutureBuilder<List<VwTabelaHomeRow>>(
      future: VwTabelaHomeTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'status',
          'Em programação',
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
        List<VwTabelaHomeRow> programacaoHomeVwTabelaHomeRowList =
            snapshot.data!;

        return Title(
            title: 'programacao_home',
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
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.headtitleButtonModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HeadtitleButtonWidget(
                                    title: 'Programação',
                                  ),
                                ),
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.tabelaHomeModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TabelaHomeWidget(
                                      parameter1:
                                          programacaoHomeVwTabelaHomeRowList,
                                      iconeBtn: Icon(
                                        FFIcons.kfileListSearch,
                                      ),
                                      titleListEmpty:
                                          'Nenhuma Programção pendente',
                                      navegateAction: (idSSA) async {
                                        context.pushNamed(
                                          ProgramacaoCadastrarWidget.routeName,
                                          queryParameters: {
                                            'typemode': serializeParam(
                                              WidgetTypeMode.create,
                                              ParamType.Enum,
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
      },
    );
  }
}
