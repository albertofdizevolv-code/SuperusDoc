import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'u_i_nova_ssa_widget.dart' show UINovaSsaWidget;
import 'package:flutter/material.dart';

class UINovaSsaModel extends FlutterFlowModel<UINovaSsaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Projeto widget.
  int? projetoValue;
  FormFieldController<int>? projetoValueController;
  // State field(s) for codCentroCusto widget.
  FocusNode? codCentroCustoFocusNode;
  TextEditingController? codCentroCustoTextController;
  String? Function(BuildContext, String?)?
      codCentroCustoTextControllerValidator;
  // State field(s) for NumContrato widget.
  FocusNode? numContratoFocusNode;
  TextEditingController? numContratoTextController;
  String? Function(BuildContext, String?)? numContratoTextControllerValidator;
  // State field(s) for Cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for SubProjeto widget.
  int? subProjetoValue;
  FormFieldController<int>? subProjetoValueController;
  // State field(s) for SSA widget.
  FocusNode? ssaFocusNode;
  TextEditingController? ssaTextController;
  String? Function(BuildContext, String?)? ssaTextControllerValidator;
  // State field(s) for DataAbertura widget.
  FocusNode? dataAberturaFocusNode;
  TextEditingController? dataAberturaTextController;
  String? Function(BuildContext, String?)? dataAberturaTextControllerValidator;
  // State field(s) for DropDownResponsavelAbertura widget.
  int? dropDownResponsavelAberturaValue;
  FormFieldController<int>? dropDownResponsavelAberturaValueController;
  // State field(s) for TipoServico widget.
  String? tipoServicoValue;
  FormFieldController<String>? tipoServicoValueController;
  // State field(s) for clienteSolicitante widget.
  int? clienteSolicitanteValue;
  FormFieldController<int>? clienteSolicitanteValueController;
  // State field(s) for OrdemManutencao widget.
  FocusNode? ordemManutencaoFocusNode;
  TextEditingController? ordemManutencaoTextController;
  String? Function(BuildContext, String?)?
      ordemManutencaoTextControllerValidator;
  // State field(s) for ProgramadorCliente widget.
  int? programadorClienteValue;
  FormFieldController<int>? programadorClienteValueController;
  // State field(s) for TipoManutencao widget.
  String? tipoManutencaoValue;
  FormFieldController<String>? tipoManutencaoValueController;
  // State field(s) for CentroCustoCliente widget.
  FocusNode? centroCustoClienteFocusNode;
  TextEditingController? centroCustoClienteTextController;
  String? Function(BuildContext, String?)?
      centroCustoClienteTextControllerValidator;
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
  // State field(s) for Observacoes widget.
  FocusNode? observacoesFocusNode;
  TextEditingController? observacoesTextController;
  String? Function(BuildContext, String?)? observacoesTextControllerValidator;
  // State field(s) for ObservacoesGeraisSSA widget.
  FocusNode? observacoesGeraisSSAFocusNode;
  TextEditingController? observacoesGeraisSSATextController;
  String? Function(BuildContext, String?)?
      observacoesGeraisSSATextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in btn-confirm widget.
  SsaRow? outSSA;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codCentroCustoFocusNode?.dispose();
    codCentroCustoTextController?.dispose();

    numContratoFocusNode?.dispose();
    numContratoTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    ssaFocusNode?.dispose();
    ssaTextController?.dispose();

    dataAberturaFocusNode?.dispose();
    dataAberturaTextController?.dispose();

    ordemManutencaoFocusNode?.dispose();
    ordemManutencaoTextController?.dispose();

    centroCustoClienteFocusNode?.dispose();
    centroCustoClienteTextController?.dispose();

    localFocusNode?.dispose();
    localTextController?.dispose();

    tagFocusNode?.dispose();
    tagTextController?.dispose();

    atividadeRealizadaFocusNode?.dispose();
    atividadeRealizadaTextController?.dispose();

    observacoesFocusNode?.dispose();
    observacoesTextController?.dispose();

    observacoesGeraisSSAFocusNode?.dispose();
    observacoesGeraisSSATextController?.dispose();
  }
}
