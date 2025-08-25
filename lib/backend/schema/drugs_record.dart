import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrugsRecord extends FirestoreRecord {
  DrugsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ITEM_NAME" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "BIG_PRDT_IMG_URL" field.
  String? _bigPrdtImgUrl;
  String get bigPrdtImgUrl => _bigPrdtImgUrl ?? '';
  bool hasBigPrdtImgUrl() => _bigPrdtImgUrl != null;

  // "ITEM_INGR_NAME" field.
  String? _itemIngrName;
  String get itemIngrName => _itemIngrName ?? '';
  bool hasItemIngrName() => _itemIngrName != null;

  // "PRDUCT_TYPE" field.
  String? _prductType;
  String get prductType => _prductType ?? '';
  bool hasPrductType() => _prductType != null;

  // "SPCLTY_PBLC" field.
  String? _spcltyPblc;
  String get spcltyPblc => _spcltyPblc ?? '';
  bool hasSpcltyPblc() => _spcltyPblc != null;

  // "ITEM_SEQ" field.
  String? _itemSeq;
  String get itemSeq => _itemSeq ?? '';
  bool hasItemSeq() => _itemSeq != null;

  void _initializeFields() {
    _itemName = snapshotData['ITEM_NAME'] as String?;
    _bigPrdtImgUrl = snapshotData['BIG_PRDT_IMG_URL'] as String?;
    _itemIngrName = snapshotData['ITEM_INGR_NAME'] as String?;
    _prductType = snapshotData['PRDUCT_TYPE'] as String?;
    _spcltyPblc = snapshotData['SPCLTY_PBLC'] as String?;
    _itemSeq = snapshotData['ITEM_SEQ'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drugs');

  static Stream<DrugsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DrugsRecord.fromSnapshot(s));

  static Future<DrugsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DrugsRecord.fromSnapshot(s));

  static DrugsRecord fromSnapshot(DocumentSnapshot snapshot) => DrugsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DrugsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DrugsRecord._(reference, mapFromFirestore(data));

  static DrugsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      DrugsRecord.getDocumentFromData(
        {
          'ITEM_NAME': snapshot.data['ITEM_NAME'],
          'BIG_PRDT_IMG_URL': snapshot.data['BIG_PRDT_IMG_URL'],
          'ITEM_INGR_NAME': snapshot.data['ITEM_INGR_NAME'],
          'PRDUCT_TYPE': snapshot.data['PRDUCT_TYPE'],
          'SPCLTY_PBLC': snapshot.data['SPCLTY_PBLC'],
          'ITEM_SEQ': snapshot.data['ITEM_SEQ'],
        },
        DrugsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<DrugsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'drugs',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'DrugsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DrugsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDrugsRecordData({
  String? itemName,
  String? bigPrdtImgUrl,
  String? itemIngrName,
  String? prductType,
  String? spcltyPblc,
  String? itemSeq,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ITEM_NAME': itemName,
      'BIG_PRDT_IMG_URL': bigPrdtImgUrl,
      'ITEM_INGR_NAME': itemIngrName,
      'PRDUCT_TYPE': prductType,
      'SPCLTY_PBLC': spcltyPblc,
      'ITEM_SEQ': itemSeq,
    }.withoutNulls,
  );

  return firestoreData;
}

class DrugsRecordDocumentEquality implements Equality<DrugsRecord> {
  const DrugsRecordDocumentEquality();

  @override
  bool equals(DrugsRecord? e1, DrugsRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.bigPrdtImgUrl == e2?.bigPrdtImgUrl &&
        e1?.itemIngrName == e2?.itemIngrName &&
        e1?.prductType == e2?.prductType &&
        e1?.spcltyPblc == e2?.spcltyPblc &&
        e1?.itemSeq == e2?.itemSeq;
  }

  @override
  int hash(DrugsRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.bigPrdtImgUrl,
        e?.itemIngrName,
        e?.prductType,
        e?.spcltyPblc,
        e?.itemSeq
      ]);

  @override
  bool isValidKey(Object? o) => o is DrugsRecord;
}
