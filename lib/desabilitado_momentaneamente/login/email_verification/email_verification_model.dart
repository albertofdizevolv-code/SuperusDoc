import '/flutter_flow/flutter_flow_util.dart';
import 'email_verification_widget.dart' show EmailVerificationWidget;
import 'package:flutter/material.dart';

class EmailVerificationModel extends FlutterFlowModel<EmailVerificationWidget> {
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
