import '/components/tabela_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/index.dart';
import 'execucao_home_widget.dart' show ExecucaoHomeWidget;
import 'package:flutter/material.dart';

class ExecucaoHomeModel extends FlutterFlowModel<ExecucaoHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for tabela_home component.
  late TabelaHomeModel tabelaHomeModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    tabelaHomeModel = createModel(context, () => TabelaHomeModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    headtitleButtonModel.dispose();
    tabelaHomeModel.dispose();
  }
}
