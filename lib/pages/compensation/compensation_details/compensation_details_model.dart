import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/pages/compensation/compensation_details_component/compensation_details_component_widget.dart';
import 'compensation_details_widget.dart' show CompensationDetailsWidget;
import 'package:flutter/material.dart';

class CompensationDetailsModel
    extends FlutterFlowModel<CompensationDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // Model for compensation_details_Component component.
  late CompensationDetailsComponentModel compensationDetailsComponentModel;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    columnController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
    compensationDetailsComponentModel =
        createModel(context, () => CompensationDetailsComponentModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    columnController?.dispose();
    headtitleButtonModel.dispose();
    compensationDetailsComponentModel.dispose();
  }
}
