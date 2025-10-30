import '/flutter_flow/flutter_flow_util.dart';
import 'registro_de_vista_widget.dart' show RegistroDeVistaWidget;
import 'package:flutter/material.dart';

class RegistroDeVistaModel extends FlutterFlowModel<RegistroDeVistaWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // State field(s) for ResponsavelpelaVisita widget.
  FocusNode? responsavelpelaVisitaFocusNode;
  TextEditingController? responsavelpelaVisitaTextController;
  String? Function(BuildContext, String?)?
      responsavelpelaVisitaTextControllerValidator;
  // State field(s) for ResponsaveldoCliente widget.
  FocusNode? responsaveldoClienteFocusNode;
  TextEditingController? responsaveldoClienteTextController;
  String? Function(BuildContext, String?)?
      responsaveldoClienteTextControllerValidator;
  // State field(s) for ContatoResponsavelCliente widget.
  FocusNode? contatoResponsavelClienteFocusNode;
  TextEditingController? contatoResponsavelClienteTextController;
  String? Function(BuildContext, String?)?
      contatoResponsavelClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    responsavelpelaVisitaFocusNode?.dispose();
    responsavelpelaVisitaTextController?.dispose();

    responsaveldoClienteFocusNode?.dispose();
    responsaveldoClienteTextController?.dispose();

    contatoResponsavelClienteFocusNode?.dispose();
    contatoResponsavelClienteTextController?.dispose();
  }
}
