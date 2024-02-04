import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future parseJsonFromAsset(String assetPath) async {
  debugPrint(assetPath);
  final String stringData = await rootBundle.loadString(assetPath);
  return jsonDecode(stringData);
}
