import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrugManagementDetailRecord extends FirestoreRecord {
  DrugManagementDetailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "dose" field.
  double? _dose;
  double get dose => _dose ?? 0.0;
  bool hasDose() => _dose != null;

  // "frequency" field.
  int? _frequency;
  int get frequency => _frequency ?? 0;
  bool hasFrequency() => _frequency != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "interval" field.
  int? _interval;
  int get interval => _interval ?? 0;
  bool hasInterval() => _interval != null;

  // "time_1" field.
  bool? _time1;
  bool get time1 => _time1 ?? false;
  bool hasTime1() => _time1 != null;

  // "time_2" field.
  bool? _time2;
  bool get time2 => _time2 ?? false;
  bool hasTime2() => _time2 != null;

  // "time_3" field.
  bool? _time3;
  bool get time3 => _time3 ?? false;
  bool hasTime3() => _time3 != null;

  // "time_4" field.
  bool? _time4;
  bool get time4 => _time4 ?? false;
  bool hasTime4() => _time4 != null;

  // "item_seq" field.
  String? _itemSeq;
  String get itemSeq => _itemSeq ?? '';
  bool hasItemSeq() => _itemSeq != null;

  // "prduct_type" field.
  String? _prductType;
  String get prductType => _prductType ?? '';
  bool hasPrductType() => _prductType != null;

  // "big_prdt_img_url" field.
  String? _bigPrdtImgUrl;
  String get bigPrdtImgUrl => _bigPrdtImgUrl ?? '';
  bool hasBigPrdtImgUrl() => _bigPrdtImgUrl != null;

  // "item_ingr_name" field.
  String? _itemIngrName;
  String get itemIngrName => _itemIngrName ?? '';
  bool hasItemIngrName() => _itemIngrName != null;

  // "user_uid" field.
  DocumentReference? _userUid;
  DocumentReference? get userUid => _userUid;
  bool hasUserUid() => _userUid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _itemName = snapshotData['item_name'] as String?;
    _dose = castToType<double>(snapshotData['dose']);
    _frequency = castToType<int>(snapshotData['frequency']);
    _duration = castToType<int>(snapshotData['duration']);
    _interval = castToType<int>(snapshotData['interval']);
    _time1 = snapshotData['time_1'] as bool?;
    _time2 = snapshotData['time_2'] as bool?;
    _time3 = snapshotData['time_3'] as bool?;
    _time4 = snapshotData['time_4'] as bool?;
    _itemSeq = snapshotData['item_seq'] as String?;
    _prductType = snapshotData['prduct_type'] as String?;
    _bigPrdtImgUrl = snapshotData['big_prdt_img_url'] as String?;
    _itemIngrName = snapshotData['item_ingr_name'] as String?;
    _userUid = snapshotData['user_uid'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('drugManagementDetail')
          : FirebaseFirestore.instance.collectionGroup('drugManagementDetail');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('drugManagementDetail').doc(id);

  static Stream<DrugManagementDetailRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DrugManagementDetailRecord.fromSnapshot(s));

  static Future<DrugManagementDetailRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DrugManagementDetailRecord.fromSnapshot(s));

  static DrugManagementDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DrugManagementDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DrugManagementDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DrugManagementDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DrugManagementDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DrugManagementDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDrugManagementDetailRecordData({
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
  DocumentReference? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item_name': itemName,
      'dose': dose,
      'frequency': frequency,
      'duration': duration,
      'interval': interval,
      'time_1': time1,
      'time_2': time2,
      'time_3': time3,
      'time_4': time4,
      'item_seq': itemSeq,
      'prduct_type': prductType,
      'big_prdt_img_url': bigPrdtImgUrl,
      'item_ingr_name': itemIngrName,
      'user_uid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class DrugManagementDetailRecordDocumentEquality
    implements Equality<DrugManagementDetailRecord> {
  const DrugManagementDetailRecordDocumentEquality();

  @override
  bool equals(DrugManagementDetailRecord? e1, DrugManagementDetailRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.dose == e2?.dose &&
        e1?.frequency == e2?.frequency &&
        e1?.duration == e2?.duration &&
        e1?.interval == e2?.interval &&
        e1?.time1 == e2?.time1 &&
        e1?.time2 == e2?.time2 &&
        e1?.time3 == e2?.time3 &&
        e1?.time4 == e2?.time4 &&
        e1?.itemSeq == e2?.itemSeq &&
        e1?.prductType == e2?.prductType &&
        e1?.bigPrdtImgUrl == e2?.bigPrdtImgUrl &&
        e1?.itemIngrName == e2?.itemIngrName &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(DrugManagementDetailRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.dose,
        e?.frequency,
        e?.duration,
        e?.interval,
        e?.time1,
        e?.time2,
        e?.time3,
        e?.time4,
        e?.itemSeq,
        e?.prductType,
        e?.bigPrdtImgUrl,
        e?.itemIngrName,
        e?.userUid
      ]);

  @override
  bool isValidKey(Object? o) => o is DrugManagementDetailRecord;
}
