import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? roundOf(double? number) {
  // 2 decimal round of
  if (number == null) return null;
  return double.parse(number.toStringAsFixed(2));
}

double? indivisualZakatCalculation(
  String? type,
  double? value,
) {
  // switch condition to get cash,gold,silver zakat
  switch (type) {
    case 'cash':
      if (value != null && value >= 35000) {
        return roundOf(value * 0.025);
      }
      break;
    case 'gold':
      if (value != null && value >= 85) {
        return roundOf(value * 0.025);
      }
      break;
    case 'silver':
      if (value != null && value >= 595) {
        return roundOf(value * 0.025);
      }
      break;
  }
  return 0;
}

double? totalZakatCalculation(
  double? cash,
  double? goldAmount,
  double? silverAmount,
) {
  // total zakat calculation function
  double totalZakat = 0;

  // calculate zakat for cash
  double? cashZakat = indivisualZakatCalculation('cash', cash);
  if (cashZakat != null) {
    totalZakat += cashZakat;
  }

  // calculate zakat for gold
  double? goldZakat = indivisualZakatCalculation('gold', goldAmount);
  if (goldZakat != null) {
    totalZakat += goldZakat;
  }

  // calculate zakat for silver
  double? silverZakat = indivisualZakatCalculation('silver', silverAmount);
  if (silverZakat != null) {
    totalZakat += silverZakat;
  }

  return totalZakat;
}
