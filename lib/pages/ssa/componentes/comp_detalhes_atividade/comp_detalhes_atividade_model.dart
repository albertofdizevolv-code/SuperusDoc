import '/flutter_flow/flutter_flow_util.dart';
import 'comp_detalhes_atividade_widget.dart' show CompDetalhesAtividadeWidget;
import 'package:flutter/material.dart';

class CompDetalhesAtividadeModel
    extends FlutterFlowModel<CompDetalhesAtividadeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Local widget.
  FocusNode? localFocusNode;
  TextEditingController? localTextController;
  String? Function(BuildContext, String?)? localTextControllerValidator;
  // State field(s) for Tag widget.
  FocusNode? tagFocusNode;
  TextEditingController? tagTextController;
  String? Function(BuildContext, String?)? tagTextControllerValidator;
  // State field(s) for AtividadeRealizada widget.
  FocusNode? atividadeRealizadaFocusNode;
  TextEditingController? atividadeRealizadaTextController;
  String? Function(BuildContext, String?)?
      atividadeRealizadaTextControllerValidator;
  // State field(s) for ObservacoesSSA widget.
  FocusNode? observacoesSSAFocusNode;
  TextEditingController? observacoesSSATextController;
  String? Function(BuildContext, String?)?
      observacoesSSATextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    localFocusNode?.dispose();
    localTextController?.dispose();

    tagFocusNode?.dispose();
    tagTextController?.dispose();

    atividadeRealizadaFocusNode?.dispose();
    atividadeRealizadaTextController?.dispose();

    observacoesSSAFocusNode?.dispose();
    observacoesSSATextController?.dispose();
  }
}
