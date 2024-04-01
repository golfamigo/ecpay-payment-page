import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

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

  int _TotalAmount = 1000;
  int get TotalAmount => _TotalAmount;
  set TotalAmount(int value) {
    _TotalAmount = value;
  }

  String _TradeDesc = 'soap';
  String get TradeDesc => _TradeDesc;
  set TradeDesc(String value) {
    _TradeDesc = value;
  }

  String _ItemName = 'soap';
  String get ItemName => _ItemName;
  set ItemName(String value) {
    _ItemName = value;
  }

  String _returnInfo = '';
  String get returnInfo => _returnInfo;
  set returnInfo(String value) {
    _returnInfo = value;
  }

  String _MerchantID = '3002607';
  String get MerchantID => _MerchantID;
  set MerchantID(String value) {
    _MerchantID = value;
  }

  String _RememberCard = '1';
  String get RememberCard => _RememberCard;
  set RememberCard(String value) {
    _RememberCard = value;
  }

  String _PaymentUIType = '2';
  String get PaymentUIType => _PaymentUIType;
  set PaymentUIType(String value) {
    _PaymentUIType = value;
  }

  String _ChoosePaymentList = '1,2,3';
  String get ChoosePaymentList => _ChoosePaymentList;
  set ChoosePaymentList(String value) {
    _ChoosePaymentList = value;
  }

  String _name = 'Test';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _ID = 'A123456789';
  String get ID => _ID;
  set ID(String value) {
    _ID = value;
  }

  EcpayRequireDataStruct _ecpayRequire = EcpayRequireDataStruct();
  EcpayRequireDataStruct get ecpayRequire => _ecpayRequire;
  set ecpayRequire(EcpayRequireDataStruct value) {
    _ecpayRequire = value;
  }

  void updateEcpayRequireStruct(Function(EcpayRequireDataStruct) updateFn) {
    updateFn(_ecpayRequire);
  }
}
