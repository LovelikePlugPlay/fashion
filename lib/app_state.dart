import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _valueFormat = prefs.getString('ff_valueFormat') ?? _valueFormat;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _menuSelecionado = '';
  String get menuSelecionado => _menuSelecionado;
  set menuSelecionado(String value) {
    _menuSelecionado = value;
  }

  bool _Expandir = true;
  bool get Expandir => _Expandir;
  set Expandir(bool value) {
    _Expandir = value;
  }

  String _valueFormat = '';
  String get valueFormat => _valueFormat;
  set valueFormat(String value) {
    _valueFormat = value;
    prefs.setString('ff_valueFormat', value);
  }

  double _valueDouble = 0.0;
  double get valueDouble => _valueDouble;
  set valueDouble(double value) {
    _valueDouble = value;
  }
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
