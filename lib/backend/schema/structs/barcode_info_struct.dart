// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BarcodeInfoStruct extends FFFirebaseStruct {
  BarcodeInfoStruct({
    int? storeExpireDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _storeExpireDate = storeExpireDate,
        super(firestoreUtilData);

  // "StoreExpireDate" field.
  int? _storeExpireDate;
  int get storeExpireDate => _storeExpireDate ?? 0;
  set storeExpireDate(int? val) => _storeExpireDate = val;
  void incrementStoreExpireDate(int amount) =>
      _storeExpireDate = storeExpireDate + amount;
  bool hasStoreExpireDate() => _storeExpireDate != null;

  static BarcodeInfoStruct fromMap(Map<String, dynamic> data) =>
      BarcodeInfoStruct(
        storeExpireDate: castToType<int>(data['StoreExpireDate']),
      );

  static BarcodeInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? BarcodeInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StoreExpireDate': _storeExpireDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'StoreExpireDate': serializeParam(
          _storeExpireDate,
          ParamType.int,
        ),
      }.withoutNulls;

  static BarcodeInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      BarcodeInfoStruct(
        storeExpireDate: deserializeParam(
          data['StoreExpireDate'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BarcodeInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BarcodeInfoStruct &&
        storeExpireDate == other.storeExpireDate;
  }

  @override
  int get hashCode => const ListEquality().hash([storeExpireDate]);
}

BarcodeInfoStruct createBarcodeInfoStruct({
  int? storeExpireDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BarcodeInfoStruct(
      storeExpireDate: storeExpireDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BarcodeInfoStruct? updateBarcodeInfoStruct(
  BarcodeInfoStruct? barcodeInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    barcodeInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBarcodeInfoStructData(
  Map<String, dynamic> firestoreData,
  BarcodeInfoStruct? barcodeInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (barcodeInfo == null) {
    return;
  }
  if (barcodeInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && barcodeInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final barcodeInfoData =
      getBarcodeInfoFirestoreData(barcodeInfo, forFieldValue);
  final nestedData =
      barcodeInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = barcodeInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBarcodeInfoFirestoreData(
  BarcodeInfoStruct? barcodeInfo, [
  bool forFieldValue = false,
]) {
  if (barcodeInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(barcodeInfo.toMap());

  // Add any Firestore field values
  barcodeInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBarcodeInfoListFirestoreData(
  List<BarcodeInfoStruct>? barcodeInfos,
) =>
    barcodeInfos?.map((e) => getBarcodeInfoFirestoreData(e, true)).toList() ??
    [];
