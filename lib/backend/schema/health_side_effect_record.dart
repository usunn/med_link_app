import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HealthSideEffectRecord extends FirestoreRecord {
  HealthSideEffectRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "drugName" field.
  String? _drugName;
  String get drugName => _drugName ?? '';
  bool hasDrugName() => _drugName != null;

  // "sideEffectName" field.
  String? _sideEffectName;
  String get sideEffectName => _sideEffectName ?? '';
  bool hasSideEffectName() => _sideEffectName != null;

  // "user_uid" field.
  DocumentReference? _userUid;
  DocumentReference? get userUid => _userUid;
  bool hasUserUid() => _userUid != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _drugName = snapshotData['drugName'] as String?;
    _sideEffectName = snapshotData['sideEffectName'] as String?;
    _userUid = snapshotData['user_uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('health_sideEffect');

  static Stream<HealthSideEffectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HealthSideEffectRecord.fromSnapshot(s));

  static Future<HealthSideEffectRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HealthSideEffectRecord.fromSnapshot(s));

  static HealthSideEffectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HealthSideEffectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HealthSideEffectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HealthSideEffectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HealthSideEffectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HealthSideEffectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHealthSideEffectRecordData({
  DateTime? date,
  String? drugName,
  String? sideEffectName,
  DocumentReference? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'drugName': drugName,
      'sideEffectName': sideEffectName,
      'user_uid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class HealthSideEffectRecordDocumentEquality
    implements Equality<HealthSideEffectRecord> {
  const HealthSideEffectRecordDocumentEquality();

  @override
  bool equals(HealthSideEffectRecord? e1, HealthSideEffectRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.drugName == e2?.drugName &&
        e1?.sideEffectName == e2?.sideEffectName &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(HealthSideEffectRecord? e) => const ListEquality()
      .hash([e?.date, e?.drugName, e?.sideEffectName, e?.userUid]);

  @override
  bool isValidKey(Object? o) => o is HealthSideEffectRecord;
}
