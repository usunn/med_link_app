// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrugManagementDetailStruct extends FFFirebaseStruct {
  DrugManagementDetailStruct({
    String? itemName,
    double? dose,
    int? frequency,
    int? duration,
    int? interval,
    bool? time1,
    bool? time2,
    bool? time3,
    bool? time4,
    String? itemSeq,
    String? prductType,
    String? bigPrdtImgUrl,
    String? itemIngrName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemName = itemName,
        _dose = dose,
        _frequency = frequency,
        _duration = duration,
        _interval = interval,
        _time1 = time1,
        _time2 = time2,
        _time3 = time3,
        _time4 = time4,
        _itemSeq = itemSeq,
        _prductType = prductType,
        _bigPrdtImgUrl = bigPrdtImgUrl,
        _itemIngrName = itemIngrName,
        super(firestoreUtilData);

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;

  bool hasItemName() => _itemName != null;

  // "dose" field.
  double? _dose;
  double get dose => _dose ?? 0.0;
  set dose(double? val) => _dose = val;

  void incrementDose(double amount) => dose = dose + amount;

  bool hasDose() => _dose != null;

  // "frequency" field.
  int? _frequency;
  int get frequency => _frequency ?? 0;
  set frequency(int? val) => _frequency = val;

  void incrementFrequency(int amount) => frequency = frequency + amount;

  bool hasFrequency() => _frequency != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "interval" field.
  int? _interval;
  int get interval => _interval ?? 0;
  set interval(int? val) => _interval = val;

  void incrementInterval(int amount) => interval = interval + amount;

  bool hasInterval() => _interval != null;

  // "time_1" field.
  bool? _time1;
  bool get time1 => _time1 ?? false;
  set time1(bool? val) => _time1 = val;

  bool hasTime1() => _time1 != null;

  // "time_2" field.
  bool? _time2;
  bool get time2 => _time2 ?? false;
  set time2(bool? val) => _time2 = val;

  bool hasTime2() => _time2 != null;

  // "time_3" field.
  bool? _time3;
  bool get time3 => _time3 ?? false;
  set time3(bool? val) => _time3 = val;

  bool hasTime3() => _time3 != null;

  // "time_4" field.
  bool? _time4;
  bool get time4 => _time4 ?? false;
  set time4(bool? val) => _time4 = val;

  bool hasTime4() => _time4 != null;

  // "item_seq" field.
  String? _itemSeq;
  String get itemSeq => _itemSeq ?? '';
  set itemSeq(String? val) => _itemSeq = val;

  bool hasItemSeq() => _itemSeq != null;

  // "prduct_type" field.
  String? _prductType;
  String get prductType => _prductType ?? '';
  set prductType(String? val) => _prductType = val;

  bool hasPrductType() => _prductType != null;

  // "big_prdt_img_url" field.
  String? _bigPrdtImgUrl;
  String get bigPrdtImgUrl => _bigPrdtImgUrl ?? '';
  set bigPrdtImgUrl(String? val) => _bigPrdtImgUrl = val;

  bool hasBigPrdtImgUrl() => _bigPrdtImgUrl != null;

  // "item_ingr_name" field.
  String? _itemIngrName;
  String get itemIngrName => _itemIngrName ?? '';
  set itemIngrName(String? val) => _itemIngrName = val;

  bool hasItemIngrName() => _itemIngrName != null;

  static DrugManagementDetailStruct fromMap(Map<String, dynamic> data) =>
      DrugManagementDetailStruct(
        itemName: data['item_name'] as String?,
        dose: castToType<double>(data['dose']),
        frequency: castToType<int>(data['frequency']),
        duration: castToType<int>(data['duration']),
        interval: castToType<int>(data['interval']),
        time1: data['time_1'] as bool?,
        time2: data['time_2'] as bool?,
        time3: data['time_3'] as bool?,
        time4: data['time_4'] as bool?,
        itemSeq: data['item_seq'] as String?,
        prductType: data['prduct_type'] as String?,
        bigPrdtImgUrl: data['big_prdt_img_url'] as String?,
        itemIngrName: data['item_ingr_name'] as String?,
      );

  static DrugManagementDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? DrugManagementDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item_name': _itemName,
        'dose': _dose,
        'frequency': _frequency,
        'duration': _duration,
        'interval': _interval,
        'time_1': _time1,
        'time_2': _time2,
        'time_3': _time3,
        'time_4': _time4,
        'item_seq': _itemSeq,
        'prduct_type': _prductType,
        'big_prdt_img_url': _bigPrdtImgUrl,
        'item_ingr_name': _itemIngrName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item_name': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'dose': serializeParam(
          _dose,
          ParamType.double,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.int,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'interval': serializeParam(
          _interval,
          ParamType.int,
        ),
        'time_1': serializeParam(
          _time1,
          ParamType.bool,
        ),
        'time_2': serializeParam(
          _time2,
          ParamType.bool,
        ),
        'time_3': serializeParam(
          _time3,
          ParamType.bool,
        ),
        'time_4': serializeParam(
          _time4,
          ParamType.bool,
        ),
        'item_seq': serializeParam(
          _itemSeq,
          ParamType.String,
        ),
        'prduct_type': serializeParam(
          _prductType,
          ParamType.String,
        ),
        'big_prdt_img_url': serializeParam(
          _bigPrdtImgUrl,
          ParamType.String,
        ),
        'item_ingr_name': serializeParam(
          _itemIngrName,
          ParamType.String,
        ),
      }.withoutNulls;

  static DrugManagementDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DrugManagementDetailStruct(
        itemName: deserializeParam(
          data['item_name'],
          ParamType.String,
          false,
        ),
        dose: deserializeParam(
          data['dose'],
          ParamType.double,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.int,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        interval: deserializeParam(
          data['interval'],
          ParamType.int,
          false,
        ),
        time1: deserializeParam(
          data['time_1'],
          ParamType.bool,
          false,
        ),
        time2: deserializeParam(
          data['time_2'],
          ParamType.bool,
          false,
        ),
        time3: deserializeParam(
          data['time_3'],
          ParamType.bool,
          false,
        ),
        time4: deserializeParam(
          data['time_4'],
          ParamType.bool,
          false,
        ),
        itemSeq: deserializeParam(
          data['item_seq'],
          ParamType.String,
          false,
        ),
        prductType: deserializeParam(
          data['prduct_type'],
          ParamType.String,
          false,
        ),
        bigPrdtImgUrl: deserializeParam(
          data['big_prdt_img_url'],
          ParamType.String,
          false,
        ),
        itemIngrName: deserializeParam(
          data['item_ingr_name'],
          ParamType.String,
          false,
        ),
      );

  static DrugManagementDetailStruct fromAlgoliaData(
          Map<String, dynamic> data) =>
      DrugManagementDetailStruct(
        itemName: convertAlgoliaParam(
          data['item_name'],
          ParamType.String,
          false,
        ),
        dose: convertAlgoliaParam(
          data['dose'],
          ParamType.double,
          false,
        ),
        frequency: convertAlgoliaParam(
          data['frequency'],
          ParamType.int,
          false,
        ),
        duration: convertAlgoliaParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        interval: convertAlgoliaParam(
          data['interval'],
          ParamType.int,
          false,
        ),
        time1: convertAlgoliaParam(
          data['time_1'],
          ParamType.bool,
          false,
        ),
        time2: convertAlgoliaParam(
          data['time_2'],
          ParamType.bool,
          false,
        ),
        time3: convertAlgoliaParam(
          data['time_3'],
          ParamType.bool,
          false,
        ),
        time4: convertAlgoliaParam(
          data['time_4'],
          ParamType.bool,
          false,
        ),
        itemSeq: convertAlgoliaParam(
          data['item_seq'],
          ParamType.String,
          false,
        ),
        prductType: convertAlgoliaParam(
          data['prduct_type'],
          ParamType.String,
          false,
        ),
        bigPrdtImgUrl: convertAlgoliaParam(
          data['big_prdt_img_url'],
          ParamType.String,
          false,
        ),
        itemIngrName: convertAlgoliaParam(
          data['item_ingr_name'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'DrugManagementDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DrugManagementDetailStruct &&
        itemName == other.itemName &&
        dose == other.dose &&
        frequency == other.frequency &&
        duration == other.duration &&
        interval == other.interval &&
        time1 == other.time1 &&
        time2 == other.time2 &&
        time3 == other.time3 &&
        time4 == other.time4 &&
        itemSeq == other.itemSeq &&
        prductType == other.prductType &&
        bigPrdtImgUrl == other.bigPrdtImgUrl &&
        itemIngrName == other.itemIngrName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        itemName,
        dose,
        frequency,
        duration,
        interval,
        time1,
        time2,
        time3,
        time4,
        itemSeq,
        prductType,
        bigPrdtImgUrl,
        itemIngrName
      ]);
}

DrugManagementDetailStruct createDrugManagementDetailStruct({
  String? itemName,
  double? dose,
  int? frequency,
  int? duration,
  int? interval,
  bool? time1,
  bool? time2,
  bool? time3,
  bool? time4,
  String? itemSeq,
  String? prductType,
  String? bigPrdtImgUrl,
  String? itemIngrName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DrugManagementDetailStruct(
      itemName: itemName,
      dose: dose,
      frequency: frequency,
      duration: duration,
      interval: interval,
      time1: time1,
      time2: time2,
      time3: time3,
      time4: time4,
      itemSeq: itemSeq,
      prductType: prductType,
      bigPrdtImgUrl: bigPrdtImgUrl,
      itemIngrName: itemIngrName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DrugManagementDetailStruct? updateDrugManagementDetailStruct(
  DrugManagementDetailStruct? drugManagementDetail, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    drugManagementDetail
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDrugManagementDetailStructData(
  Map<String, dynamic> firestoreData,
  DrugManagementDetailStruct? drugManagementDetail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (drugManagementDetail == null) {
    return;
  }
  if (drugManagementDetail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && drugManagementDetail.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final drugManagementDetailData =
      getDrugManagementDetailFirestoreData(drugManagementDetail, forFieldValue);
  final nestedData =
      drugManagementDetailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      drugManagementDetail.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDrugManagementDetailFirestoreData(
  DrugManagementDetailStruct? drugManagementDetail, [
  bool forFieldValue = false,
]) {
  if (drugManagementDetail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(drugManagementDetail.toMap());

  // Add any Firestore field values
  drugManagementDetail.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDrugManagementDetailListFirestoreData(
  List<DrugManagementDetailStruct>? drugManagementDetails,
) =>
    drugManagementDetails
        ?.map((e) => getDrugManagementDetailFirestoreData(e, true))
        .toList() ??
    [];
