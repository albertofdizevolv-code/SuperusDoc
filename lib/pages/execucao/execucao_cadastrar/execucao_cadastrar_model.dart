import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/execucao/view/u_i_execucao/u_i_execucao_widget.dart';
import 'execucao_cadastrar_widget.dart' show ExecucaoCadastrarWidget;
import 'package:flutter/material.dart';

class ExecucaoCadastrarModel extends FlutterFlowModel<ExecucaoCadastrarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for UI_execucao component.
  late UIExecucaoModel uIExecucaoModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    uIExecucaoModel = createModel(context, () => UIExecucaoModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    uIExecucaoModel.dispose();
  }
}
