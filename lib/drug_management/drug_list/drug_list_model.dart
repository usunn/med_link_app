import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'drug_list_widget.dart' show DrugListWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrugListModel extends FlutterFlowModel<DrugListWidget> {
  ///  Local state fields for this page.

  List<String> drugManagementPageState = [];
  void addToDrugManagementPageState(String item) =>
      drugManagementPageState.add(item);
  void removeFromDrugManagementPageState(String item) =>
      drugManagementPageState.remove(item);
  void removeAtIndexFromDrugManagementPageState(int index) =>
      drugManagementPageState.removeAt(index);
  void insertAtIndexInDrugManagementPageState(int index, String item) =>
      drugManagementPageState.insert(index, item);
  void updateDrugManagementPageStateAtIndex(
          int index, Function(String) updateFn) =>
      drugManagementPageState[index] = updateFn(drugManagementPageState[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in DrugList widget.
  List<DrugManagementRecord>? resultFilenameList1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
