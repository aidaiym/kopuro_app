import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/home_tab_company_item/home_tab_company_item_widget.dart';
import 'home_tab_widget.dart' show HomeTabWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeTabModel extends FlutterFlowModel<HomeTabWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for HomeTabCompanyItem component.
  late HomeTabCompanyItemModel homeTabCompanyItemModel1;
  // Model for HomeTabCompanyItem component.
  late HomeTabCompanyItemModel homeTabCompanyItemModel2;
  // Model for HomeTabCompanyItem component.
  late HomeTabCompanyItemModel homeTabCompanyItemModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    homeTabCompanyItemModel1 =
        createModel(context, () => HomeTabCompanyItemModel());
    homeTabCompanyItemModel2 =
        createModel(context, () => HomeTabCompanyItemModel());
    homeTabCompanyItemModel3 =
        createModel(context, () => HomeTabCompanyItemModel());
  }

  void dispose() {
    tabBarController?.dispose();
    homeTabCompanyItemModel1.dispose();
    homeTabCompanyItemModel2.dispose();
    homeTabCompanyItemModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
