// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UnionPayInfoStruct extends FFFirebaseStruct {
  UnionPayInfoStruct({
    String? orderResultURL,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _orderResultURL = orderResultURL,
        super(firestoreUtilData);

  // "OrderResultURL" field.
  String? _orderResultURL;
  String get orderResultURL => _orderResultURL ?? '';
  set orderResultURL(String? val) => _orderResultURL = val;
  bool hasOrderResultURL() => _orderResultURL != null;

  static UnionPayInfoStruct fromMap(Map<String, dynamic> data) =>
      UnionPayInfoStruct(
        orderResultURL: data['OrderResultURL'] as String?,
      );

  static UnionPayInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? UnionPayInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OrderResultURL': _orderResultURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OrderResultURL': serializeParam(
          _orderResultURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnionPayInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnionPayInfoStruct(
        orderResultURL: deserializeParam(
          data['OrderResultURL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UnionPayInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnionPayInfoStruct &&
        orderResultURL == other.orderResultURL;
  }

  @override
  int get hashCode => const ListEquality().hash([orderResultURL]);
}

UnionPayInfoStruct createUnionPayInfoStruct({
  String? orderResultURL,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UnionPayInfoStruct(
      orderResultURL: orderResultURL,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UnionPayInfoStruct? updateUnionPayInfoStruct(
  UnionPayInfoStruct? unionPayInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    unionPayInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUnionPayInfoStructData(
  Map<String, dynamic> firestoreData,
  UnionPayInfoStruct? unionPayInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (unionPayInfo == null) {
    return;
  }
  if (unionPayInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && unionPayInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final unionPayInfoData =
      getUnionPayInfoFirestoreData(unionPayInfo, forFieldValue);
  final nestedData =
      unionPayInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = unionPayInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUnionPayInfoFirestoreData(
  UnionPayInfoStruct? unionPayInfo, [
  bool forFieldValue = false,
]) {
  if (unionPayInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(unionPayInfo.toMap());

  // Add any Firestore field values
  unionPayInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUnionPayInfoListFirestoreData(
  List<UnionPayInfoStruct>? unionPayInfos,
) =>
    unionPayInfos?.map((e) => getUnionPayInfoFirestoreData(e, true)).toList() ??
    [];
