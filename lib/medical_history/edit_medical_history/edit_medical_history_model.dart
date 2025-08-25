import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_medical_history_widget.dart' show EditMedicalHistoryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditMedicalHistoryModel
    extends FlutterFlowModel<EditMedicalHistoryWidget> {
  ///  Local state fields for this page.

  double? pageheight;

  double? pageweight;

  double? pagebmi;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Edit_MedicalHistory widget.
  UserRecord? resultb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
