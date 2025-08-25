import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrugManagementRecord extends FirestoreRecord {
  DrugManagementRecord._(
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

  // "dateFinish" field.
  DateTime? _dateFinish;
  DateTime? get dateFinish => _dateFinish;
  bool hasDateFinish() => _dateFinish != null;

  // "user_uid" field.
  DocumentReference? _userUid;
  DocumentReference? get userUid => _userUid;
  bool hasUserUid() => _userUid != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _filename = snapshotData['filename'] as String?;
    _dateFinish = snapshotData['dateFinish'] as DateTime?;
    _userUid = snapshotData['user_uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drugManagement');

  static Stream<DrugManagementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DrugManagementRecord.fromSnapshot(s));

  static Future<DrugManagementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DrugManagementRecord.fromSnapshot(s));

  static DrugManagementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DrugManagementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DrugManagementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DrugManagementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DrugManagementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DrugManagementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDrugManagementRecordData({
  DateTime? date,
  String? filename,
  DateTime? dateFinish,
  DocumentReference? userUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'filename': filename,
      'dateFinish': dateFinish,
      'user_uid': userUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class DrugManagementRecordDocumentEquality
    implements Equality<DrugManagementRecord> {
  const DrugManagementRecordDocumentEquality();

  @override
  bool equals(DrugManagementRecord? e1, DrugManagementRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.filename == e2?.filename &&
        e1?.dateFinish == e2?.dateFinish &&
        e1?.userUid == e2?.userUid;
  }

  @override
  int hash(DrugManagementRecord? e) => const ListEquality()
      .hash([e?.date, e?.filename, e?.dateFinish, e?.userUid]);

  @override
  bool isValidKey(Object? o) => o is DrugManagementRecord;
}
