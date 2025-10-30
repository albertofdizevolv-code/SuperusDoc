import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/count_controler/count_controler_widget.dart';
import 'comp_listade_peas_widget.dart' show CompListadePeasWidget;
import 'package:flutter/material.dart';

class CompListadePeasModel extends FlutterFlowModel<CompListadePeasWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Text widget.
  List<VwEstoqueConsultaRow>? outEstoque2;
  // Models for countControler dynamic component.
  late FlutterFlowDynamicModels<CountControlerModel> countControlerModels;

  @override
  void initState(BuildContext context) {
    countControlerModels =
        FlutterFlowDynamicModels(() => CountControlerModel());
  }

  @override
  void dispose() {
    countControlerModels.dispose();
  }
}
