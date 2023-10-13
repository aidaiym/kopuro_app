import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/blog_tab_item/blog_tab_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blog_tab_model.dart';
export 'blog_tab_model.dart';

class BlogTabWidget extends StatefulWidget {
  const BlogTabWidget({Key? key}) : super(key: key);

  @override
  _BlogTabWidgetState createState() => _BlogTabWidgetState();
}

class _BlogTabWidgetState extends State<BlogTabWidget> {
  late BlogTabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogTabModel());
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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).grey100,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          scrollDirection: Axis.vertical,
          children: [
            wrapWithModel(
              model: _model.blogTabItemModel,
              updateCallback: () => setState(() {}),
              child: BlogTabItemWidget(),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
