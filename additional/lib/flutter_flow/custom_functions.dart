import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? validateFileStorage(FFUploadedFile? uploadedImage) {
  const suffixes = ["b", "kb", "mb", "gb", "tb"];
  var image = uploadedImage!.bytes!.length;
  var i = (math.log(image) / math.log(1024)).floor();
  if (suffixes[i] == "kb") {
    return (image / math.pow(1024, i)) <= 5120;
  } else if (suffixes[i] == "mb") {
    return (image / math.pow(1024, i)) <= 5;
  }
  return false;
}
