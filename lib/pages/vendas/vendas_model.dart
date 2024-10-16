import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'vendas_widget.dart' show VendasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendasModel extends FlutterFlowModel<VendasWidget> {
  ///  Local state fields for this page.

  List<DtVendasStruct> vendas = [];
  void addToVendas(DtVendasStruct item) => vendas.add(item);
  void removeFromVendas(DtVendasStruct item) => vendas.remove(item);
  void removeAtIndexFromVendas(int index) => vendas.removeAt(index);
  void insertAtIndexInVendas(int index, DtVendasStruct item) =>
      vendas.insert(index, item);
  void updateVendasAtIndex(int index, Function(DtVendasStruct) updateFn) =>
      vendas[index] = updateFn(vendas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Vendas)] action in vendas widget.
  ApiCallResponse? vendasResult;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtVendasStruct>();

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    paginatedDataTableController.dispose();
  }
}
