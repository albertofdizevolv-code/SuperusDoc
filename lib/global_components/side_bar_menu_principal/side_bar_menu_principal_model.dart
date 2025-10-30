import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/card_menu/card_menu_widget.dart';
import 'side_bar_menu_principal_widget.dart' show SideBarMenuPrincipalWidget;
import 'package:flutter/material.dart';

class SideBarMenuPrincipalModel
    extends FlutterFlowModel<SideBarMenuPrincipalWidget> {
  ///  Local state fields for this component.

  Color active = Color(4282147146);

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for cardMenu_dashboard.
  late CardMenuModel cardMenuDashboardModel;
  // Model for cardMenu_ssa.
  late CardMenuModel cardMenuSsaModel;
  // Model for cardMenu_TechnicalVisit.
  late CardMenuModel cardMenuTechnicalVisitModel;
  // Model for cardMenu_scheduling.
  late CardMenuModel cardMenuSchedulingModel;
  // Model for cardMenu_execution.
  late CardMenuModel cardMenuExecutionModel;
  // Model for cardMenu_measurement.
  late CardMenuModel cardMenuMeasurementModel;
  // Model for cardMenu_approval.
  late CardMenuModel cardMenuApprovalModel;
  // Model for cardMenu_extraActivity.
  late CardMenuModel cardMenuExtraActivityModel;
  // Model for cardMenu_materialCollection.
  late CardMenuModel cardMenuMaterialCollectionModel;
  // Model for cardMenu_compensation.
  late CardMenuModel cardMenuCompensationModel;
  // Model for cardMenu_inventory.
  late CardMenuModel cardMenuInventoryModel;
  // Model for cardMenu_reports.
  late CardMenuModel cardMenuReportsModel;
  // Model for cardMenu_changeCompany.
  late CardMenuModel cardMenuChangeCompanyModel;

  @override
  void initState(BuildContext context) {
    cardMenuDashboardModel = createModel(context, () => CardMenuModel());
    cardMenuSsaModel = createModel(context, () => CardMenuModel());
    cardMenuTechnicalVisitModel = createModel(context, () => CardMenuModel());
    cardMenuSchedulingModel = createModel(context, () => CardMenuModel());
    cardMenuExecutionModel = createModel(context, () => CardMenuModel());
    cardMenuMeasurementModel = createModel(context, () => CardMenuModel());
    cardMenuApprovalModel = createModel(context, () => CardMenuModel());
    cardMenuExtraActivityModel = createModel(context, () => CardMenuModel());
    cardMenuMaterialCollectionModel =
        createModel(context, () => CardMenuModel());
    cardMenuCompensationModel = createModel(context, () => CardMenuModel());
    cardMenuInventoryModel = createModel(context, () => CardMenuModel());
    cardMenuReportsModel = createModel(context, () => CardMenuModel());
    cardMenuChangeCompanyModel = createModel(context, () => CardMenuModel());
  }

  @override
  void dispose() {
    cardMenuDashboardModel.dispose();
    cardMenuSsaModel.dispose();
    cardMenuTechnicalVisitModel.dispose();
    cardMenuSchedulingModel.dispose();
    cardMenuExecutionModel.dispose();
    cardMenuMeasurementModel.dispose();
    cardMenuApprovalModel.dispose();
    cardMenuExtraActivityModel.dispose();
    cardMenuMaterialCollectionModel.dispose();
    cardMenuCompensationModel.dispose();
    cardMenuInventoryModel.dispose();
    cardMenuReportsModel.dispose();
    cardMenuChangeCompanyModel.dispose();
  }
}
