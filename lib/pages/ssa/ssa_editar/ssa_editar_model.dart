import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/ssa/view/u_i_ssa/u_i_ssa_widget.dart';
import 'ssa_editar_widget.dart' show SsaEditarWidget;
import 'package:flutter/material.dart';

class SsaEditarModel extends FlutterFlowModel<SsaEditarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for scroll widget.
  ScrollController? scrollScrollController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for UI_Ssa component.
  late UISsaModel uISsaModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    scrollScrollController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    uISsaModel = createModel(context, () => UISsaModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    scrollScrollController?.dispose();
    headtitleButtonModel.dispose();
    uISsaModel.dispose();
  }
}
