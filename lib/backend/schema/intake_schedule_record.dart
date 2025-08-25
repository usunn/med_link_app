import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntakeScheduleRecord extends FirestoreRecord {
  IntakeScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "filename" field.
  String? _filename;
  String get filename => _filename ?? '';
  bool hasFilename() => _filename != null;

  // "originRef" field.
  String? _originRef;
  String get originRef => _originRef ?? '';
  bool hasOriginRef() => _originRef != null;

  // "dateIntake" field.
  DateTime? _dateIntake;
  DateTime? get dateIntake => _dateIntake;
  bool hasDateIntake() => _dateIntake != null;

  // "anytime_1" field.
  bool? _anytime1;
  bool get anytime1 => _anytime1 ?? false;
  bool hasAnytime1() => _anytime1 != null;

  // "anytime_2" field.
  bool? _anytime2;
  bool get anytime2 => _anytime2 ?? false;
  bool hasAnytime2() => _anytime2 != null;

  // "anytime_3" field.
  bool? _anytime3;
  bool get anytime3 => _anytime3 ?? false;
  bool hasAnytime3() => _anytime3 != null;

  // "anytime_4" field.
  bool? _anytime4;
  bool get anytime4 => _anytime4 ?? false;
  bool hasAnytime4() => _anytime4 != null;

  // "alltaken_1" field.
  bool? _alltaken1;
  bool get alltaken1 => _alltaken1 ?? false;
  bool hasAlltaken1() => _alltaken1 != null;

  // "alltaken_2" field.
  bool? _alltaken2;
  bool get alltaken2 => _alltaken2 ?? false;
  bool hasAlltaken2() => _alltaken2 != null;

  // "alltaken_3" field.
  bool? _alltaken3;
  bool get alltaken3 => _alltaken3 ?? false;
  bool hasAlltaken3() => _alltaken3 != null;

  // "alltaken_4" field.
  bool? _alltaken4;
  bool get alltaken4 => _alltaken4 ?? false;
  bool hasAlltaken4() => _alltaken4 != null;

  // "user_uid" field.
  DocumentReference? _userUid;
  DocumentReference? get userUid => _userUid;
  bool hasUserUid() => _userUid != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _filename = snapshotData['filename'] as String?;
    _originRef = snapshotData['originRef'] as String?;
    _dateIntake = snapshotData['dateIntake'] as DateTime?;
    _anytime1 = snapshotData['anytime_1'] as bool?;
    _anytime2 = snapshotData['anytime_2'] as bool?;
    _anytime3 = snapshotData['anytime_3'] as bool?;
    _anytime4 = snapshotData['anytime_4'] as bool?;
    _alltaken1 = snapshotData['alltaken_1'] as bool?;
    _alltaken2 = snapshotData['alltaken_2'] as bool?;
    _alltaken3 = snapshotData['alltaken_3'] as bool?;
    _alltaken4 = snapshotData['alltaken_4'] as bool?;
    _userUid = snapshotData['user_uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('intakeSchedule');

  static Stream<IntakeScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IntakeScheduleRecord.fromSnapshot(s));

  static Future<IntakeScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IntakeScheduleRecord.fromSnapshot(s));

  static IntakeScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IntakeScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IntakeScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IntakeScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IntakeScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IntakeScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIntakeScheduleRecordData({
  DateTime? date,
  String? filename,
  String? originRef,
  DateTime? dateIntake,
  bool? anytime1,
  bool? anytime2,
  bool? anytime3,
  bool? anytime4,
  bool? alltaken1,
  bool? alltaken2,
  bool? alltaken3,
  bool? alltaken4,
  DocumentReference? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'filename': filename,
      'originRef': originRef,
      'dateIntake': dateIntake,
      'anytime_1': anytime1,
      'anytime_2': anytime2,
      'anytime_3': anytime3,
      'anytime_4': anytime4,
      'alltaken_1': alltaken1,
      'alltaken_2': alltaken2,
      'alltaken_3': alltaken3,
      'alltaken_4': alltaken4,
      'user_uid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class IntakeScheduleRecordDocumentEquality
    implements Equality<IntakeScheduleRecord> {
  const IntakeScheduleRecordDocumentEquality();

  @override
  bool equals(IntakeScheduleRecord? e1, IntakeScheduleRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.filename == e2?.filename &&
        e1?.originRef == e2?.originRef &&
        e1?.dateIntake == e2?.dateIntake &&
        e1?.anytime1 == e2?.anytime1 &&
        e1?.anytime2 == e2?.anytime2 &&
        e1?.anytime3 == e2?.anytime3 &&
        e1?.anytime4 == e2?.anytime4 &&
        e1?.alltaken1 == e2?.alltaken1 &&
        e1?.alltaken2 == e2?.alltaken2 &&
        e1?.alltaken3 == e2?.alltaken3 &&
        e1?.alltaken4 == e2?.alltaken4 &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(IntakeScheduleRecord? e) => const ListEquality().hash([
        e?.date,
        e?.filename,
        e?.originRef,
        e?.dateIntake,
        e?.anytime1,
        e?.anytime2,
        e?.anytime3,
        e?.anytime4,
        e?.alltaken1,
        e?.alltaken2,
        e?.alltaken3,
        e?.alltaken4,
        e?.userUid
      ]);

  @override
  bool isValidKey(Object? o) => o is IntakeScheduleRecord;
}
