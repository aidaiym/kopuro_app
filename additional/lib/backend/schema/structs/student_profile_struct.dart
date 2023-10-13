// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentProfileStruct extends FFFirebaseStruct {
  StudentProfileStruct({
    String? lastName,
    String? firstName,
    DateTime? dateOfBirth,
    String? facebook,
    String? instagram,
    String? linkedIn,
    String? school,
    String? studentClass,
    List<String>? setOfSkills,
    String? about,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lastName = lastName,
        _firstName = firstName,
        _dateOfBirth = dateOfBirth,
        _facebook = facebook,
        _instagram = instagram,
        _linkedIn = linkedIn,
        _school = school,
        _studentClass = studentClass,
        _setOfSkills = setOfSkills,
        _about = about,
        super(firestoreUtilData);

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  set dateOfBirth(DateTime? val) => _dateOfBirth = val;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  set facebook(String? val) => _facebook = val;
  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  set instagram(String? val) => _instagram = val;
  bool hasInstagram() => _instagram != null;

  // "linkedIn" field.
  String? _linkedIn;
  String get linkedIn => _linkedIn ?? '';
  set linkedIn(String? val) => _linkedIn = val;
  bool hasLinkedIn() => _linkedIn != null;

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  set school(String? val) => _school = val;
  bool hasSchool() => _school != null;

  // "student_class" field.
  String? _studentClass;
  String get studentClass => _studentClass ?? '';
  set studentClass(String? val) => _studentClass = val;
  bool hasStudentClass() => _studentClass != null;

  // "set_of_skills" field.
  List<String>? _setOfSkills;
  List<String> get setOfSkills => _setOfSkills ?? const [];
  set setOfSkills(List<String>? val) => _setOfSkills = val;
  void updateSetOfSkills(Function(List<String>) updateFn) =>
      updateFn(_setOfSkills ??= []);
  bool hasSetOfSkills() => _setOfSkills != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  set about(String? val) => _about = val;
  bool hasAbout() => _about != null;

  static StudentProfileStruct fromMap(Map<String, dynamic> data) =>
      StudentProfileStruct(
        lastName: data['last_name'] as String?,
        firstName: data['first_name'] as String?,
        dateOfBirth: data['date_of_birth'] as DateTime?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        linkedIn: data['linkedIn'] as String?,
        school: data['school'] as String?,
        studentClass: data['student_class'] as String?,
        setOfSkills: getDataList(data['set_of_skills']),
        about: data['about'] as String?,
      );

  static StudentProfileStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? StudentProfileStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'last_name': _lastName,
        'first_name': _firstName,
        'date_of_birth': _dateOfBirth,
        'facebook': _facebook,
        'instagram': _instagram,
        'linkedIn': _linkedIn,
        'school': _school,
        'student_class': _studentClass,
        'set_of_skills': _setOfSkills,
        'about': _about,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'date_of_birth': serializeParam(
          _dateOfBirth,
          ParamType.DateTime,
        ),
        'facebook': serializeParam(
          _facebook,
          ParamType.String,
        ),
        'instagram': serializeParam(
          _instagram,
          ParamType.String,
        ),
        'linkedIn': serializeParam(
          _linkedIn,
          ParamType.String,
        ),
        'school': serializeParam(
          _school,
          ParamType.String,
        ),
        'student_class': serializeParam(
          _studentClass,
          ParamType.String,
        ),
        'set_of_skills': serializeParam(
          _setOfSkills,
          ParamType.String,
          true,
        ),
        'about': serializeParam(
          _about,
          ParamType.String,
        ),
      }.withoutNulls;

  static StudentProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      StudentProfileStruct(
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['date_of_birth'],
          ParamType.DateTime,
          false,
        ),
        facebook: deserializeParam(
          data['facebook'],
          ParamType.String,
          false,
        ),
        instagram: deserializeParam(
          data['instagram'],
          ParamType.String,
          false,
        ),
        linkedIn: deserializeParam(
          data['linkedIn'],
          ParamType.String,
          false,
        ),
        school: deserializeParam(
          data['school'],
          ParamType.String,
          false,
        ),
        studentClass: deserializeParam(
          data['student_class'],
          ParamType.String,
          false,
        ),
        setOfSkills: deserializeParam<String>(
          data['set_of_skills'],
          ParamType.String,
          true,
        ),
        about: deserializeParam(
          data['about'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StudentProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StudentProfileStruct &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        dateOfBirth == other.dateOfBirth &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        linkedIn == other.linkedIn &&
        school == other.school &&
        studentClass == other.studentClass &&
        listEquality.equals(setOfSkills, other.setOfSkills) &&
        about == other.about;
  }

  @override
  int get hashCode => const ListEquality().hash([
        lastName,
        firstName,
        dateOfBirth,
        facebook,
        instagram,
        linkedIn,
        school,
        studentClass,
        setOfSkills,
        about
      ]);
}

StudentProfileStruct createStudentProfileStruct({
  String? lastName,
  String? firstName,
  DateTime? dateOfBirth,
  String? facebook,
  String? instagram,
  String? linkedIn,
  String? school,
  String? studentClass,
  String? about,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StudentProfileStruct(
      lastName: lastName,
      firstName: firstName,
      dateOfBirth: dateOfBirth,
      facebook: facebook,
      instagram: instagram,
      linkedIn: linkedIn,
      school: school,
      studentClass: studentClass,
      about: about,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StudentProfileStruct? updateStudentProfileStruct(
  StudentProfileStruct? studentProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    studentProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStudentProfileStructData(
  Map<String, dynamic> firestoreData,
  StudentProfileStruct? studentProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (studentProfile == null) {
    return;
  }
  if (studentProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && studentProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final studentProfileData =
      getStudentProfileFirestoreData(studentProfile, forFieldValue);
  final nestedData =
      studentProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = studentProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStudentProfileFirestoreData(
  StudentProfileStruct? studentProfile, [
  bool forFieldValue = false,
]) {
  if (studentProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(studentProfile.toMap());

  // Add any Firestore field values
  studentProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStudentProfileListFirestoreData(
  List<StudentProfileStruct>? studentProfiles,
) =>
    studentProfiles
        ?.map((e) => getStudentProfileFirestoreData(e, true))
        .toList() ??
    [];
