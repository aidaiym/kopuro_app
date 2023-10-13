import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'choose_location_model.dart';
export 'choose_location_model.dart';

class ChooseLocationWidget extends StatefulWidget {
  const ChooseLocationWidget({Key? key}) : super(key: key);

  @override
  _ChooseLocationWidgetState createState() => _ChooseLocationWidgetState();
}

class _ChooseLocationWidgetState extends State<ChooseLocationWidget> {
  late ChooseLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseLocationModel());
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary400,
                          borderRadius: 20.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primary400,
                          icon: Icon(
                            FFIcons.kaltArrowLeft,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                      ),
                      FlutterFlowPlacePicker(
                        iOSGoogleMapsApiKey: '',
                        androidGoogleMapsApiKey: '',
                        webGoogleMapsApiKey: '',
                        onSelect: (place) async {
                          setState(() => _model.placePickerValue = place);
                        },
                        defaultText: 'Search',
                        icon: Icon(
                          FFIcons.ksearch,
                          color: FlutterFlowTheme.of(context).grey500,
                          size: 20.0,
                        ),
                        buttonOptions: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.75,
                          height: 44.0,
                          color: FlutterFlowTheme.of(context).grey50,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).grey500,
                                    fontSize: 14.0,
                                  ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).grey200,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 44.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 55.0,
                        buttonSize: 48.0,
                        fillColor: Color(0xFF6172F3),
                        icon: Icon(
                          Icons.my_location_outlined,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 16.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().companyLocation =
                                _model.placePickerValue.name;
                          });
                        },
                        text: 'Add Location',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 14.0, 20.0, 14.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(55.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
