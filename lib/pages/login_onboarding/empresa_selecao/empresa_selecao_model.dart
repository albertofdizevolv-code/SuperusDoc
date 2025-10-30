import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'empresa_selecao_widget.dart' show EmpresaSelecaoWidget;
import 'package:flutter/material.dart';

class EmpresaSelecaoModel extends FlutterFlowModel<EmpresaSelecaoWidget> {
  ///  Local state fields for this page.
  /// intens que vão compor a visita tecnica
  List<VisitaTecnicaItensRow> itens = [];
  void addToItens(VisitaTecnicaItensRow item) => itens.add(item);
  void removeFromItens(VisitaTecnicaItensRow item) => itens.remove(item);
  void removeAtIndexFromItens(int index) => itens.removeAt(index);
  void insertAtIndexInItens(int index, VisitaTecnicaItensRow item) =>
      itens.insert(index, item);
  void updateItensAtIndex(
          int index, Function(VisitaTecnicaItensRow) updateFn) =>
      itens[index] = updateFn(itens[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in EmpresaSelecao widget.
  List<VisitaTecnicaItensRow>? outItens;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
