import '/authentication/add_skills/add_skills_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'filter_bottom_sheet_widget.dart' show FilterBottomSheetWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterBottomSheetModel extends FlutterFlowModel<FilterBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;
  // Model for AddSkills component.
  late AddSkillsModel addSkillsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    addSkillsModel = createModel(context, () => AddSkillsModel());
  }

  void dispose() {
    textController?.dispose();
    addSkillsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
