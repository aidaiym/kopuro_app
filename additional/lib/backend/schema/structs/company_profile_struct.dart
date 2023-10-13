// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyProfileStruct extends FFFirebaseStruct {
  CompanyProfileStruct({
    String? contactPerson,
    String? industrySector,
    String? website,
    String? facebook,
    String? instagram,
    String? linkedIn,
    String? sizeOfCompany,
    String? foundationYear,
    String? location,
    String? description,
    String? title,
    String? about,
    String? companyName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contactPerson = contactPerson,
        _industrySector = industrySector,
        _website = website,
        _facebook = facebook,
        _instagram = instagram,
        _linkedIn = linkedIn,
        _sizeOfCompany = sizeOfCompany,
        _foundationYear = foundationYear,
        _location = location,
        _description = description,
        _title = title,
        _about = about,
        _companyName = companyName,
        super(firestoreUtilData);

  // "contact_person" field.
  String? _contactPerson;
  String get contactPerson => _contactPerson ?? '';
  set contactPerson(String? val) => _contactPerson = val;
  bool hasContactPerson() => _contactPerson != null;

  // "industry_sector" field.
  String? _industrySector;
  String get industrySector => _industrySector ?? '';
  set industrySector(String? val) => _industrySector = val;
  bool hasIndustrySector() => _industrySector != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  set website(String? val) => _website = val;
  bool hasWebsite() => _website != null;

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

  // "size_of_company" field.
  String? _sizeOfCompany;
  String get sizeOfCompany => _sizeOfCompany ?? '';
  set sizeOfCompany(String? val) => _sizeOfCompany = val;
  bool hasSizeOfCompany() => _sizeOfCompany != null;

  // "foundation_year" field.
  String? _foundationYear;
  String get foundationYear => _foundationYear ?? '';
  set foundationYear(String? val) => _foundationYear = val;
  bool hasFoundationYear() => _foundationYear != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  set about(String? val) => _about = val;
  bool hasAbout() => _about != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  set companyName(String? val) => _companyName = val;
  bool hasCompanyName() => _companyName != null;

  static CompanyProfileStruct fromMap(Map<String, dynamic> data) =>
      CompanyProfileStruct(
        contactPerson: data['contact_person'] as String?,
        industrySector: data['industry_sector'] as String?,
        website: data['website'] as String?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        linkedIn: data['linkedIn'] as String?,
        sizeOfCompany: data['size_of_company'] as String?,
        foundationYear: data['foundation_year'] as String?,
        location: data['location'] as String?,
        description: data['description'] as String?,
        title: data['title'] as String?,
        about: data['about'] as String?,
        companyName: data['company_name'] as String?,
      );

  static CompanyProfileStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CompanyProfileStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'contact_person': _contactPerson,
        'industry_sector': _industrySector,
        'website': _website,
        'facebook': _facebook,
        'instagram': _instagram,
        'linkedIn': _linkedIn,
        'size_of_company': _sizeOfCompany,
        'foundation_year': _foundationYear,
        'location': _location,
        'description': _description,
        'title': _title,
        'about': _about,
        'company_name': _companyName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contact_person': serializeParam(
          _contactPerson,
          ParamType.String,
        ),
        'industry_sector': serializeParam(
          _industrySector,
          ParamType.String,
        ),
        'website': serializeParam(
          _website,
          ParamType.String,
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
        'size_of_company': serializeParam(
          _sizeOfCompany,
          ParamType.String,
        ),
        'foundation_year': serializeParam(
          _foundationYear,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'about': serializeParam(
          _about,
          ParamType.String,
        ),
        'company_name': serializeParam(
          _companyName,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompanyProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyProfileStruct(
        contactPerson: deserializeParam(
          data['contact_person'],
          ParamType.String,
          false,
        ),
        industrySector: deserializeParam(
          data['industry_sector'],
          ParamType.String,
          false,
        ),
        website: deserializeParam(
          data['website'],
          ParamType.String,
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
        sizeOfCompany: deserializeParam(
          data['size_of_company'],
          ParamType.String,
          false,
        ),
        foundationYear: deserializeParam(
          data['foundation_year'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        about: deserializeParam(
          data['about'],
          ParamType.String,
          false,
        ),
        companyName: deserializeParam(
          data['company_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CompanyProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompanyProfileStruct &&
        contactPerson == other.contactPerson &&
        industrySector == other.industrySector &&
        website == other.website &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        linkedIn == other.linkedIn &&
        sizeOfCompany == other.sizeOfCompany &&
        foundationYear == other.foundationYear &&
        location == other.location &&
        description == other.description &&
        title == other.title &&
        about == other.about &&
        companyName == other.companyName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        contactPerson,
        industrySector,
        website,
        facebook,
        instagram,
        linkedIn,
        sizeOfCompany,
        foundationYear,
        location,
        description,
        title,
        about,
        companyName
      ]);
}

CompanyProfileStruct createCompanyProfileStruct({
  String? contactPerson,
  String? industrySector,
  String? website,
  String? facebook,
  String? instagram,
  String? linkedIn,
  String? sizeOfCompany,
  String? foundationYear,
  String? location,
  String? description,
  String? title,
  String? about,
  String? companyName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyProfileStruct(
      contactPerson: contactPerson,
      industrySector: industrySector,
      website: website,
      facebook: facebook,
      instagram: instagram,
      linkedIn: linkedIn,
      sizeOfCompany: sizeOfCompany,
      foundationYear: foundationYear,
      location: location,
      description: description,
      title: title,
      about: about,
      companyName: companyName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyProfileStruct? updateCompanyProfileStruct(
  CompanyProfileStruct? companyProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    companyProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyProfileStructData(
  Map<String, dynamic> firestoreData,
  CompanyProfileStruct? companyProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (companyProfile == null) {
    return;
  }
  if (companyProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && companyProfile.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyProfileData =
      getCompanyProfileFirestoreData(companyProfile, forFieldValue);
  final nestedData =
      companyProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = companyProfile.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyProfileFirestoreData(
  CompanyProfileStruct? companyProfile, [
  bool forFieldValue = false,
]) {
  if (companyProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(companyProfile.toMap());

  // Add any Firestore field values
  companyProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyProfileListFirestoreData(
  List<CompanyProfileStruct>? companyProfiles,
) =>
    companyProfiles
        ?.map((e) => getCompanyProfileFirestoreData(e, true))
        .toList() ??
    [];
