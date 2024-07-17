// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> calculateZakat(
  double? goldGram,
  double? goldRate,
  double? silverGram,
  double? silverRate,
  double? cash,
) async {
  // zakat calcuation formula
// Zakat calculation formula:
// Zakat = 2.5% * (Gold in grams * Gold rate per gram + Silver in grams * Silver rate per gram + Cash)

  double totalZakat = 0;

  if (goldGram != null && goldRate != null) {
    double goldValue = goldGram * goldRate;
    totalZakat += goldValue;
  }

  if (silverGram != null && silverRate != null) {
    double silverValue = silverGram * silverRate;
    totalZakat += silverValue;
  }

  if (cash != null) {
    totalZakat += cash;
  }

  double zakat = totalZakat * 0.025;

  return double.parse((zakat).toStringAsFixed(2));
}
