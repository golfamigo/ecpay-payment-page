// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderInfoStruct extends FFFirebaseStruct {
  OrderInfoStruct({
    String? merchantTradeNo,
    int? totalAmount,
    String? returnURL,
    String? tradeDesc,
    String? itemName,
    String? merchantTradeDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _merchantTradeNo = merchantTradeNo,
        _totalAmount = totalAmount,
        _returnURL = returnURL,
        _tradeDesc = tradeDesc,
        _itemName = itemName,
        _merchantTradeDate = merchantTradeDate,
        super(firestoreUtilData);

  // "MerchantTradeNo" field.
  String? _merchantTradeNo;
  String get merchantTradeNo => _merchantTradeNo ?? '';
  set merchantTradeNo(String? val) => _merchantTradeNo = val;
  bool hasMerchantTradeNo() => _merchantTradeNo != null;

  // "TotalAmount" field.
  int? _totalAmount;
  int get totalAmount => _totalAmount ?? 0;
  set totalAmount(int? val) => _totalAmount = val;
  void incrementTotalAmount(int amount) => _totalAmount = totalAmount + amount;
  bool hasTotalAmount() => _totalAmount != null;

  // "ReturnURL" field.
  String? _returnURL;
  String get returnURL => _returnURL ?? '';
  set returnURL(String? val) => _returnURL = val;
  bool hasReturnURL() => _returnURL != null;

  // "TradeDesc" field.
  String? _tradeDesc;
  String get tradeDesc => _tradeDesc ?? '';
  set tradeDesc(String? val) => _tradeDesc = val;
  bool hasTradeDesc() => _tradeDesc != null;

  // "ItemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;
  bool hasItemName() => _itemName != null;

  // "MerchantTradeDate" field.
  String? _merchantTradeDate;
  String get merchantTradeDate => _merchantTradeDate ?? '';
  set merchantTradeDate(String? val) => _merchantTradeDate = val;
  bool hasMerchantTradeDate() => _merchantTradeDate != null;

  static OrderInfoStruct fromMap(Map<String, dynamic> data) => OrderInfoStruct(
        merchantTradeNo: data['MerchantTradeNo'] as String?,
        totalAmount: castToType<int>(data['TotalAmount']),
        returnURL: data['ReturnURL'] as String?,
        tradeDesc: data['TradeDesc'] as String?,
        itemName: data['ItemName'] as String?,
        merchantTradeDate: data['MerchantTradeDate'] as String?,
      );

  static OrderInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'MerchantTradeNo': _merchantTradeNo,
        'TotalAmount': _totalAmount,
        'ReturnURL': _returnURL,
        'TradeDesc': _tradeDesc,
        'ItemName': _itemName,
        'MerchantTradeDate': _merchantTradeDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'MerchantTradeNo': serializeParam(
          _merchantTradeNo,
          ParamType.String,
        ),
        'TotalAmount': serializeParam(
          _totalAmount,
          ParamType.int,
        ),
        'ReturnURL': serializeParam(
          _returnURL,
          ParamType.String,
        ),
        'TradeDesc': serializeParam(
          _tradeDesc,
          ParamType.String,
        ),
        'ItemName': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'MerchantTradeDate': serializeParam(
          _merchantTradeDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderInfoStruct(
        merchantTradeNo: deserializeParam(
          data['MerchantTradeNo'],
          ParamType.String,
          false,
        ),
        totalAmount: deserializeParam(
          data['TotalAmount'],
          ParamType.int,
          false,
        ),
        returnURL: deserializeParam(
          data['ReturnURL'],
          ParamType.String,
          false,
        ),
        tradeDesc: deserializeParam(
          data['TradeDesc'],
          ParamType.String,
          false,
        ),
        itemName: deserializeParam(
          data['ItemName'],
          ParamType.String,
          false,
        ),
        merchantTradeDate: deserializeParam(
          data['MerchantTradeDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderInfoStruct &&
        merchantTradeNo == other.merchantTradeNo &&
        totalAmount == other.totalAmount &&
        returnURL == other.returnURL &&
        tradeDesc == other.tradeDesc &&
        itemName == other.itemName &&
        merchantTradeDate == other.merchantTradeDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        merchantTradeNo,
        totalAmount,
        returnURL,
        tradeDesc,
        itemName,
        merchantTradeDate
      ]);
}

OrderInfoStruct createOrderInfoStruct({
  String? merchantTradeNo,
  int? totalAmount,
  String? returnURL,
  String? tradeDesc,
  String? itemName,
  String? merchantTradeDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderInfoStruct(
      merchantTradeNo: merchantTradeNo,
      totalAmount: totalAmount,
      returnURL: returnURL,
      tradeDesc: tradeDesc,
      itemName: itemName,
      merchantTradeDate: merchantTradeDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderInfoStruct? updateOrderInfoStruct(
  OrderInfoStruct? orderInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderInfoStructData(
  Map<String, dynamic> firestoreData,
  OrderInfoStruct? orderInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderInfo == null) {
    return;
  }
  if (orderInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderInfoData = getOrderInfoFirestoreData(orderInfo, forFieldValue);
  final nestedData = orderInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderInfoFirestoreData(
  OrderInfoStruct? orderInfo, [
  bool forFieldValue = false,
]) {
  if (orderInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderInfo.toMap());

  // Add any Firestore field values
  orderInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderInfoListFirestoreData(
  List<OrderInfoStruct>? orderInfos,
) =>
    orderInfos?.map((e) => getOrderInfoFirestoreData(e, true)).toList() ?? [];
