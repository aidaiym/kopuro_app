import '/components/set_ofskills_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'job_detail_bottom_sheet_widget.dart' show JobDetailBottomSheetWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobDetailBottomSheetModel
    extends FlutterFlowModel<JobDetailBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SetOfskills component.
  late SetOfskillsModel setOfskillsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    setOfskillsModel = createModel(context, () => SetOfskillsModel());
  }

  void dispose() {
    setOfskillsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
