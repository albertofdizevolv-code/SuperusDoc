import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/headtitle_button/headtitle_button_widget.dart';
import '/global_components/side_bar_menu_principal/side_bar_menu_principal_widget.dart';
import '/index.dart';
import 'visita_tecnica_agendar_widget.dart' show VisitaTecnicaAgendarWidget;
import 'package:flutter/material.dart';

class VisitaTecnicaAgendarModel
    extends FlutterFlowModel<VisitaTecnicaAgendarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBarMenuPrincipal component.
  late SideBarMenuPrincipalModel sideBarMenuPrincipalModel;
  // Model for headtitleButton component.
  late HeadtitleButtonModel headtitleButtonModel;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<SsaRow>? outSsa;

  @override
  void initState(BuildContext context) {
    sideBarMenuPrincipalModel =
        createModel(context, () => SideBarMenuPrincipalModel());
    headtitleButtonModel = createModel(context, () => HeadtitleButtonModel());
  }

  @override
  void dispose() {
    sideBarMenuPrincipalModel.dispose();
    headtitleButtonModel.dispose();
  }
}
