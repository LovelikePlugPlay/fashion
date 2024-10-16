import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav_adm/side_bar_nav_adm_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_page_a_d_m_widget.dart' show ProfilePageADMWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageADMModel extends FlutterFlowModel<ProfilePageADMWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNavAdm component.
  late SideBarNavAdmModel sideBarNavAdmModel;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sideBarNavAdmModel = createModel(context, () => SideBarNavAdmModel());
  }

  @override
  void dispose() {
    sideBarNavAdmModel.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
