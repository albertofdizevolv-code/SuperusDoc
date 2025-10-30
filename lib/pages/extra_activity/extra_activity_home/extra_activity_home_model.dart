import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/index.dart';
import 'extra_activity_home_widget.dart' show ExtraActivityHomeWidget;
import 'package:flutter/material.dart';

class ExtraActivityHomeModel extends FlutterFlowModel<ExtraActivityHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for extra_activity_home.
  late SideBarMenuPrincipalModel extraActivityHomeModel;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // State field(s) for Nova widget.
  final novaController = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {
    extraActivityHomeModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
  }

  @override
  void dispose() {
    extraActivityHomeModel.dispose();
    headtitleButtonModel.dispose();
    novaController.dispose();
  }
}
