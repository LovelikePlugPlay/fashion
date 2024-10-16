import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? converDate(String? date) {
  if (date == null || date.isEmpty) {
    return null;
  }

  try {
    // Parse the Supabase timestamp
    DateTime parsedDate = DateTime.parse(date);

    // Convert to UTC
    DateTime utcDate = parsedDate.toUtc();

    // Adjust to UTC-3
    DateTime adjustedDate = utcDate.subtract(Duration(hours: 3));

    return adjustedDate;
  } catch (e) {
    print('Error parsing date: $e');
    return null;
  }
}

List<String>? extractUniqueMarks(dynamic usuarios) {
  if (usuarios == null) {
    return null;
  }

  List<dynamic> userList;
  if (usuarios is String) {
    try {
      // Replace unquoted x and y with quoted "x" and "y"
      String sanitizedJson = usuarios
          .replaceAll('"marca": x', '"marca": "x"')
          .replaceAll('"marca": y', '"marca": "y"');
      userList = jsonDecode(sanitizedJson);
    } catch (e) {
      print('Error decoding JSON: $e');
      return null;
    }
  } else if (usuarios is List) {
    userList = usuarios;
  } else {
    print('Invalid input type. Expected String or List.');
    return null;
  }

  Set<String> uniqueMarks = {};

  for (var user in userList) {
    if (user is Map<String, dynamic>) {
      var marca = user['marca'];
      if (marca != null) {
        String marcaStr = marca.toString().trim();
        if (marcaStr.isNotEmpty) {
          uniqueMarks.add(marcaStr);
        }
      }
    }
  }

  if (uniqueMarks.isEmpty) {
    return null;
  }

  return uniqueMarks.toList()
    ..sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
}
