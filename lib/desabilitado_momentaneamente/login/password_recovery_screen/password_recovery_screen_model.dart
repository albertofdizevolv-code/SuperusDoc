import '/flutter_flow/flutter_flow_util.dart';
import 'password_recovery_screen_widget.dart' show PasswordRecoveryScreenWidget;
import 'package:flutter/material.dart';

class PasswordRecoveryScreenModel
    extends FlutterFlowModel<PasswordRecoveryScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
