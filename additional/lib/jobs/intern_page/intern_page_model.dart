import '/components/nav_bar_widget.dart';
import '/components/set_ofskills_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/jobs/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import '/jobs/job_detail_bottom_sheet/job_detail_bottom_sheet_widget.dart';
import 'intern_page_widget.dart' show InternPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InternPageModel extends FlutterFlowModel<InternPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SetOfskills component.
  late SetOfskillsModel setOfskillsModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    setOfskillsModel = createModel(context, () => SetOfskillsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    setOfskillsModel.dispose();
    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
