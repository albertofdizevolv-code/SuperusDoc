import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import 'inventory_return_material_widget.dart'
    show InventoryReturnMaterialWidget;
import 'package:flutter/material.dart';

class InventoryReturnMaterialModel
    extends FlutterFlowModel<InventoryReturnMaterialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // State field(s) for Nova widget.
  final novaController = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    columnController = ScrollController();
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    columnController?.dispose();
    headtitleButtonModel.dispose();
    novaController.dispose();
  }
}
