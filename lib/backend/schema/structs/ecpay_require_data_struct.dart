// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EcpayRequireDataStruct extends FFFirebaseStruct {
  EcpayRequireDataStruct({
    String? merchantID,
    int? rememberCard,
    int? paymentUIType,
    String? choosePaymentList,
    OrderInfoStruct? orderInfo,
    CardInfoStruct? cardInfo,
    UnionPayInfoStruct? unionPayInfo,
    ATMInfoStruct? aTMInfo,
    CVSInfoStruct? cVSInfo,
    BarcodeInfoStruct? barcodeInfo,
    ConsumerInfoStruct? consumerInfo,
    String? customField,
    String? name,
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _merchantID = merchantID,
        _rememberCard = rememberCard,
        _paymentUIType = paymentUIType,
        _choosePaymentList = choosePaymentList,
        _orderInfo = orderInfo,
        _cardInfo = cardInfo,
        _unionPayInfo = unionPayInfo,
        _aTMInfo = aTMInfo,
        _cVSInfo = cVSInfo,
        _barcodeInfo = barcodeInfo,
        _consumerInfo = consumerInfo,
        _customField = customField,
        _name = name,
        _id = id,
        super(firestoreUtilData);

  // "MerchantID" field.
  String? _merchantID;
  String get merchantID => _merchantID ?? '3002607';
  set merchantID(String? val) => _merchantID = val;
  bool hasMerchantID() => _merchantID != null;

  // "RememberCard" field.
  int? _rememberCard;
  int get rememberCard => _rememberCard ?? 1;
  set rememberCard(int? val) => _rememberCard = val;
  void incrementRememberCard(int amount) =>
      _rememberCard = rememberCard + amount;
  bool hasRememberCard() => _rememberCard != null;

  // "PaymentUIType" field.
  int? _paymentUIType;
  int get paymentUIType => _paymentUIType ?? 2;
  set paymentUIType(int? val) => _paymentUIType = val;
  void incrementPaymentUIType(int amount) =>
      _paymentUIType = paymentUIType + amount;
  bool hasPaymentUIType() => _paymentUIType != null;

  // "ChoosePaymentList" field.
  String? _choosePaymentList;
  String get choosePaymentList => _choosePaymentList ?? '1,6';
  set choosePaymentList(String? val) => _choosePaymentList = val;
  bool hasChoosePaymentList() => _choosePaymentList != null;

  // "OrderInfo" field.
  OrderInfoStruct? _orderInfo;
  OrderInfoStruct get orderInfo => _orderInfo ?? OrderInfoStruct();
  set orderInfo(OrderInfoStruct? val) => _orderInfo = val;
  void updateOrderInfo(Function(OrderInfoStruct) updateFn) =>
      updateFn(_orderInfo ??= OrderInfoStruct());
  bool hasOrderInfo() => _orderInfo != null;

  // "CardInfo" field.
  CardInfoStruct? _cardInfo;
  CardInfoStruct get cardInfo => _cardInfo ?? CardInfoStruct();
  set cardInfo(CardInfoStruct? val) => _cardInfo = val;
  void updateCardInfo(Function(CardInfoStruct) updateFn) =>
      updateFn(_cardInfo ??= CardInfoStruct());
  bool hasCardInfo() => _cardInfo != null;

  // "UnionPayInfo" field.
  UnionPayInfoStruct? _unionPayInfo;
  UnionPayInfoStruct get unionPayInfo => _unionPayInfo ?? UnionPayInfoStruct();
  set unionPayInfo(UnionPayInfoStruct? val) => _unionPayInfo = val;
  void updateUnionPayInfo(Function(UnionPayInfoStruct) updateFn) =>
      updateFn(_unionPayInfo ??= UnionPayInfoStruct());
  bool hasUnionPayInfo() => _unionPayInfo != null;

  // "ATMInfo" field.
  ATMInfoStruct? _aTMInfo;
  ATMInfoStruct get aTMInfo => _aTMInfo ?? ATMInfoStruct();
  set aTMInfo(ATMInfoStruct? val) => _aTMInfo = val;
  void updateATMInfo(Function(ATMInfoStruct) updateFn) =>
      updateFn(_aTMInfo ??= ATMInfoStruct());
  bool hasATMInfo() => _aTMInfo != null;

  // "CVSInfo" field.
  CVSInfoStruct? _cVSInfo;
  CVSInfoStruct get cVSInfo => _cVSInfo ?? CVSInfoStruct();
  set cVSInfo(CVSInfoStruct? val) => _cVSInfo = val;
  void updateCVSInfo(Function(CVSInfoStruct) updateFn) =>
      updateFn(_cVSInfo ??= CVSInfoStruct());
  bool hasCVSInfo() => _cVSInfo != null;

  // "BarcodeInfo" field.
  BarcodeInfoStruct? _barcodeInfo;
  BarcodeInfoStruct get barcodeInfo => _barcodeInfo ?? BarcodeInfoStruct();
  set barcodeInfo(BarcodeInfoStruct? val) => _barcodeInfo = val;
  void updateBarcodeInfo(Function(BarcodeInfoStruct) updateFn) =>
      updateFn(_barcodeInfo ??= BarcodeInfoStruct());
  bool hasBarcodeInfo() => _barcodeInfo != null;

  // "ConsumerInfo" field.
  ConsumerInfoStruct? _consumerInfo;
  ConsumerInfoStruct get consumerInfo => _consumerInfo ?? ConsumerInfoStruct();
  set consumerInfo(ConsumerInfoStruct? val) => _consumerInfo = val;
  void updateConsumerInfo(Function(ConsumerInfoStruct) updateFn) =>
      updateFn(_consumerInfo ??= ConsumerInfoStruct());
  bool hasConsumerInfo() => _consumerInfo != null;

  // "CustomField" field.
  String? _customField;
  String get customField => _customField ?? '';
  set customField(String? val) => _customField = val;
  bool hasCustomField() => _customField != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static EcpayRequireDataStruct fromMap(Map<String, dynamic> data) =>
      EcpayRequireDataStruct(
        merchantID: data['MerchantID'] as String?,
        rememberCard: castToType<int>(data['RememberCard']),
        paymentUIType: castToType<int>(data['PaymentUIType']),
        choosePaymentList: data['ChoosePaymentList'] as String?,
        orderInfo: OrderInfoStruct.maybeFromMap(data['OrderInfo']),
        cardInfo: CardInfoStruct.maybeFromMap(data['CardInfo']),
        unionPayInfo: UnionPayInfoStruct.maybeFromMap(data['UnionPayInfo']),
        aTMInfo: ATMInfoStruct.maybeFromMap(data['ATMInfo']),
        cVSInfo: CVSInfoStruct.maybeFromMap(data['CVSInfo']),
        barcodeInfo: BarcodeInfoStruct.maybeFromMap(data['BarcodeInfo']),
        consumerInfo: ConsumerInfoStruct.maybeFromMap(data['ConsumerInfo']),
        customField: data['CustomField'] as String?,
        name: data['Name'] as String?,
        id: data['ID'] as String?,
      );

  static EcpayRequireDataStruct? maybeFromMap(dynamic data) => data is Map
      ? EcpayRequireDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'MerchantID': _merchantID,
        'RememberCard': _rememberCard,
        'PaymentUIType': _paymentUIType,
        'ChoosePaymentList': _choosePaymentList,
        'OrderInfo': _orderInfo?.toMap(),
        'CardInfo': _cardInfo?.toMap(),
        'UnionPayInfo': _unionPayInfo?.toMap(),
        'ATMInfo': _aTMInfo?.toMap(),
        'CVSInfo': _cVSInfo?.toMap(),
        'BarcodeInfo': _barcodeInfo?.toMap(),
        'ConsumerInfo': _consumerInfo?.toMap(),
        'CustomField': _customField,
        'Name': _name,
        'ID': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'MerchantID': serializeParam(
          _merchantID,
          ParamType.String,
        ),
        'RememberCard': serializeParam(
          _rememberCard,
          ParamType.int,
        ),
        'PaymentUIType': serializeParam(
          _paymentUIType,
          ParamType.int,
        ),
        'ChoosePaymentList': serializeParam(
          _choosePaymentList,
          ParamType.String,
        ),
        'OrderInfo': serializeParam(
          _orderInfo,
          ParamType.DataStruct,
        ),
        'CardInfo': serializeParam(
          _cardInfo,
          ParamType.DataStruct,
        ),
        'UnionPayInfo': serializeParam(
          _unionPayInfo,
          ParamType.DataStruct,
        ),
        'ATMInfo': serializeParam(
          _aTMInfo,
          ParamType.DataStruct,
        ),
        'CVSInfo': serializeParam(
          _cVSInfo,
          ParamType.DataStruct,
        ),
        'BarcodeInfo': serializeParam(
          _barcodeInfo,
          ParamType.DataStruct,
        ),
        'ConsumerInfo': serializeParam(
          _consumerInfo,
          ParamType.DataStruct,
        ),
        'CustomField': serializeParam(
          _customField,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static EcpayRequireDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EcpayRequireDataStruct(
        merchantID: deserializeParam(
          data['MerchantID'],
          ParamType.String,
          false,
        ),
        rememberCard: deserializeParam(
          data['RememberCard'],
          ParamType.int,
          false,
        ),
        paymentUIType: deserializeParam(
          data['PaymentUIType'],
          ParamType.int,
          false,
        ),
        choosePaymentList: deserializeParam(
          data['ChoosePaymentList'],
          ParamType.String,
          false,
        ),
        orderInfo: deserializeStructParam(
          data['OrderInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: OrderInfoStruct.fromSerializableMap,
        ),
        cardInfo: deserializeStructParam(
          data['CardInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: CardInfoStruct.fromSerializableMap,
        ),
        unionPayInfo: deserializeStructParam(
          data['UnionPayInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: UnionPayInfoStruct.fromSerializableMap,
        ),
        aTMInfo: deserializeStructParam(
          data['ATMInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: ATMInfoStruct.fromSerializableMap,
        ),
        cVSInfo: deserializeStructParam(
          data['CVSInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: CVSInfoStruct.fromSerializableMap,
        ),
        barcodeInfo: deserializeStructParam(
          data['BarcodeInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: BarcodeInfoStruct.fromSerializableMap,
        ),
        consumerInfo: deserializeStructParam(
          data['ConsumerInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: ConsumerInfoStruct.fromSerializableMap,
        ),
        customField: deserializeParam(
          data['CustomField'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EcpayRequireDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EcpayRequireDataStruct &&
        merchantID == other.merchantID &&
        rememberCard == other.rememberCard &&
        paymentUIType == other.paymentUIType &&
        choosePaymentList == other.choosePaymentList &&
        orderInfo == other.orderInfo &&
        cardInfo == other.cardInfo &&
        unionPayInfo == other.unionPayInfo &&
        aTMInfo == other.aTMInfo &&
        cVSInfo == other.cVSInfo &&
        barcodeInfo == other.barcodeInfo &&
        consumerInfo == other.consumerInfo &&
        customField == other.customField &&
        name == other.name &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([
        merchantID,
        rememberCard,
        paymentUIType,
        choosePaymentList,
        orderInfo,
        cardInfo,
        unionPayInfo,
        aTMInfo,
        cVSInfo,
        barcodeInfo,
        consumerInfo,
        customField,
        name,
        id
      ]);
}

EcpayRequireDataStruct createEcpayRequireDataStruct({
  String? merchantID,
  int? rememberCard,
  int? paymentUIType,
  String? choosePaymentList,
  OrderInfoStruct? orderInfo,
  CardInfoStruct? cardInfo,
  UnionPayInfoStruct? unionPayInfo,
  ATMInfoStruct? aTMInfo,
  CVSInfoStruct? cVSInfo,
  BarcodeInfoStruct? barcodeInfo,
  ConsumerInfoStruct? consumerInfo,
  String? customField,
  String? name,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EcpayRequireDataStruct(
      merchantID: merchantID,
      rememberCard: rememberCard,
      paymentUIType: paymentUIType,
      choosePaymentList: choosePaymentList,
      orderInfo: orderInfo ?? (clearUnsetFields ? OrderInfoStruct() : null),
      cardInfo: cardInfo ?? (clearUnsetFields ? CardInfoStruct() : null),
      unionPayInfo:
          unionPayInfo ?? (clearUnsetFields ? UnionPayInfoStruct() : null),
      aTMInfo: aTMInfo ?? (clearUnsetFields ? ATMInfoStruct() : null),
      cVSInfo: cVSInfo ?? (clearUnsetFields ? CVSInfoStruct() : null),
      barcodeInfo:
          barcodeInfo ?? (clearUnsetFields ? BarcodeInfoStruct() : null),
      consumerInfo:
          consumerInfo ?? (clearUnsetFields ? ConsumerInfoStruct() : null),
      customField: customField,
      name: name,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EcpayRequireDataStruct? updateEcpayRequireDataStruct(
  EcpayRequireDataStruct? ecpayRequireData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ecpayRequireData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEcpayRequireDataStructData(
  Map<String, dynamic> firestoreData,
  EcpayRequireDataStruct? ecpayRequireData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ecpayRequireData == null) {
    return;
  }
  if (ecpayRequireData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ecpayRequireData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ecpayRequireDataData =
      getEcpayRequireDataFirestoreData(ecpayRequireData, forFieldValue);
  final nestedData =
      ecpayRequireDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ecpayRequireData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEcpayRequireDataFirestoreData(
  EcpayRequireDataStruct? ecpayRequireData, [
  bool forFieldValue = false,
]) {
  if (ecpayRequireData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ecpayRequireData.toMap());

  // Handle nested data for "OrderInfo" field.
  addOrderInfoStructData(
    firestoreData,
    ecpayRequireData.hasOrderInfo() ? ecpayRequireData.orderInfo : null,
    'OrderInfo',
    forFieldValue,
  );

  // Handle nested data for "CardInfo" field.
  addCardInfoStructData(
    firestoreData,
    ecpayRequireData.hasCardInfo() ? ecpayRequireData.cardInfo : null,
    'CardInfo',
    forFieldValue,
  );

  // Handle nested data for "UnionPayInfo" field.
  addUnionPayInfoStructData(
    firestoreData,
    ecpayRequireData.hasUnionPayInfo() ? ecpayRequireData.unionPayInfo : null,
    'UnionPayInfo',
    forFieldValue,
  );

  // Handle nested data for "ATMInfo" field.
  addATMInfoStructData(
    firestoreData,
    ecpayRequireData.hasATMInfo() ? ecpayRequireData.aTMInfo : null,
    'ATMInfo',
    forFieldValue,
  );

  // Handle nested data for "CVSInfo" field.
  addCVSInfoStructData(
    firestoreData,
    ecpayRequireData.hasCVSInfo() ? ecpayRequireData.cVSInfo : null,
    'CVSInfo',
    forFieldValue,
  );

  // Handle nested data for "BarcodeInfo" field.
  addBarcodeInfoStructData(
    firestoreData,
    ecpayRequireData.hasBarcodeInfo() ? ecpayRequireData.barcodeInfo : null,
    'BarcodeInfo',
    forFieldValue,
  );

  // Handle nested data for "ConsumerInfo" field.
  addConsumerInfoStructData(
    firestoreData,
    ecpayRequireData.hasConsumerInfo() ? ecpayRequireData.consumerInfo : null,
    'ConsumerInfo',
    forFieldValue,
  );

  // Add any Firestore field values
  ecpayRequireData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEcpayRequireDataListFirestoreData(
  List<EcpayRequireDataStruct>? ecpayRequireDatas,
) =>
    ecpayRequireDatas
        ?.map((e) => getEcpayRequireDataFirestoreData(e, true))
        .toList() ??
    [];
