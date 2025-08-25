import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'drug_search_detail_widget.dart' show DrugSearchDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrugSearchDetailModel extends FlutterFlowModel<DrugSearchDetailWidget> {
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

  dynamic detailData;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (DrugApprovalDetail)] action in DrugSearchDetail widget.
  ApiCallResponse? apiResult9nz;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
