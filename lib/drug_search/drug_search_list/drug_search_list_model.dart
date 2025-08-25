import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'drug_search_list_widget.dart' show DrugSearchListWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrugSearchListModel extends FlutterFlowModel<DrugSearchListWidget> {
  ///  Local state fields for this page.

  int? pageno = 1;

  List<dynamic> searchResult = [];
  void addToSearchResult(dynamic item) => searchResult.add(item);
  void removeFromSearchResult(dynamic item) => searchResult.remove(item);
  void removeAtIndexFromSearchResult(int index) => searchResult.removeAt(index);
  void insertAtIndexInSearchResult(int index, dynamic item) =>
      searchResult.insert(index, item);
  void updateSearchResultAtIndex(int index, Function(dynamic) updateFn) =>
      searchResult[index] = updateFn(searchResult[index]);

  dynamic searchTotalCount;

  bool searchBoolean = false;

  String? itemseq;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (DrugApprovalList)] action in TextField widget.
  ApiCallResponse? apiResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (DrugApprovalList)] action in TextField widget.
  ApiCallResponse? apiResultb;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (DrugApprovalList)] action in TextField widget.
  ApiCallResponse? apiResultc;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (DrugApprovalList)] action in TextField widget.
  ApiCallResponse? apiResultd;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Stores action output result for [Backend Call - API (DrugApprovalList)] action in Icon widget.
  ApiCallResponse? apiResultdecrease;
  // Stores action output result for [Backend Call - API (DrugApprovalList)] action in Icon widget.
  ApiCallResponse? apiResultIncrease;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    listViewController?.dispose();
  }
}
