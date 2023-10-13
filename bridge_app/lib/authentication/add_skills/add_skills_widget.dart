import '/authentication/student_skills/student_skills_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_skills_model.dart';
export 'add_skills_model.dart';

class AddSkillsWidget extends StatefulWidget {
  const AddSkillsWidget({Key? key}) : super(key: key);

  @override
  _AddSkillsWidgetState createState() => _AddSkillsWidgetState();
}

class _AddSkillsWidgetState extends State<AddSkillsWidget> {
  late AddSkillsModel _model;
  List<String> skillSuggestions = [];
  bool isHovered = false;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddSkillsModel());
    _model.textController = TextEditingController();
    _model.textController!.addListener(_updateSuggestions);
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  void _updateSuggestions() async {
    final searchText = _model.textController.text.toLowerCase();
    print(searchText);

    final querySnapshot =
        await FirebaseFirestore.instance.collection('users').get();

    final allSkills = querySnapshot.docs
        .map((doc) {
          final data = doc.data() as Map<String, dynamic>;

          if (data.containsKey('student_profile')) {
            final studentProfile =
                data['student_profile'] as Map<String, dynamic>;
            if (studentProfile.containsKey('set_of_skills')) {
              final skills = studentProfile['set_of_skills'] as List<dynamic>;

              return skills
                  .map((skill) => skill.toString())
                  .where((skill) => skill.toLowerCase().startsWith(searchText))
                  .toList();
            }
          }
          return <String>[]; // Return an empty list if any of the nested fields doesn't exist
        })
        .expand((skills) => skills)
        .take(2) // Limit to 2 suggestions
        .toList();

    setState(() {
      skillSuggestions = allSkills;
    });

    print(skillSuggestions);
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (FFAppState().studentSkills.length > 10) {
      Navigator.of(context).pop();
      Navigator.of(context).pop();

      return SizedBox();
    } else {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (skillSuggestions.isNotEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffEAECF0),
                        width: 1,
                      ),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: skillSuggestions.length,
                      itemBuilder: (context, index) {
                        final suggestion = skillSuggestions[index];
                        return MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              isHovered = true;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              isHovered = false;
                            });
                          },
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                skillSuggestions = [];
                              });
                              FFAppState().addToStudentSkills(suggestion);
                            },
                            child: Container(
                              padding: EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                color: isHovered
                                    ? Color(0xffF9FAFB)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Text(
                                suggestion,
                                style: TextStyle(
                                  color: Color(0xff101828),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).grey200,
                    width: 1.0,
                  ),
                ),
                child: Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    if (FFAppState().studentSkills.length != 0)
                      wrapWithModel(
                        model: _model.studentSkillsModel,
                        updateCallback: () => setState(() {}),
                        child: StudentSkillsWidget(
                          parameter1: FFAppState().studentSkills,
                        ),
                      ),
                    if (FFAppState().studentSkills.length < 10)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 6.0, 0.0, 6.0),
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController',
                                        Duration(milliseconds: 10),
                                        () => setState(() {}),
                                      ),
                                      autofillHints: [AutofillHints.email],
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Add skills... ',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grey700,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).grey50,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 14.0, 16.0, 14.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .grey700,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      maxLines: null,
                                      minLines: 1,
                                      maxLength: 30,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => _model.checkboxValue = newValue!);
                                if (newValue!) {
                                  _model.updatePage(() {
                                    FFAppState().addToStudentSkills(
                                        _model.textController.text);
                                  });
                                  setState(() {
                                    _model.textController?.clear();
                                  });
                                  setState(() {
                                    _model.checkboxValue = false;
                                  });
                                }
                              },
                              activeColor:
                                  FlutterFlowTheme.of(context).primary200,
                              checkColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
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
}
