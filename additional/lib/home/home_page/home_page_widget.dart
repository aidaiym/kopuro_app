import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/blog_tab/blog_tab_widget.dart';
import '/home/home_tab/home_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).baseWhite,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 10.0,
                buttonSize: 36.0,
                fillColor: FlutterFlowTheme.of(context).grey100,
                icon: Icon(
                  FFIcons.kcalendar,
                  color: FlutterFlowTheme.of(context).grey700,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(1.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 10.0,
                  buttonSize: 36.0,
                  fillColor: FlutterFlowTheme.of(context).grey100,
                  icon: Icon(
                    FFIcons.kmenu,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment(-1.0, 0),
                    child: FlutterFlowButtonTabBar(
                      useToggleButtonStyle: false,
                      isScrollable: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                      unselectedLabelStyle: TextStyle(),
                      labelColor: FlutterFlowTheme.of(context).baseWhite,
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).grey700,
                      backgroundColor: FlutterFlowTheme.of(context).primary400,
                      unselectedBackgroundColor:
                          FlutterFlowTheme.of(context).baseWhite,
                      unselectedBorderColor:
                          FlutterFlowTheme.of(context).grey200,
                      borderWidth: 1.0,
                      borderRadius: 55.0,
                      elevation: 0.0,
                      labelPadding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      buttonMargin:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 12.0, 6.0, 12.0),
                      tabs: [
                        Tab(
                          text: 'Home',
                        ),
                        Tab(
                          text: 'Articles',
                        ),
                        Tab(
                          text: 'Blogs',
                        ),
                        Tab(
                          text: 'Courses',
                        ),
                      ],
                      controller: _model.tabBarController,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        wrapWithModel(
                          model: _model.homeTabModel,
                          updateCallback: () => setState(() {}),
                          child: HomeTabWidget(),
                        ),
                        Container(),
                        wrapWithModel(
                          model: _model.blogTabModel,
                          updateCallback: () => setState(() {}),
                          child: BlogTabWidget(),
                        ),
                        Text(
                          'Tab View 4',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 32.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => setState(() {}),
                  child: NavBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
