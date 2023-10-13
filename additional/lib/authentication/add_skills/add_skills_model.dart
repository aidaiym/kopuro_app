import '/authentication/student_skills/student_skills_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_skills_widget.dart' show AddSkillsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddSkillsModel extends FlutterFlowModel<AddSkillsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for StudentSkills component.
  late StudentSkillsModel studentSkillsModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    studentSkillsModel = createModel(context, () => StudentSkillsModel());
    textControllerValidator = _textControllerValidator;
  }

  void dispose() {
    studentSkillsModel.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
