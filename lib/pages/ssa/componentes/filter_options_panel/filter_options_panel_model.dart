import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_options_panel_widget.dart' show FilterOptionsPanelWidget;
import 'package:flutter/material.dart';

class FilterOptionsPanelModel
    extends FlutterFlowModel<FilterOptionsPanelWidget> {
  ///  Local state fields for this component.

  DateTime? datePicker;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Drop_area widget.
  String? dropAreaValue;
  FormFieldController<String>? dropAreaValueController;
  // State field(s) for Drop_status widget.
  String? dropStatusValue;
  FormFieldController<String>? dropStatusValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
