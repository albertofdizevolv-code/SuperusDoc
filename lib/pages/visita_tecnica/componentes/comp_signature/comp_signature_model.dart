import '/flutter_flow/flutter_flow_util.dart';
import 'comp_signature_widget.dart' show CompSignatureWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class CompSignatureModel extends FlutterFlowModel<CompSignatureWidget> {
  ///  Local state fields for this component.

  bool salvar = false;

  int teste = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Signature widget.
  SignatureController? signatureController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
