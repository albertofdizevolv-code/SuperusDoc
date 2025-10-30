import '/flutter_flow/flutter_flow_util.dart';
import 'password_recovery_code_widget.dart' show PasswordRecoveryCodeWidget;
import 'package:flutter/material.dart';

class PasswordRecoveryCodeModel
    extends FlutterFlowModel<PasswordRecoveryCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
  }
}
