import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DrugManagementDetailStruct> _drugManagementDetail = [];
  List<DrugManagementDetailStruct> get drugManagementDetail =>
      _drugManagementDetail;
  set drugManagementDetail(List<DrugManagementDetailStruct> value) {
    _drugManagementDetail = value;
  }

  void addToDrugManagementDetail(DrugManagementDetailStruct value) {
    drugManagementDetail.add(value);
  }

  void removeFromDrugManagementDetail(DrugManagementDetailStruct value) {
    drugManagementDetail.remove(value);
  }

  void removeAtIndexFromDrugManagementDetail(int index) {
    drugManagementDetail.removeAt(index);
  }

  void updateDrugManagementDetailAtIndex(
    int index,
    DrugManagementDetailStruct Function(DrugManagementDetailStruct) updateFn,
  ) {
    drugManagementDetail[index] = updateFn(_drugManagementDetail[index]);
  }

  void insertAtIndexInDrugManagementDetail(
      int index, DrugManagementDetailStruct value) {
    drugManagementDetail.insert(index, value);
  }

  String _searchItemName = '';
  String get searchItemName => _searchItemName;
  set searchItemName(String value) {
    _searchItemName = value;
  }

  String _searchItemSeq = '';
  String get searchItemSeq => _searchItemSeq;
  set searchItemSeq(String value) {
    _searchItemSeq = value;
  }

  String _searchPrductType = '';
  String get searchPrductType => _searchPrductType;
  set searchPrductType(String value) {
    _searchPrductType = value;
  }

  String _searchBigPrdtIMGurl = '';
  String get searchBigPrdtIMGurl => _searchBigPrdtIMGurl;
  set searchBigPrdtIMGurl(String value) {
    _searchBigPrdtIMGurl = value;
  }

  String _searchItemINGRname = '';
  String get searchItemINGRname => _searchItemINGRname;
  set searchItemINGRname(String value) {
    _searchItemINGRname = value;
  }

  DateTime? _intakeScheduleHistoryDate =
      DateTime.fromMillisecondsSinceEpoch(1748703600000);
  DateTime? get intakeScheduleHistoryDate => _intakeScheduleHistoryDate;
  set intakeScheduleHistoryDate(DateTime? value) {
    _intakeScheduleHistoryDate = value;
  }

  int _intakeScheduleNo = 1;
  int get intakeScheduleNo => _intakeScheduleNo;
  set intakeScheduleNo(int value) {
    _intakeScheduleNo = value;
  }

  String _drugpictureURL = '';
  String get drugpictureURL => _drugpictureURL;
  set drugpictureURL(String value) {
    _drugpictureURL = value;
  }
}
