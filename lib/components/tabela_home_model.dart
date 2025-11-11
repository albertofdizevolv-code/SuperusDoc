import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tabela_home_widget.dart' show TabelaHomeWidget;
import 'package:flutter/material.dart';

class TabelaHomeModel extends FlutterFlowModel<TabelaHomeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nova widget.
  final novaController = FlutterFlowDataTableController<VwTabelaHomeRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    novaController.dispose();
  }
}
