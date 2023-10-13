import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_acc_type_model.dart';
export 'choose_acc_type_model.dart';

class ChooseAccTypeWidget extends StatefulWidget {
  const ChooseAccTypeWidget({Key? key}) : super(key: key);

  @override
  _ChooseAccTypeWidgetState createState() => _ChooseAccTypeWidgetState();
}

class _ChooseAccTypeWidgetState extends State<ChooseAccTypeWidget> {
  late ChooseAccTypeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseAccTypeModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              FFIcons.kpaperclip,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/background.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose  \nAccount Type',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Signate Grotesk 900',
                        color: FlutterFlowTheme.of(context).baseWhite,
                        fontSize: 48.0,
                        fontWeight: FontWeight.w900,
                        useGoogleFonts: false,
                        lineHeight: 1.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Text(
                    'Are you an event venue owner or just a user?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).baseWhite,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Spacer(flex: 4),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('StudentSignUp');
                  },
                  text: 'I’m Student 👨‍🎓',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 61.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 21.0, 24.0, 21.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).baseWhite,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).grey900,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(100.0),
                    hoverColor: FlutterFlowTheme.of(context).grey900,
                    hoverTextColor: FlutterFlowTheme.of(context).baseWhite,
                    hoverElevation: 0.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('CompanySignUp');
                    },
                    text: 'I’m Company owner 🚀',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 61.0,
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 21.0, 24.0, 21.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).baseWhite,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).grey900,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(100.0),
                      hoverColor: FlutterFlowTheme.of(context).grey900,
                      hoverTextColor: FlutterFlowTheme.of(context).baseWhite,
                      hoverElevation: 0.0,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
