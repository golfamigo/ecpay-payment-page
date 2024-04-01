// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;

Future<dynamic> customActionDecrypt(
  String encryptedData,
  String hashKey,
  String hashIV,
) async {
  // AES解密函数
  String aesDecrypt(String data, String key, String iv) {
    try {
      final encrypter = encrypt.Encrypter(
        encrypt.AES(encrypt.Key.fromUtf8(key), mode: encrypt.AESMode.cbc),
      );
      final decrypted = encrypter.decrypt(
        encrypt.Encrypted.fromBase64(data),
        iv: encrypt.IV.fromUtf8(iv),
      );
      return decrypted;
    } catch (e) {
      throw Exception('AES decryption failed: $e');
    }
  }

  // 解密数据
  String decryptedData;
  try {
    decryptedData = aesDecrypt(encryptedData, hashKey, hashIV);
  } catch (e) {
    return 'Error during decryption: $e';
  }

  // URL解码
  final decodedData = Uri.decodeFull(decryptedData);

  // 将解码后的数据转换为JSON格式
  try {
    return jsonDecode(decodedData);
  } catch (e) {
    return 'Error decoding JSON: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
