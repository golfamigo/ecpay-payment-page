// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardInfoStruct extends FFFirebaseStruct {
  CardInfoStruct({
    String? redeem,
    int? periodAmount,
    String? periodType,
    int? frequency,
    String? orderResultURL,
    int? execTimes,
    String? periodReturnURL,
    String? creditInstallment,
    String? flexibleInstallment,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _redeem = redeem,
        _periodAmount = periodAmount,
        _periodType = periodType,
        _frequency = frequency,
        _orderResultURL = orderResultURL,
        _execTimes = execTimes,
        _periodReturnURL = periodReturnURL,
        _creditInstallment = creditInstallment,
        _flexibleInstallment = flexibleInstallment,
        super(firestoreUtilData);

  // "Redeem" field.
  String? _redeem;
  String get redeem => _redeem ?? '0';
  set redeem(String? val) => _redeem = val;
  bool hasRedeem() => _redeem != null;

  // "PeriodAmount" field.
  int? _periodAmount;
  int get periodAmount => _periodAmount ?? 0;
  set periodAmount(int? val) => _periodAmount = val;
  void incrementPeriodAmount(int amount) =>
      _periodAmount = periodAmount + amount;
  bool hasPeriodAmount() => _periodAmount != null;

  // "PeriodType" field.
  String? _periodType;
  String get periodType => _periodType ?? 'M';
  set periodType(String? val) => _periodType = val;
  bool hasPeriodType() => _periodType != null;

  // "Frequency" field.
  int? _frequency;
  int get frequency => _frequency ?? 1;
  set frequency(int? val) => _frequency = val;
  void incrementFrequency(int amount) => _frequency = frequency + amount;
  bool hasFrequency() => _frequency != null;

  // "OrderResultURL" field.
  String? _orderResultURL;
  String get orderResultURL =>
      _orderResultURL ?? 'https://pay.d2e.fun/order_result.php';
  set orderResultURL(String? val) => _orderResultURL = val;
  bool hasOrderResultURL() => _orderResultURL != null;

  // "ExecTimes" field.
  int? _execTimes;
  int get execTimes => _execTimes ?? 12;
  set execTimes(int? val) => _execTimes = val;
  void incrementExecTimes(int amount) => _execTimes = execTimes + amount;
  bool hasExecTimes() => _execTimes != null;

  // "PeriodReturnURL" field.
  String? _periodReturnURL;
  String get periodReturnURL =>
      _periodReturnURL ?? 'https://pay.d2e.fun/period_return.php';
  set periodReturnURL(String? val) => _periodReturnURL = val;
  bool hasPeriodReturnURL() => _periodReturnURL != null;

  // "CreditInstallment" field.
  String? _creditInstallment;
  String get creditInstallment => _creditInstallment ?? '3,6,12,18,24';
  set creditInstallment(String? val) => _creditInstallment = val;
  bool hasCreditInstallment() => _creditInstallment != null;

  // "FlexibleInstallment" field.
  String? _flexibleInstallment;
  String get flexibleInstallment => _flexibleInstallment ?? '30';
  set flexibleInstallment(String? val) => _flexibleInstallment = val;
  bool hasFlexibleInstallment() => _flexibleInstallment != null;

  static CardInfoStruct fromMap(Map<String, dynamic> data) => CardInfoStruct(
        redeem: data['Redeem'] as String?,
        periodAmount: castToType<int>(data['PeriodAmount']),
        periodType: data['PeriodType'] as String?,
        frequency: castToType<int>(data['Frequency']),
        orderResultURL: data['OrderResultURL'] as String?,
        execTimes: castToType<int>(data['ExecTimes']),
        periodReturnURL: data['PeriodReturnURL'] as String?,
        creditInstallment: data['CreditInstallment'] as String?,
        flexibleInstallment: data['FlexibleInstallment'] as String?,
      );

  static CardInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Redeem': _redeem,
        'PeriodAmount': _periodAmount,
        'PeriodType': _periodType,
        'Frequency': _frequency,
        'OrderResultURL': _orderResultURL,
        'ExecTimes': _execTimes,
        'PeriodReturnURL': _periodReturnURL,
        'CreditInstallment': _creditInstallment,
        'FlexibleInstallment': _flexibleInstallment,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Redeem': serializeParam(
          _redeem,
          ParamType.String,
        ),
        'PeriodAmount': serializeParam(
          _periodAmount,
          ParamType.int,
        ),
        'PeriodType': serializeParam(
          _periodType,
          ParamType.String,
        ),
        'Frequency': serializeParam(
          _frequency,
          ParamType.int,
        ),
        'OrderResultURL': serializeParam(
          _orderResultURL,
          ParamType.String,
        ),
        'ExecTimes': serializeParam(
          _execTimes,
          ParamType.int,
        ),
        'PeriodReturnURL': serializeParam(
          _periodReturnURL,
          ParamType.String,
        ),
        'CreditInstallment': serializeParam(
          _creditInstallment,
          ParamType.String,
        ),
        'FlexibleInstallment': serializeParam(
          _flexibleInstallment,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardInfoStruct(
        redeem: deserializeParam(
          data['Redeem'],
          ParamType.String,
          false,
        ),
        periodAmount: deserializeParam(
          data['PeriodAmount'],
          ParamType.int,
          false,
        ),
        periodType: deserializeParam(
          data['PeriodType'],
          ParamType.String,
          false,
        ),
        frequency: deserializeParam(
          data['Frequency'],
          ParamType.int,
          false,
        ),
        orderResultURL: deserializeParam(
          data['OrderResultURL'],
          ParamType.String,
          false,
        ),
        execTimes: deserializeParam(
          data['ExecTimes'],
          ParamType.int,
          false,
        ),
        periodReturnURL: deserializeParam(
          data['PeriodReturnURL'],
          ParamType.String,
          false,
        ),
        creditInstallment: deserializeParam(
          data['CreditInstallment'],
          ParamType.String,
          false,
        ),
        flexibleInstallment: deserializeParam(
          data['FlexibleInstallment'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardInfoStruct &&
        redeem == other.redeem &&
        periodAmount == other.periodAmount &&
        periodType == other.periodType &&
        frequency == other.frequency &&
        orderResultURL == other.orderResultURL &&
        execTimes == other.execTimes &&
        periodReturnURL == other.periodReturnURL &&
        creditInstallment == other.creditInstallment &&
        flexibleInstallment == other.flexibleInstallment;
  }

  @override
  int get hashCode => const ListEquality().hash([
        redeem,
        periodAmount,
        periodType,
        frequency,
        orderResultURL,
        execTimes,
        periodReturnURL,
        creditInstallment,
        flexibleInstallment
      ]);
}

CardInfoStruct createCardInfoStruct({
  String? redeem,
  int? periodAmount,
  String? periodType,
  int? frequency,
  String? orderResultURL,
  int? execTimes,
  String? periodReturnURL,
  String? creditInstallment,
  String? flexibleInstallment,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardInfoStruct(
      redeem: redeem,
      periodAmount: periodAmount,
      periodType: periodType,
      frequency: frequency,
      orderResultURL: orderResultURL,
      execTimes: execTimes,
      periodReturnURL: periodReturnURL,
      creditInstallment: creditInstallment,
      flexibleInstallment: flexibleInstallment,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardInfoStruct? updateCardInfoStruct(
  CardInfoStruct? cardInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cardInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardInfoStructData(
  Map<String, dynamic> firestoreData,
  CardInfoStruct? cardInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cardInfo == null) {
    return;
  }
  if (cardInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cardInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardInfoData = getCardInfoFirestoreData(cardInfo, forFieldValue);
  final nestedData = cardInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cardInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardInfoFirestoreData(
  CardInfoStruct? cardInfo, [
  bool forFieldValue = false,
]) {
  if (cardInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cardInfo.toMap());

  // Add any Firestore field values
  cardInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardInfoListFirestoreData(
  List<CardInfoStruct>? cardInfos,
) =>
    cardInfos?.map((e) => getCardInfoFirestoreData(e, true)).toList() ?? [];
