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

DateTime getTodayMidnight() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day); // 오전 12시 (00:00:00)
}

int? enterInteger(int newNo) {
  return newNo;
}

int? divideAndCeil(
  int parameter1,
  int parameter2,
) {
  {
    if (parameter2 == 0) {
      // 0으로 나눌 수 없기 때문에, 기본값을 명시적으로 반환
      return 0;
    }
    return (parameter1 / parameter2).ceil();
  }
}

String countActiveSwitches(
  bool s1,
  bool s2,
  bool s3,
  bool s4,
) {
  int count = 0;
  if (s1) count++;
  if (s2) count++;
  if (s3) count++;
  if (s4) count++;
  return count.toString();
}

double calculateBMI(
  double heightCm,
  double weightKg,
) {
  if (heightCm <= 0) return 0;
  final heightM = heightCm / 100;
  return weightKg / (heightM * heightM);
}

String? cleanDocData(String? docData) {
  if (docData == null) return null;

// 1. CDATA 내용만 추출
  final cdataRegex =
      RegExp(r'<!\[CDATA\[(.*?)\]\]>', multiLine: true, dotAll: true);
  String extracted = docData.replaceAllMapped(cdataRegex, (match) {
    return match.group(1) ?? '';
  });

// 2. <br>, <br/> 등을 줄바꿈으로 변환
  extracted =
      extracted.replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n');

// 3. HTML 태그 제거
  final tagRegex = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
  String cleaned = extracted.replaceAll(tagRegex, '');

// 4. HTML 엔티티 변환
  cleaned = cleaned
      .replaceAll('&nbsp;', ' ')
      .replaceAll('&amp;', '&')
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>')
      .replaceAll('&quot;', '"')
      .replaceAll('&#39;', "'");

// 5. 줄바꿈 및 공백 정리
  cleaned = cleaned
      .replaceAll('\r\n', '\n')
      .replaceAll('\\n', '\n') // 문자열 내 이스케이프된 \n 처리
      .replaceAll('\n\n', '\n')
      .trim();

  return cleaned;
}
