import '/auth/firebase_auth/auth_util.dart';
import '/authentication/add_skills/add_skills_widget.dart';
import '/authentication/bottom_sheet_class/bottom_sheet_class_widget.dart';
import '/authentication/bottom_sheet_schools/bottom_sheet_schools_widget.dart';
import '/authentication/student_skills/student_skills_widget.dart';
import '/authentication/upload_photo/upload_photo_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'student_sign_up_widget.dart' show StudentSignUpWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class StudentSignUpModel extends FlutterFlowModel<StudentSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for UploadPhoto component.
  late UploadPhotoModel uploadPhotoModel;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'Maximum 50 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'Maximum 50 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[A-Za-z]+\$').hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'Maximum 50 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Username must be unique';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(?:[A-Za-z0-9_]+|https?://(www\\.)?facebook\\.com/[A-Za-z0-9_.-]+)/?\$')
        .hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(?:[A-Za-z0-9_]+|https?://(www\\.)?instagram\\.com/[A-Za-z0-9_.-]+)/?\$')
        .hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(?:[A-Za-z0-9_]+|https?://(www\\.)?linkedin\\.com/(in|company)/[A-Za-z0-9_.-]+)/?\$')
        .hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Wrong email format';
    }
    return null;
  }

  // State field(s) for phoneNumber widget.
  TextEditingController? phoneNumberController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '+971-##-###-####');
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\+971\\d{9}\$').hasMatch(val)) {
      return 'Please enter a valid phone number starting with \'+971\' followed by 9 digits.';
    }
    return null;
  }

  // State field(s) for Paswword widget.
  TextEditingController? paswwordController;
  late bool paswwordVisibility;
  String? Function(BuildContext, String?)? paswwordControllerValidator;
  String? _paswwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Please enter a password that is at least 6 characters long.';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#\$%^&+=!]).{6,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 6 characters long and a combination of uppercase letters, lowercase letters, numbers, and symbols.';
    }
    return null;
  }

  // State field(s) for ConfPaswword widget.
  TextEditingController? confPaswwordController;
  late bool confPaswwordVisibility;
  String? Function(BuildContext, String?)? confPaswwordControllerValidator;
  String? _confPaswwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Please enter a password that is at least 6 characters long.';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#\$%^&+=!]).{6,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 6 characters long and a combination of uppercase letters, lowercase letters, numbers, and symbols.';
    }
    return null;
  }

  // Model for StudentSkills component.
  late StudentSkillsModel studentSkillsModel;
  // State field(s) for TextField widget.
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  String? _textController11Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    uploadPhotoModel = createModel(context, () => UploadPhotoModel());
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
    emailControllerValidator = _emailControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    paswwordVisibility = false;
    paswwordControllerValidator = _paswwordControllerValidator;
    confPaswwordVisibility = false;
    confPaswwordControllerValidator = _confPaswwordControllerValidator;
    studentSkillsModel = createModel(context, () => StudentSkillsModel());
    textController11Validator = _textController11Validator;
  }

  void dispose() {
    unfocusNode.dispose();
    uploadPhotoModel.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    emailController?.dispose();
    phoneNumberController?.dispose();
    paswwordController?.dispose();
    confPaswwordController?.dispose();
    studentSkillsModel.dispose();
    textController11?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
