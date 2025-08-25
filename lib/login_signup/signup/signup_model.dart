import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for password_check widget.
  FocusNode? passwordCheckFocusNode;
  TextEditingController? passwordCheckTextController;
  late bool passwordCheckVisibility;
  String? Function(BuildContext, String?)? passwordCheckTextControllerValidator;
  // State field(s) for user_name widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCheckVisibility = false;
  }

  @override
  void dispose() {
    idFocusNode?.dispose();
    idTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordCheckFocusNode?.dispose();
    passwordCheckTextController?.dispose();

    userNameFocusNode?.dispose();
    userNameTextController?.dispose();
  }
}
