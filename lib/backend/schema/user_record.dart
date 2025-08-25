import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "slot_1_filename" field.
  String? _slot1Filename;
  String get slot1Filename => _slot1Filename ?? '';
  bool hasSlot1Filename() => _slot1Filename != null;

  // "slot_2_filename" field.
  String? _slot2Filename;
  String get slot2Filename => _slot2Filename ?? '';
  bool hasSlot2Filename() => _slot2Filename != null;

  // "slot_3_filename" field.
  String? _slot3Filename;
  String get slot3Filename => _slot3Filename ?? '';
  bool hasSlot3Filename() => _slot3Filename != null;

  // "slot_4_filename" field.
  String? _slot4Filename;
  String get slot4Filename => _slot4Filename ?? '';
  bool hasSlot4Filename() => _slot4Filename != null;

  // "slot_5_filename" field.
  String? _slot5Filename;
  String get slot5Filename => _slot5Filename ?? '';
  bool hasSlot5Filename() => _slot5Filename != null;

  // "slot_6_filename" field.
  String? _slot6Filename;
  String get slot6Filename => _slot6Filename ?? '';
  bool hasSlot6Filename() => _slot6Filename != null;

  // "slot_1_originRef" field.
  String? _slot1OriginRef;
  String get slot1OriginRef => _slot1OriginRef ?? '';
  bool hasSlot1OriginRef() => _slot1OriginRef != null;

  // "slot_2_originRef" field.
  String? _slot2OriginRef;
  String get slot2OriginRef => _slot2OriginRef ?? '';
  bool hasSlot2OriginRef() => _slot2OriginRef != null;

  // "slot_3_originRef" field.
  String? _slot3OriginRef;
  String get slot3OriginRef => _slot3OriginRef ?? '';
  bool hasSlot3OriginRef() => _slot3OriginRef != null;

  // "slot_4_originRef" field.
  String? _slot4OriginRef;
  String get slot4OriginRef => _slot4OriginRef ?? '';
  bool hasSlot4OriginRef() => _slot4OriginRef != null;

  // "slot_5_originRef" field.
  String? _slot5OriginRef;
  String get slot5OriginRef => _slot5OriginRef ?? '';
  bool hasSlot5OriginRef() => _slot5OriginRef != null;

  // "slot_6_originRef" field.
  String? _slot6OriginRef;
  String get slot6OriginRef => _slot6OriginRef ?? '';
  bool hasSlot6OriginRef() => _slot6OriginRef != null;

  // "slot_1_intakeTime" field.
  String? _slot1IntakeTime;
  String get slot1IntakeTime => _slot1IntakeTime ?? '';
  bool hasSlot1IntakeTime() => _slot1IntakeTime != null;

  // "slot_2_intakeTime" field.
  String? _slot2IntakeTime;
  String get slot2IntakeTime => _slot2IntakeTime ?? '';
  bool hasSlot2IntakeTime() => _slot2IntakeTime != null;

  // "slot_3_intakeTime" field.
  String? _slot3IntakeTime;
  String get slot3IntakeTime => _slot3IntakeTime ?? '';
  bool hasSlot3IntakeTime() => _slot3IntakeTime != null;

  // "slot_4_intakeTime" field.
  String? _slot4IntakeTime;
  String get slot4IntakeTime => _slot4IntakeTime ?? '';
  bool hasSlot4IntakeTime() => _slot4IntakeTime != null;

  // "slot_5_intakeTime" field.
  String? _slot5IntakeTime;
  String get slot5IntakeTime => _slot5IntakeTime ?? '';
  bool hasSlot5IntakeTime() => _slot5IntakeTime != null;

  // "slot_6_intakeTime" field.
  String? _slot6IntakeTime;
  String get slot6IntakeTime => _slot6IntakeTime ?? '';
  bool hasSlot6IntakeTime() => _slot6IntakeTime != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "birthDate" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "pregnancy" field.
  bool? _pregnancy;
  bool get pregnancy => _pregnancy ?? false;
  bool hasPregnancy() => _pregnancy != null;

  // "breastfeeding" field.
  bool? _breastfeeding;
  bool get breastfeeding => _breastfeeding ?? false;
  bool hasBreastfeeding() => _breastfeeding != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "bmi" field.
  double? _bmi;
  double get bmi => _bmi ?? 0.0;
  bool hasBmi() => _bmi != null;

  // "urineptn" field.
  String? _urineptn;
  String get urineptn => _urineptn ?? '';
  bool hasUrineptn() => _urineptn != null;

  // "cr" field.
  double? _cr;
  double get cr => _cr ?? 0.0;
  bool hasCr() => _cr != null;

  // "gfr" field.
  double? _gfr;
  double get gfr => _gfr ?? 0.0;
  bool hasGfr() => _gfr != null;

  // "ast" field.
  double? _ast;
  double get ast => _ast ?? 0.0;
  bool hasAst() => _ast != null;

  // "alt" field.
  double? _alt;
  double get alt => _alt ?? 0.0;
  bool hasAlt() => _alt != null;

  // "gammagtp" field.
  double? _gammagtp;
  double get gammagtp => _gammagtp ?? 0.0;
  bool hasGammagtp() => _gammagtp != null;

  // "time_1" field.
  DateTime? _time1;
  DateTime? get time1 => _time1;
  bool hasTime1() => _time1 != null;

  // "time_2" field.
  DateTime? _time2;
  DateTime? get time2 => _time2;
  bool hasTime2() => _time2 != null;

  // "time_3" field.
  DateTime? _time3;
  DateTime? get time3 => _time3;
  bool hasTime3() => _time3 != null;

  // "time_4" field.
  DateTime? _time4;
  DateTime? get time4 => _time4;
  bool hasTime4() => _time4 != null;

  // "alarm" field.
  bool? _alarm;
  bool get alarm => _alarm ?? false;
  bool hasAlarm() => _alarm != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _slot1Filename = snapshotData['slot_1_filename'] as String?;
    _slot2Filename = snapshotData['slot_2_filename'] as String?;
    _slot3Filename = snapshotData['slot_3_filename'] as String?;
    _slot4Filename = snapshotData['slot_4_filename'] as String?;
    _slot5Filename = snapshotData['slot_5_filename'] as String?;
    _slot6Filename = snapshotData['slot_6_filename'] as String?;
    _slot1OriginRef = snapshotData['slot_1_originRef'] as String?;
    _slot2OriginRef = snapshotData['slot_2_originRef'] as String?;
    _slot3OriginRef = snapshotData['slot_3_originRef'] as String?;
    _slot4OriginRef = snapshotData['slot_4_originRef'] as String?;
    _slot5OriginRef = snapshotData['slot_5_originRef'] as String?;
    _slot6OriginRef = snapshotData['slot_6_originRef'] as String?;
    _slot1IntakeTime = snapshotData['slot_1_intakeTime'] as String?;
    _slot2IntakeTime = snapshotData['slot_2_intakeTime'] as String?;
    _slot3IntakeTime = snapshotData['slot_3_intakeTime'] as String?;
    _slot4IntakeTime = snapshotData['slot_4_intakeTime'] as String?;
    _slot5IntakeTime = snapshotData['slot_5_intakeTime'] as String?;
    _slot6IntakeTime = snapshotData['slot_6_intakeTime'] as String?;
    _sex = snapshotData['sex'] as String?;
    _birthDate = snapshotData['birthDate'] as DateTime?;
    _pregnancy = snapshotData['pregnancy'] as bool?;
    _breastfeeding = snapshotData['breastfeeding'] as bool?;
    _height = castToType<double>(snapshotData['height']);
    _weight = castToType<double>(snapshotData['weight']);
    _bmi = castToType<double>(snapshotData['bmi']);
    _urineptn = snapshotData['urineptn'] as String?;
    _cr = castToType<double>(snapshotData['cr']);
    _gfr = castToType<double>(snapshotData['gfr']);
    _ast = castToType<double>(snapshotData['ast']);
    _alt = castToType<double>(snapshotData['alt']);
    _gammagtp = castToType<double>(snapshotData['gammagtp']);
    _time1 = snapshotData['time_1'] as DateTime?;
    _time2 = snapshotData['time_2'] as DateTime?;
    _time3 = snapshotData['time_3'] as DateTime?;
    _time4 = snapshotData['time_4'] as DateTime?;
    _alarm = snapshotData['alarm'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? slot1Filename,
  String? slot2Filename,
  String? slot3Filename,
  String? slot4Filename,
  String? slot5Filename,
  String? slot6Filename,
  String? slot1OriginRef,
  String? slot2OriginRef,
  String? slot3OriginRef,
  String? slot4OriginRef,
  String? slot5OriginRef,
  String? slot6OriginRef,
  String? slot1IntakeTime,
  String? slot2IntakeTime,
  String? slot3IntakeTime,
  String? slot4IntakeTime,
  String? slot5IntakeTime,
  String? slot6IntakeTime,
  String? sex,
  DateTime? birthDate,
  bool? pregnancy,
  bool? breastfeeding,
  double? height,
  double? weight,
  double? bmi,
  String? urineptn,
  double? cr,
  double? gfr,
  double? ast,
  double? alt,
  double? gammagtp,
  DateTime? time1,
  DateTime? time2,
  DateTime? time3,
  DateTime? time4,
  bool? alarm,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'slot_1_filename': slot1Filename,
      'slot_2_filename': slot2Filename,
      'slot_3_filename': slot3Filename,
      'slot_4_filename': slot4Filename,
      'slot_5_filename': slot5Filename,
      'slot_6_filename': slot6Filename,
      'slot_1_originRef': slot1OriginRef,
      'slot_2_originRef': slot2OriginRef,
      'slot_3_originRef': slot3OriginRef,
      'slot_4_originRef': slot4OriginRef,
      'slot_5_originRef': slot5OriginRef,
      'slot_6_originRef': slot6OriginRef,
      'slot_1_intakeTime': slot1IntakeTime,
      'slot_2_intakeTime': slot2IntakeTime,
      'slot_3_intakeTime': slot3IntakeTime,
      'slot_4_intakeTime': slot4IntakeTime,
      'slot_5_intakeTime': slot5IntakeTime,
      'slot_6_intakeTime': slot6IntakeTime,
      'sex': sex,
      'birthDate': birthDate,
      'pregnancy': pregnancy,
      'breastfeeding': breastfeeding,
      'height': height,
      'weight': weight,
      'bmi': bmi,
      'urineptn': urineptn,
      'cr': cr,
      'gfr': gfr,
      'ast': ast,
      'alt': alt,
      'gammagtp': gammagtp,
      'time_1': time1,
      'time_2': time2,
      'time_3': time3,
      'time_4': time4,
      'alarm': alarm,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.slot1Filename == e2?.slot1Filename &&
        e1?.slot2Filename == e2?.slot2Filename &&
        e1?.slot3Filename == e2?.slot3Filename &&
        e1?.slot4Filename == e2?.slot4Filename &&
        e1?.slot5Filename == e2?.slot5Filename &&
        e1?.slot6Filename == e2?.slot6Filename &&
        e1?.slot1OriginRef == e2?.slot1OriginRef &&
        e1?.slot2OriginRef == e2?.slot2OriginRef &&
        e1?.slot3OriginRef == e2?.slot3OriginRef &&
        e1?.slot4OriginRef == e2?.slot4OriginRef &&
        e1?.slot5OriginRef == e2?.slot5OriginRef &&
        e1?.slot6OriginRef == e2?.slot6OriginRef &&
        e1?.slot1IntakeTime == e2?.slot1IntakeTime &&
        e1?.slot2IntakeTime == e2?.slot2IntakeTime &&
        e1?.slot3IntakeTime == e2?.slot3IntakeTime &&
        e1?.slot4IntakeTime == e2?.slot4IntakeTime &&
        e1?.slot5IntakeTime == e2?.slot5IntakeTime &&
        e1?.slot6IntakeTime == e2?.slot6IntakeTime &&
        e1?.sex == e2?.sex &&
        e1?.birthDate == e2?.birthDate &&
        e1?.pregnancy == e2?.pregnancy &&
        e1?.breastfeeding == e2?.breastfeeding &&
        e1?.height == e2?.height &&
        e1?.weight == e2?.weight &&
        e1?.bmi == e2?.bmi &&
        e1?.urineptn == e2?.urineptn &&
        e1?.cr == e2?.cr &&
        e1?.gfr == e2?.gfr &&
        e1?.ast == e2?.ast &&
        e1?.alt == e2?.alt &&
        e1?.gammagtp == e2?.gammagtp &&
        e1?.time1 == e2?.time1 &&
        e1?.time2 == e2?.time2 &&
        e1?.time3 == e2?.time3 &&
        e1?.time4 == e2?.time4 &&
        e1?.alarm == e2?.alarm;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.slot1Filename,
        e?.slot2Filename,
        e?.slot3Filename,
        e?.slot4Filename,
        e?.slot5Filename,
        e?.slot6Filename,
        e?.slot1OriginRef,
        e?.slot2OriginRef,
        e?.slot3OriginRef,
        e?.slot4OriginRef,
        e?.slot5OriginRef,
        e?.slot6OriginRef,
        e?.slot1IntakeTime,
        e?.slot2IntakeTime,
        e?.slot3IntakeTime,
        e?.slot4IntakeTime,
        e?.slot5IntakeTime,
        e?.slot6IntakeTime,
        e?.sex,
        e?.birthDate,
        e?.pregnancy,
        e?.breastfeeding,
        e?.height,
        e?.weight,
        e?.bmi,
        e?.urineptn,
        e?.cr,
        e?.gfr,
        e?.ast,
        e?.alt,
        e?.gammagtp,
        e?.time1,
        e?.time2,
        e?.time3,
        e?.time4,
        e?.alarm
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
