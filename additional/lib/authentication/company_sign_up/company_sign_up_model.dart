import '/auth/firebase_auth/auth_util.dart';
import '/authentication/bottom_sheet_industry/bottom_sheet_industry_widget.dart';
import '/authentication/bottom_sheet_schools/bottom_sheet_schools_widget.dart';
import '/authentication/upload_photo/upload_photo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'company_sign_up_widget.dart' show CompanySignUpWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CompanySignUpModel extends FlutterFlowModel<CompanySignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
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

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
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
            '^(?:[A-Za-z0-9_]+|https?://(www\\.)?facebook\\.com/[A-Za-z0-9_.-]+)/?\$')
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
            '^(?:[A-Za-z0-9_]+|https?://(www\\.)?instagram\\.com/[A-Za-z0-9_.-]+)/?\$')
        .hasMatch(val)) {
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
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
      return 'This is an error message.';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController8;
  final textFieldMask8 = MaskTextInputFormatter(mask: '+971-##-###-####');
  String? Function(BuildContext, String?)? textController8Validator;
  String? _textController8Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^\\d{9}\$').hasMatch(val)) {
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

  // State field(s) for TextField widget.
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // Stores action output result for [Custom Action - decrement] action in Icon widget.
  int? size;
  // Stores action output result for [Custom Action - decrement] action in Icon widget.
  int? desize;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    uploadPhotoModel = createModel(context, () => UploadPhotoModel());
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController4Validator = _textController4Validator;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
    textController7Validator = _textController7Validator;
    emailControllerValidator = _emailControllerValidator;
    textController8Validator = _textController8Validator;
    paswwordVisibility = false;
    paswwordControllerValidator = _paswwordControllerValidator;
    confPaswwordVisibility = false;
    confPaswwordControllerValidator = _confPaswwordControllerValidator;
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
    textController7?.dispose();
    emailController?.dispose();
    textController8?.dispose();
    paswwordController?.dispose();
    confPaswwordController?.dispose();
    textController10?.dispose();
    textController11?.dispose();
    textController12?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
