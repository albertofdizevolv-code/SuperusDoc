import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/material_collection/popup_confirm_conference/popup_confirm_conference_widget.dart';
import '/pages/visita_tecnica/componentes/comp_signature/comp_signature_widget.dart';
import 'material_collected_widget.dart' show MaterialCollectedWidget;
import 'package:flutter/material.dart';

class MaterialCollectedModel extends FlutterFlowModel<MaterialCollectedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // State field(s) for Nova widget.
  final novaController = FlutterFlowDataTableController<int>();
  // Model for Comp_Signature component.
  late CompSignatureModel compSignatureModel;
  // Model for popup_confirm_conference component.
  late PopupConfirmConferenceModel popupConfirmConferenceModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    compSignatureModel = createModel(context, () => CompSignatureModel());
    popupConfirmConferenceModel =
        createModel(context, () => PopupConfirmConferenceModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    headtitleButtonModel.dispose();
    novaController.dispose();
    compSignatureModel.dispose();
    popupConfirmConferenceModel.dispose();
  }
}
