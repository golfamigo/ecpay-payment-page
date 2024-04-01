// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ATMInfoStruct extends FFFirebaseStruct {
  ATMInfoStruct({
    int? expireDate,
    String? aTMBankCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _expireDate = expireDate,
        _aTMBankCode = aTMBankCode,
        super(firestoreUtilData);

  // "ExpireDate" field.
  int? _expireDate;
  int get expireDate => _expireDate ?? 3;
  set expireDate(int? val) => _expireDate = val;
  void incrementExpireDate(int amount) => _expireDate = expireDate + amount;
  bool hasExpireDate() => _expireDate != null;

  // "ATMBankCode" field.
  String? _aTMBankCode;
  String get aTMBankCode => _aTMBankCode ?? '007';
  set aTMBankCode(String? val) => _aTMBankCode = val;
  bool hasATMBankCode() => _aTMBankCode != null;

  static ATMInfoStruct fromMap(Map<String, dynamic> data) => ATMInfoStruct(
        expireDate: castToType<int>(data['ExpireDate']),
        aTMBankCode: data['ATMBankCode'] as String?,
      );

  static ATMInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ATMInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ExpireDate': _expireDate,
        'ATMBankCode': _aTMBankCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ExpireDate': serializeParam(
          _expireDate,
          ParamType.int,
        ),
        'ATMBankCode': serializeParam(
          _aTMBankCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static ATMInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ATMInfoStruct(
        expireDate: deserializeParam(
          data['ExpireDate'],
          ParamType.int,
          false,
        ),
        aTMBankCode: deserializeParam(
          data['ATMBankCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ATMInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ATMInfoStruct &&
        expireDate == other.expireDate &&
        aTMBankCode == other.aTMBankCode;
  }

  @override
  int get hashCode => const ListEquality().hash([expireDate, aTMBankCode]);
}

ATMInfoStruct createATMInfoStruct({
  int? expireDate,
  String? aTMBankCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ATMInfoStruct(
      expireDate: expireDate,
      aTMBankCode: aTMBankCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ATMInfoStruct? updateATMInfoStruct(
  ATMInfoStruct? aTMInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aTMInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addATMInfoStructData(
  Map<String, dynamic> firestoreData,
  ATMInfoStruct? aTMInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aTMInfo == null) {
    return;
  }
  if (aTMInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aTMInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aTMInfoData = getATMInfoFirestoreData(aTMInfo, forFieldValue);
  final nestedData = aTMInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aTMInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getATMInfoFirestoreData(
  ATMInfoStruct? aTMInfo, [
  bool forFieldValue = false,
]) {
  if (aTMInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aTMInfo.toMap());

  // Add any Firestore field values
  aTMInfo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getATMInfoListFirestoreData(
  List<ATMInfoStruct>? aTMInfos,
) =>
    aTMInfos?.map((e) => getATMInfoFirestoreData(e, true)).toList() ?? [];
