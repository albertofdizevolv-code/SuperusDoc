import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/ssa/view/u_i_nova_ssa/u_i_nova_ssa_widget.dart';
import 'ssa_cadastrar_widget.dart' show SsaCadastrarWidget;
import 'package:flutter/material.dart';

class SsaCadastrarModel extends FlutterFlowModel<SsaCadastrarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for UI_nova_ssa component.
  late UINovaSsaModel uINovaSsaModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    uINovaSsaModel = createModel(context, () => UINovaSsaModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    uINovaSsaModel.dispose();
  }
}
