import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/home_tab_company_item/home_tab_company_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_tab_model.dart';
export 'home_tab_model.dart';

class HomeTabWidget extends StatefulWidget {
  const HomeTabWidget({Key? key}) : super(key: key);

  @override
  _HomeTabWidgetState createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget>
    with TickerProviderStateMixin {
  late HomeTabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeTabModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).grey200,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment(0.0, 0),
              child: TabBar(
                labelColor: FlutterFlowTheme.of(context).grey900,
                unselectedLabelColor: FlutterFlowTheme.of(context).grey500,
                labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                unselectedLabelStyle: TextStyle(),
                indicatorColor: FlutterFlowTheme.of(context).primary,
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                tabs: [
                  Tab(
                    text: 'Company',
                  ),
                  Tab(
                    text: 'Intern',
                  ),
                  Tab(
                    text: 'Alumnis',
                  ),
                ],
                controller: _model.tabBarController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _model.tabBarController,
                children: [
                  ListView(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.homeTabCompanyItemModel1,
                        updateCallback: () => setState(() {}),
                        child: HomeTabCompanyItemWidget(),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.homeTabCompanyItemModel2,
                        updateCallback: () => setState(() {}),
                        child: HomeTabCompanyItemWidget(),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  ListView(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    scrollDirection: Axis.vertical,
                    children: [
                      wrapWithModel(
                        model: _model.homeTabCompanyItemModel3,
                        updateCallback: () => setState(() {}),
                        child: HomeTabCompanyItemWidget(),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
