import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'material_collection_details_component_widget.dart'
    show MaterialCollectionDetailsComponentWidget;
import 'package:flutter/material.dart';

class MaterialCollectionDetailsComponentModel
    extends FlutterFlowModel<MaterialCollectionDetailsComponentWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 = FlutterFlowDataTableController<int>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 = FlutterFlowDataTableController<int>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController2.dispose();
  }
}
