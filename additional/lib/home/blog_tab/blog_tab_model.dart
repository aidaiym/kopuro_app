import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/blog_tab_item/blog_tab_item_widget.dart';
import 'blog_tab_widget.dart' show BlogTabWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogTabModel extends FlutterFlowModel<BlogTabWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BlogTabItem component.
  late BlogTabItemModel blogTabItemModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    blogTabItemModel = createModel(context, () => BlogTabItemModel());
  }

  void dispose() {
    blogTabItemModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
