import '/flutter_flow/flutter_flow_util.dart';
import 'comp_obs_geraisda_s_s_a_widget.dart' show CompObsGeraisdaSSAWidget;
import 'package:flutter/material.dart';

class CompObsGeraisdaSSAModel
    extends FlutterFlowModel<CompObsGeraisdaSSAWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ObservacoesGeraisSSA widget.
  FocusNode? observacoesGeraisSSAFocusNode;
  TextEditingController? observacoesGeraisSSATextController;
  String? Function(BuildContext, String?)?
      observacoesGeraisSSATextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    observacoesGeraisSSAFocusNode?.dispose();
    observacoesGeraisSSATextController?.dispose();
  }
}
