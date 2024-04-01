// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CVSInfoStruct extends FFFirebaseStruct {
  CVSInfoStruct({
    int? storeExpireDate,
    String? cVSCode,
    String? desc1,
    String? desc2,
    String? desc3,
    String? desc4,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _storeExpireDate = storeExpireDate,
        _cVSCode = cVSCode,
        _desc1 = desc1,
        _desc2 = desc2,
        _desc3 = desc3,
        _desc4 = desc4,
        super(firestoreUtilData);

  // "StoreExpireDate" field.
  int? _storeExpireDate;
  int get storeExpireDate => _storeExpireDate ?? 10080;
  set storeExpireDate(int? val) => _storeExpireDate = val;
  void incrementStoreExpireDate(int amount) =>
      _storeExpireDate = storeExpireDate + amount;
  bool hasStoreExpireDate() => _storeExpireDate != null;

  // "CVSCode" field.
  String? _cVSCode;
  String get cVSCode => _cVSCode ?? 'CVS';
  set cVSCode(String? val) => _cVSCode = val;
  bool hasCVSCode() => _cVSCode != null;

  // "Desc_1" field.
  String? _desc1;
  String get desc1 => _desc1 ?? '';
  set desc1(String? val) => _desc1 = val;
  bool hasDesc1() => _desc1 != null;

  // "Desc_2" field.
  String? _desc2;
  String get desc2 => _desc2 ?? '';
  set desc2(String? val) => _desc2 = val;
  bool hasDesc2() => _desc2 != null;

  // "Desc_3" field.
  String? _desc3;
  String get desc3 => _desc3 ?? '';
  set desc3(String? val) => _desc3 = val;
  bool hasDesc3() => _desc3 != null;

  // "Desc_4" field.
  String? _desc4;
  String get desc4 => _desc4 ?? '';
  set desc4(String? val) => _desc4 = val;
  bool hasDesc4() => _desc4 != null;

  static CVSInfoStruct fromMap(Map<String, dynamic> data) => CVSInfoStruct(
        storeExpireDate: castToType<int>(data['StoreExpireDate']),
        cVSCode: data['CVSCode'] as String?,
        desc1: data['Desc_1'] as String?,
        desc2: data['Desc_2'] as String?,
        desc3: data['Desc_3'] as String?,
        desc4: data['Desc_4'] as String?,
      );

  static CVSInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CVSInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'StoreExpireDate': _storeExpireDate,
        'CVSCode': _cVSCode,
        'Desc_1': _desc1,
        'Desc_2': _desc2,
        'Desc_3': _desc3,
        'Desc_4': _desc4,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'StoreExpireDate': serializeParam(
          _storeExpireDate,
          ParamType.int,
        ),
        'CVSCode': serializeParam(
          _cVSCode,
          ParamType.String,
        ),
        'Desc_1': serializeParam(
          _desc1,
          ParamType.String,
        ),
        'Desc_2': serializeParam(
          _desc2,
          ParamType.String,
        ),
        'Desc_3': serializeParam(
          _desc3,
          ParamType.String,
        ),
        'Desc_4': serializeParam(
          _desc4,
          ParamType.String,
        ),
      }.withoutNulls;

  static CVSInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CVSInfoStruct(
        storeExpireDate: deserializeParam(
          data['StoreExpireDate'],
          ParamType.int,
          false,
        ),
        cVSCode: deserializeParam(
          data['CVSCode'],
          ParamType.String,
          false,
        ),
        desc1: deserializeParam(
          data['Desc_1'],
          ParamType.String,
          false,
        ),
        desc2: deserializeParam(
          data['Desc_2'],
          ParamType.String,
          false,
        ),
        desc3: deserializeParam(
          data['Desc_3'],
          ParamType.String,
          false,
        ),
        desc4: deserializeParam(
          data['Desc_4'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CVSInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CVSInfoStruct &&
        storeExpireDate == other.storeExpireDate &&
        cVSCode == other.cVSCode &&
        desc1 == other.desc1 &&
        desc2 == other.desc2 &&
        desc3 == other.desc3 &&
        desc4 == other.desc4;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([storeExpireDate, cVSCode, desc1, desc2, desc3, desc4]);
}

CVSInfoStruct createCVSInfoStruct({
  int? storeExpireDate,
  String? cVSCode,
  String? desc1,
  String? desc2,
  String? desc3,
  String? desc4,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CVSInfoStruct(
      storeExpireDate: storeExpireDate,
      cVSCode: cVSCode,
      desc1: desc1,
      desc2: desc2,
      desc3: desc3,
      desc4: desc4,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CVSInfoStruct? updateCVSInfoStruct(
  CVSInfoStruct? cVSInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cVSInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCVSInfoStructData(
  Map<String, dynamic> firestoreData,
  CVSInfoStruct? cVSInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cVSInfo == null) {
    return;
  }
  if (cVSInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cVSInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cVSInfoData = getCVSInfoFirestoreData(cVSInfo, forFieldValue);
  final nestedData = cVSInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cVSInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCVSInfoFirestoreData(
  CVSInfoStruct? cVSInfo, [
  bool forFieldValue = false,
]) {
  if (cVSInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cVSInfo.toMap());

  // Add any Firestore field values
  cVSInfo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCVSInfoListFirestoreData(
  List<CVSInfoStruct>? cVSInfos,
) =>
    cVSInfos?.map((e) => getCVSInfoFirestoreData(e, true)).toList() ?? [];
