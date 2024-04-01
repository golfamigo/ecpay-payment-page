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

import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'dart:convert'; // 添加这一行导入 dart:convert 库

Future<List<String>> checkMAC(
  dynamic jsonData,
  String hashKey,
  String hashIV,
) async {
  if (jsonData is! Map<dynamic, dynamic>) {
    throw 'jsonData should be of type Map<dynamic, dynamic>';
  }

  String customUrlEncode(String str, {bool toLowerCase = false}) {
    final replacements = {
      '-': '%2D',
      '_': '%5F',
      '.': '%2E',
      '!': '%21',
      '~': '%7E',
      '*': '%2A',
      '(': '%28',
      ')': '%29',
      ' ': '%20',
      '@': '%40',
      '#': '%23',
      '\$': '%24',
      '%': '%25',
      '^': '%5E',
      '&': '%26',
      '=': '%3D',
      '+': '%2B',
      ';': '%3B',
      '?': '%3F',
      '/': '%2F',
      '\\': '%5C',
      '>': '%3E',
      '<': '%3C',
      '`': '%60',
      '[': '%5B',
      ']': '%5D',
      '{': '%7B',
      '}': '%7D',
      ':': '%3A',
      '\'': '%27',
      '\"': '%22',
      ',': '%2C',
      '|': '%7C',
    };

    if (toLowerCase) {
      replacements.forEach((k, v) => replacements[k] = v.toLowerCase());
    }

    return str.split('').map((char) => replacements[char] ?? char).join('');
  }

  Future<String> aesEncrypt(String data, String key, String iv) async {
    final keyBytes = utf8.encode(key);
    final ivBytes = utf8.encode(iv);
    final encrypter = encrypt.Encrypter(
      encrypt.AES(encrypt.Key(keyBytes),
          mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
    );
    final encrypted = encrypter.encrypt(data, iv: encrypt.IV(ivBytes));
    return encrypted.base64;
  }

  final encodedDataUpper = customUrlEncode(json.encode(jsonData));
  final encodedDataLower =
      customUrlEncode(json.encode(jsonData), toLowerCase: true);

  final encryptedDataUpper =
      await aesEncrypt(encodedDataUpper, hashKey, hashIV);
  final encryptedDataLower =
      await aesEncrypt(encodedDataLower, hashKey, hashIV);

  return [encryptedDataUpper, encryptedDataLower];
}
