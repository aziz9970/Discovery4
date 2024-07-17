import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  double _totalZakat = 0.0;
  double get totalZakat => _totalZakat;
  set totalZakat(double value) {
    _totalZakat = value;
  }

  dynamic _profile;
  dynamic get profile => _profile;
  set profile(dynamic value) {
    _profile = value;
  }

  double _incomeZakat = 0.0;
  double get incomeZakat => _incomeZakat;
  set incomeZakat(double value) {
    _incomeZakat = value;
  }

  double _cashZakat = 0.0;
  double get cashZakat => _cashZakat;
  set cashZakat(double value) {
    _cashZakat = value;
  }

  double _silverZakat = 0.0;
  double get silverZakat => _silverZakat;
  set silverZakat(double value) {
    _silverZakat = value;
  }

  double _goldZakat = 0.0;
  double get goldZakat => _goldZakat;
  set goldZakat(double value) {
    _goldZakat = value;
  }
}
