import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/side_bar_nav_adm/side_bar_nav_adm_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'vendas_adm_widget.dart' show VendasAdmWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendasAdmModel extends FlutterFlowModel<VendasAdmWidget> {
  ///  Local state fields for this page.

  List<DtVendasADMStruct> vendas = [];
  void addToVendas(DtVendasADMStruct item) => vendas.add(item);
  void removeFromVendas(DtVendasADMStruct item) => vendas.remove(item);
  void removeAtIndexFromVendas(int index) => vendas.removeAt(index);
  void insertAtIndexInVendas(int index, DtVendasADMStruct item) =>
      vendas.insert(index, item);
  void updateVendasAtIndex(int index, Function(DtVendasADMStruct) updateFn) =>
      vendas[index] = updateFn(vendas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Vendas ADM)] action in vendasAdm widget.
  ApiCallResponse? vendasResultADM;
  // Model for sideBarNavAdm component.
  late SideBarNavAdmModel sideBarNavAdmModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtVendasADMStruct>();

  @override
  void initState(BuildContext context) {
    sideBarNavAdmModel = createModel(context, () => SideBarNavAdmModel());
  }

  @override
  void dispose() {
    sideBarNavAdmModel.dispose();
    paginatedDataTableController.dispose();
  }
}
