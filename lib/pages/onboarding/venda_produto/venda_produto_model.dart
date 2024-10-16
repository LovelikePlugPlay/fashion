import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav_adm/side_bar_nav_adm_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'venda_produto_widget.dart' show VendaProdutoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendaProdutoModel extends FlutterFlowModel<VendaProdutoWidget> {
  ///  Local state fields for this page.

  List<String> marcas = [];
  void addToMarcas(String item) => marcas.add(item);
  void removeFromMarcas(String item) => marcas.remove(item);
  void removeAtIndexFromMarcas(int index) => marcas.removeAt(index);
  void insertAtIndexInMarcas(int index, String item) =>
      marcas.insert(index, item);
  void updateMarcasAtIndex(int index, Function(String) updateFn) =>
      marcas[index] = updateFn(marcas[index]);

  String? uuid;

  String? sku;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Api Usuarios )] action in vendaProduto widget.
  ApiCallResponse? listaUsuarios;
  // Model for sideBarNavAdm component.
  late SideBarNavAdmModel sideBarNavAdmModel;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Marcas widget.
  String? marcasValue;
  FormFieldController<String>? marcasValueController;
  // Stores action output result for [Backend Call - API (Usuario Marca)] action in Marcas widget.
  ApiCallResponse? resultMarca;
  // State field(s) for categoria widget.
  FocusNode? categoriaFocusNode;
  TextEditingController? categoriaTextController;
  String? Function(BuildContext, String?)? categoriaTextControllerValidator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode;
  TextEditingController? skuTextController;
  String? Function(BuildContext, String?)? skuTextControllerValidator;
  // Stores action output result for [Backend Call - API (SKU Estoque)] action in sku widget.
  ApiCallResponse? skuResult;
  // State field(s) for codrefe widget.
  FocusNode? codrefeFocusNode;
  TextEditingController? codrefeTextController;
  String? Function(BuildContext, String?)? codrefeTextControllerValidator;
  // State field(s) for quantidade widget.
  FocusNode? quantidadeFocusNode;
  TextEditingController? quantidadeTextController;
  String? Function(BuildContext, String?)? quantidadeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarNavAdmModel = createModel(context, () => SideBarNavAdmModel());
  }

  @override
  void dispose() {
    sideBarNavAdmModel.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    categoriaFocusNode?.dispose();
    categoriaTextController?.dispose();

    skuFocusNode?.dispose();
    skuTextController?.dispose();

    codrefeFocusNode?.dispose();
    codrefeTextController?.dispose();

    quantidadeFocusNode?.dispose();
    quantidadeTextController?.dispose();
  }
}
