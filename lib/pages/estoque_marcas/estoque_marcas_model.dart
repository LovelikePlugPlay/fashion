import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'estoque_marcas_widget.dart' show EstoqueMarcasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EstoqueMarcasModel extends FlutterFlowModel<EstoqueMarcasWidget> {
  ///  Local state fields for this page.

  List<DtEstoqueStruct> estoque = [];
  void addToEstoque(DtEstoqueStruct item) => estoque.add(item);
  void removeFromEstoque(DtEstoqueStruct item) => estoque.remove(item);
  void removeAtIndexFromEstoque(int index) => estoque.removeAt(index);
  void insertAtIndexInEstoque(int index, DtEstoqueStruct item) =>
      estoque.insert(index, item);
  void updateEstoqueAtIndex(int index, Function(DtEstoqueStruct) updateFn) =>
      estoque[index] = updateFn(estoque[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (view estoque)] action in estoqueMarcas widget.
  ApiCallResponse? estoqueResult;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtEstoqueStruct>();

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
