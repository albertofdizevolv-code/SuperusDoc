import '/flutter_flow/flutter_flow_util.dart';
import 'popup_remover_execucao_widget.dart' show PopupRemoverExecucaoWidget;
import 'package:flutter/material.dart';

class PopupRemoverExecucaoModel
    extends FlutterFlowModel<PopupRemoverExecucaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_apagar widget.
  FocusNode? textFieldApagarFocusNode;
  TextEditingController? textFieldApagarTextController;
  String? Function(BuildContext, String?)?
      textFieldApagarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldApagarFocusNode?.dispose();
    textFieldApagarTextController?.dispose();
  }
}
