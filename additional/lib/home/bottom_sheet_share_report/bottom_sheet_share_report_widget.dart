import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_share_report_model.dart';
export 'bottom_sheet_share_report_model.dart';

class BottomSheetShareReportWidget extends StatefulWidget {
  const BottomSheetShareReportWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetShareReportWidgetState createState() =>
      _BottomSheetShareReportWidgetState();
}

class _BottomSheetShareReportWidgetState
    extends State<BottomSheetShareReportWidget> {
  late BottomSheetShareReportModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetShareReportModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).grey200,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  FFIcons.kadd,
                  color: FlutterFlowTheme.of(context).primary400,
                  size: 20.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 0.0, 16.0),
                  child: Text(
                    'Share',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).grey700,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  FFIcons.kadd,
                  color: FlutterFlowTheme.of(context).primary400,
                  size: 20.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 0.0, 16.0),
                  child: Text(
                    'Report post',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).grey700,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
