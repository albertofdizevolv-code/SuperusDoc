import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/index.dart';
import 'execucao_home_widget.dart' show ExecucaoHomeWidget;
import 'package:flutter/material.dart';

class ExecucaoHomeModel extends FlutterFlowModel<ExecucaoHomeWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<VwTabelaHomeRow>>? execucaoHomeSupabaseStream;
  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  // State field(s) for Nova widget.
  final novaController = FlutterFlowDataTableController<VwTabelaHomeRow>();

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    headtitleButtonModel.dispose();
    novaController.dispose();
  }
}
