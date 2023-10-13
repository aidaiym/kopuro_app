import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _listOfClass = ['Freshman', 'Sophomore', 'Junior', 'Senior'];
  List<String> get listOfClass => _listOfClass;
  set listOfClass(List<String> _value) {
    _listOfClass = _value;
  }

  void addToListOfClass(String _value) {
    _listOfClass.add(_value);
  }

  void removeFromListOfClass(String _value) {
    _listOfClass.remove(_value);
  }

  void removeAtIndexFromListOfClass(int _index) {
    _listOfClass.removeAt(_index);
  }

  void updateListOfClassAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listOfClass[_index] = updateFn(_listOfClass[_index]);
  }

  void insertAtIndexInListOfClass(int _index, String _value) {
    _listOfClass.insert(_index, _value);
  }

  String _choosenClass = '';
  String get choosenClass => _choosenClass;
  set choosenClass(String _value) {
    _choosenClass = _value;
  }

  String _choosenSchool = '';
  String get choosenSchool => _choosenSchool;
  set choosenSchool(String _value) {
    _choosenSchool = _value;
  }

  String _signinPhoto = '';
  String get signinPhoto => _signinPhoto;
  set signinPhoto(String _value) {
    _signinPhoto = _value;
  }

  List<String> _studentSkills = [];
  List<String> get studentSkills => _studentSkills;
  set studentSkills(List<String> _value) {
    _studentSkills = _value;
  }

  void addToStudentSkills(String _value) {
    _studentSkills.add(_value);
  }

  void removeFromStudentSkills(String _value) {
    _studentSkills.remove(_value);
  }

  void removeAtIndexFromStudentSkills(int _index) {
    _studentSkills.removeAt(_index);
  }

  void updateStudentSkillsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _studentSkills[_index] = updateFn(_studentSkills[_index]);
  }

  void insertAtIndexInStudentSkills(int _index, String _value) {
    _studentSkills.insert(_index, _value);
  }

  String _choosenIndustry = '';
  String get choosenIndustry => _choosenIndustry;
  set choosenIndustry(String _value) {
    _choosenIndustry = _value;
  }

  List<String> _listOfIndustry = [
    'Agriculture',
    'Arts',
    'Construction',
    'Consumer Goods',
    'Corporate Services',
    'Design',
    'Education',
    'Energy & Mining',
    'Entertainment',
    'Finance',
    'Hardware & Networking',
    'Health Care',
    'Legal',
    'Manufacturing',
    'Media & Communications',
    'Nonprofit',
    'Public Administration',
    'Public Safety',
    'Real Estate',
    'Recreation & Travel',
    'Retail',
    'Software & IT Services',
    'Transportation & Logistics',
    'Wellness & Fitness'
  ];
  List<String> get listOfIndustry => _listOfIndustry;
  set listOfIndustry(List<String> _value) {
    _listOfIndustry = _value;
  }

  void addToListOfIndustry(String _value) {
    _listOfIndustry.add(_value);
  }

  void removeFromListOfIndustry(String _value) {
    _listOfIndustry.remove(_value);
  }

  void removeAtIndexFromListOfIndustry(int _index) {
    _listOfIndustry.removeAt(_index);
  }

  void updateListOfIndustryAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _listOfIndustry[_index] = updateFn(_listOfIndustry[_index]);
  }

  void insertAtIndexInListOfIndustry(int _index, String _value) {
    _listOfIndustry.insert(_index, _value);
  }

  String _companyLocation = '';
  String get companyLocation => _companyLocation;
  set companyLocation(String _value) {
    _companyLocation = _value;
  }

  List<String> _employmentType = ['On-site', 'Hybrid', 'Remote'];
  List<String> get employmentType => _employmentType;
  set employmentType(List<String> _value) {
    _employmentType = _value;
  }

  void addToEmploymentType(String _value) {
    _employmentType.add(_value);
  }

  void removeFromEmploymentType(String _value) {
    _employmentType.remove(_value);
  }

  void removeAtIndexFromEmploymentType(int _index) {
    _employmentType.removeAt(_index);
  }

  void updateEmploymentTypeAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _employmentType[_index] = updateFn(_employmentType[_index]);
  }

  void insertAtIndexInEmploymentType(int _index, String _value) {
    _employmentType.insert(_index, _value);
  }

  String _choosedEmploymentType = '';
  String get choosedEmploymentType => _choosedEmploymentType;
  set choosedEmploymentType(String _value) {
    _choosedEmploymentType = _value;
  }

  List<String> _JobType = ['Full-Time', 'Part-Time', 'Weekends Only'];
  List<String> get JobType => _JobType;
  set JobType(List<String> _value) {
    _JobType = _value;
  }

  void addToJobType(String _value) {
    _JobType.add(_value);
  }

  void removeFromJobType(String _value) {
    _JobType.remove(_value);
  }

  void removeAtIndexFromJobType(int _index) {
    _JobType.removeAt(_index);
  }

  void updateJobTypeAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _JobType[_index] = updateFn(_JobType[_index]);
  }

  void insertAtIndexInJobType(int _index, String _value) {
    _JobType.insert(_index, _value);
  }

  String _choosenJobType = '';
  String get choosenJobType => _choosenJobType;
  set choosenJobType(String _value) {
    _choosenJobType = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
