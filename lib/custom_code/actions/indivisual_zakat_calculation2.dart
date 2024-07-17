// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> indivisualZakatCalculation2(
  String? type,
  double? value,
) async {
  // indivisual zakat calculation
  if (type == null || value == null) {
    throw Exception('Invalid input');
  }

  double zakatAmount = 0.0;

  switch (type) {
    case 'Gold':
      zakatAmount = value * 0.025;
      break;
    case 'Silver':
      zakatAmount = value * 0.025;
      break;
    case 'Cash':
      zakatAmount = value * 0.025;
      break;
    case 'Business':
      zakatAmount = value * 0.025;
      break;
    case 'Property':
      zakatAmount = value * 0.025;
      break;
    default:
      throw Exception('Invalid type');
  }

  return double.parse((zakatAmount).toStringAsFixed(2));
}
