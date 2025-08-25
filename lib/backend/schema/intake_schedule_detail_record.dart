import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntakeScheduleDetailRecord extends FirestoreRecord {
  IntakeScheduleDetailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "big_prdt_img_url" field.
  String? _bigPrdtImgUrl;
  String get bigPrdtImgUrl => _bigPrdtImgUrl ?? '';
  bool hasBigPrdtImgUrl() => _bigPrdtImgUrl != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "dose" field.
  double? _dose;
  double get dose => _dose ?? 0.0;
  bool hasDose() => _dose != null;

  // "item_ingr_name" field.
  String? _itemIngrName;
  String get itemIngrName => _itemIngrName ?? '';
  bool hasItemIngrName() => _itemIngrName != null;

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "item_seq" field.
  String? _itemSeq;
  String get itemSeq => _itemSeq ?? '';
  bool hasItemSeq() => _itemSeq != null;

  // "originRef" field.
  String? _originRef;
  String get originRef => _originRef ?? '';
  bool hasOriginRef() => _originRef != null;

  // "prduct_type" field.
  String? _prductType;
  String get prductType => _prductType ?? '';
  bool hasPrductType() => _prductType != null;

  // "taken_1" field.
  bool? _taken1;
  bool get taken1 => _taken1 ?? false;
  bool hasTaken1() => _taken1 != null;

  // "taken_2" field.
  bool? _taken2;
  bool get taken2 => _taken2 ?? false;
  bool hasTaken2() => _taken2 != null;

  // "taken_3" field.
  bool? _taken3;
  bool get taken3 => _taken3 ?? false;
  bool hasTaken3() => _taken3 != null;

  // "taken_4" field.
  bool? _taken4;
  bool get taken4 => _taken4 ?? false;
  bool hasTaken4() => _taken4 != null;

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

  // "user_uid" field.
  DocumentReference? _userUid;
  DocumentReference? get userUid => _userUid;
  bool hasUserUid() => _userUid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _bigPrdtImgUrl = snapshotData['big_prdt_img_url'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _dose = castToType<double>(snapshotData['dose']);
    _itemIngrName = snapshotData['item_ingr_name'] as String?;
    _itemName = snapshotData['item_name'] as String?;
    _itemSeq = snapshotData['item_seq'] as String?;
    _originRef = snapshotData['originRef'] as String?;
    _prductType = snapshotData['prduct_type'] as String?;
    _taken1 = snapshotData['taken_1'] as bool?;
    _taken2 = snapshotData['taken_2'] as bool?;
    _taken3 = snapshotData['taken_3'] as bool?;
    _taken4 = snapshotData['taken_4'] as bool?;
    _time1 = snapshotData['time_1'] as bool?;
    _time2 = snapshotData['time_2'] as bool?;
    _time3 = snapshotData['time_3'] as bool?;
    _time4 = snapshotData['time_4'] as bool?;
    _userUid = snapshotData['user_uid'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('intakeScheduleDetail')
          : FirebaseFirestore.instance.collectionGroup('intakeScheduleDetail');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('intakeScheduleDetail').doc(id);

  static Stream<IntakeScheduleDetailRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => IntakeScheduleDetailRecord.fromSnapshot(s));

  static Future<IntakeScheduleDetailRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IntakeScheduleDetailRecord.fromSnapshot(s));

  static IntakeScheduleDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IntakeScheduleDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IntakeScheduleDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IntakeScheduleDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IntakeScheduleDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IntakeScheduleDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIntakeScheduleDetailRecordData({
  String? bigPrdtImgUrl,
  DateTime? date,
  double? dose,
  String? itemIngrName,
  String? itemName,
  String? itemSeq,
  String? originRef,
  String? prductType,
  bool? taken1,
  bool? taken2,
  bool? taken3,
  bool? taken4,
  bool? time1,
  bool? time2,
  bool? time3,
  bool? time4,
  DocumentReference? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'big_prdt_img_url': bigPrdtImgUrl,
      'date': date,
      'dose': dose,
      'item_ingr_name': itemIngrName,
      'item_name': itemName,
      'item_seq': itemSeq,
      'originRef': originRef,
      'prduct_type': prductType,
      'taken_1': taken1,
      'taken_2': taken2,
      'taken_3': taken3,
      'taken_4': taken4,
      'time_1': time1,
      'time_2': time2,
      'time_3': time3,
      'time_4': time4,
      'user_uid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class IntakeScheduleDetailRecordDocumentEquality
    implements Equality<IntakeScheduleDetailRecord> {
  const IntakeScheduleDetailRecordDocumentEquality();

  @override
  bool equals(IntakeScheduleDetailRecord? e1, IntakeScheduleDetailRecord? e2) {
    return e1?.bigPrdtImgUrl == e2?.bigPrdtImgUrl &&
        e1?.date == e2?.date &&
        e1?.dose == e2?.dose &&
        e1?.itemIngrName == e2?.itemIngrName &&
        e1?.itemName == e2?.itemName &&
        e1?.itemSeq == e2?.itemSeq &&
        e1?.originRef == e2?.originRef &&
        e1?.prductType == e2?.prductType &&
        e1?.taken1 == e2?.taken1 &&
        e1?.taken2 == e2?.taken2 &&
        e1?.taken3 == e2?.taken3 &&
        e1?.taken4 == e2?.taken4 &&
        e1?.time1 == e2?.time1 &&
        e1?.time2 == e2?.time2 &&
        e1?.time3 == e2?.time3 &&
        e1?.time4 == e2?.time4 &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(IntakeScheduleDetailRecord? e) => const ListEquality().hash([
        e?.bigPrdtImgUrl,
        e?.date,
        e?.dose,
        e?.itemIngrName,
        e?.itemName,
        e?.itemSeq,
        e?.originRef,
        e?.prductType,
        e?.taken1,
        e?.taken2,
        e?.taken3,
        e?.taken4,
        e?.time1,
        e?.time2,
        e?.time3,
        e?.time4,
        e?.userUid
      ]);

  @override
  bool isValidKey(Object? o) => o is IntakeScheduleDetailRecord;
}
