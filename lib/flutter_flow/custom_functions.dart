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

String? convertMapToJson(dynamic data) {
  try {
    String jsonStr = jsonEncode(data);
    return jsonStr;
  } catch (e) {
    // 错误处理
    print('Error converting map to JSON: $e');
    return '{}'; // 返回一个空的JSON对象作为失败的响应
  }
}
