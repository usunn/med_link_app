import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HealthHistoryRecord extends FirestoreRecord {
  HealthHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "diseaseCode" field.
  String? _diseaseCode;
  String get diseaseCode => _diseaseCode ?? '';
  bool hasDiseaseCode() => _diseaseCode != null;

  // "diseaseName" field.
  String? _diseaseName;
  String get diseaseName => _diseaseName ?? '';
  bool hasDiseaseName() => _diseaseName != null;

  // "user_uid" field.
  DocumentReference? _userUid;
  DocumentReference? get userUid => _userUid;
  bool hasUserUid() => _userUid != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _diseaseCode = snapshotData['diseaseCode'] as String?;
    _diseaseName = snapshotData['diseaseName'] as String?;
    _userUid = snapshotData['user_uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('health_history');

  static Stream<HealthHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HealthHistoryRecord.fromSnapshot(s));

  static Future<HealthHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HealthHistoryRecord.fromSnapshot(s));

  static HealthHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HealthHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HealthHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HealthHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HealthHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HealthHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHealthHistoryRecordData({
  DateTime? date,
  String? diseaseCode,
  String? diseaseName,
  DocumentReference? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'diseaseCode': diseaseCode,
      'diseaseName': diseaseName,
      'user_uid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class HealthHistoryRecordDocumentEquality
    implements Equality<HealthHistoryRecord> {
  const HealthHistoryRecordDocumentEquality();

  @override
  bool equals(HealthHistoryRecord? e1, HealthHistoryRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.diseaseCode == e2?.diseaseCode &&
        e1?.diseaseName == e2?.diseaseName &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(HealthHistoryRecord? e) => const ListEquality()
      .hash([e?.date, e?.diseaseCode, e?.diseaseName, e?.userUid]);

  @override
  bool isValidKey(Object? o) => o is HealthHistoryRecord;
}
