import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/side_bar_nav_adm/side_bar_nav_adm_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'estoque_marcas_adm_widget.dart' show EstoqueMarcasAdmWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EstoqueMarcasAdmModel extends FlutterFlowModel<EstoqueMarcasAdmWidget> {
  ///  Local state fields for this page.

  List<DtEstoqueADMStruct> estoque = [];
  void addToEstoque(DtEstoqueADMStruct item) => estoque.add(item);
  void removeFromEstoque(DtEstoqueADMStruct item) => estoque.remove(item);
  void removeAtIndexFromEstoque(int index) => estoque.removeAt(index);
  void insertAtIndexInEstoque(int index, DtEstoqueADMStruct item) =>
      estoque.insert(index, item);
  void updateEstoqueAtIndex(int index, Function(DtEstoqueADMStruct) updateFn) =>
      estoque[index] = updateFn(estoque[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (view estoque ADM)] action in estoqueMarcasAdm widget.
  ApiCallResponse? estoqueResultADM;
  // Model for sideBarNavAdm component.
  late SideBarNavAdmModel sideBarNavAdmModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<DtEstoqueADMStruct>();

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
