import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/bottom_sheet_share_report/bottom_sheet_share_report_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blog_tab_item_model.dart';
export 'blog_tab_item_model.dart';

class BlogTabItemWidget extends StatefulWidget {
  const BlogTabItemWidget({Key? key}) : super(key: key);

  @override
  _BlogTabItemWidgetState createState() => _BlogTabItemWidgetState();
}

class _BlogTabItemWidgetState extends State<BlogTabItemWidget> {
  late BlogTabItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogTabItemModel());
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
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    'https://picsum.photos/seed/287/600',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acme Co.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).grey900,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          '23m ago',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).grey500,
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://picsum.photos/seed/167/600',
                width: double.infinity,
                height: 191.0,
                fit: BoxFit.cover,
              ),
            ),
            RichText(
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'ASD In the News: Read the January 26th Gulf News story about launching our Early Learning Program at a challenging time:  frd ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).grey700,
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  TextSpan(
                    text: 'Read more...',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).secondary500,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  FFIcons.klike,
                  color: FlutterFlowTheme.of(context).grey500,
                  size: 20.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 48.0, 0.0),
                  child: Text(
                    '0',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Icon(
                  FFIcons.kmessages,
                  color: FlutterFlowTheme.of(context).grey500,
                  size: 20.0,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '0',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor:
                          FlutterFlowTheme.of(context).bottomSheetColor,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: BottomSheetShareReportWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Icon(
                    FFIcons.kmenudots,
                    color: FlutterFlowTheme.of(context).grey500,
                    size: 20.0,
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
