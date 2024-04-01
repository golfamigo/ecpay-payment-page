// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ConsumerInfoStruct extends FFFirebaseStruct {
  ConsumerInfoStruct({
    String? merchantMemberID,
    String? email,
    String? phone,
    String? name,
    String? countryCode,
    String? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _merchantMemberID = merchantMemberID,
        _email = email,
        _phone = phone,
        _name = name,
        _countryCode = countryCode,
        _address = address,
        super(firestoreUtilData);

  // "MerchantMemberID" field.
  String? _merchantMemberID;
  String get merchantMemberID => _merchantMemberID ?? '';
  set merchantMemberID(String? val) => _merchantMemberID = val;
  bool hasMerchantMemberID() => _merchantMemberID != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "CountryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '158';
  set countryCode(String? val) => _countryCode = val;
  bool hasCountryCode() => _countryCode != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  static ConsumerInfoStruct fromMap(Map<String, dynamic> data) =>
      ConsumerInfoStruct(
        merchantMemberID: data['MerchantMemberID'] as String?,
        email: data['Email'] as String?,
        phone: data['Phone'] as String?,
        name: data['Name'] as String?,
        countryCode: data['CountryCode'] as String?,
        address: data['Address'] as String?,
      );

  static ConsumerInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? ConsumerInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'MerchantMemberID': _merchantMemberID,
        'Email': _email,
        'Phone': _phone,
        'Name': _name,
        'CountryCode': _countryCode,
        'Address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'MerchantMemberID': serializeParam(
          _merchantMemberID,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'CountryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'Address': serializeParam(
          _address,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConsumerInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConsumerInfoStruct(
        merchantMemberID: deserializeParam(
          data['MerchantMemberID'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['Phone'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['CountryCode'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['Address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConsumerInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConsumerInfoStruct &&
        merchantMemberID == other.merchantMemberID &&
        email == other.email &&
        phone == other.phone &&
        name == other.name &&
        countryCode == other.countryCode &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([merchantMemberID, email, phone, name, countryCode, address]);
}

ConsumerInfoStruct createConsumerInfoStruct({
  String? merchantMemberID,
  String? email,
  String? phone,
  String? name,
  String? countryCode,
  String? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConsumerInfoStruct(
      merchantMemberID: merchantMemberID,
      email: email,
      phone: phone,
      name: name,
      countryCode: countryCode,
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConsumerInfoStruct? updateConsumerInfoStruct(
  ConsumerInfoStruct? consumerInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    consumerInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConsumerInfoStructData(
  Map<String, dynamic> firestoreData,
  ConsumerInfoStruct? consumerInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (consumerInfo == null) {
    return;
  }
  if (consumerInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && consumerInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final consumerInfoData =
      getConsumerInfoFirestoreData(consumerInfo, forFieldValue);
  final nestedData =
      consumerInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = consumerInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConsumerInfoFirestoreData(
  ConsumerInfoStruct? consumerInfo, [
  bool forFieldValue = false,
]) {
  if (consumerInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(consumerInfo.toMap());

  // Add any Firestore field values
  consumerInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConsumerInfoListFirestoreData(
  List<ConsumerInfoStruct>? consumerInfos,
) =>
    consumerInfos?.map((e) => getConsumerInfoFirestoreData(e, true)).toList() ??
    [];
