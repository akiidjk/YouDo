import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

Future<void> writeJsonFile(String fileName, Map<String, dynamic> data) async {
  const JsonEncoder encoderJson = JsonEncoder.withIndent('  ');
  try {
    final directory = Directory(path.join(
        (await getApplicationSupportDirectory()).path, 'localStorage'));
    if (!directory.existsSync()) {
      directory.createSync();
    }
    final file = File(path.join(directory.path, fileName));
    print(file);
    print(data.toString());
    final jsonString = encoderJson.convert(data);
    await file.writeAsString(jsonString, flush: true, mode: FileMode.writeOnly);
    print('file salvaco consucces');
  } catch (e) {
    print('Error writing to the file: $e');
  }
}

Future<Map?> readJsonFile(String fileName) async {
  try {
    final directory = Directory(path.join(
        (await getApplicationSupportDirectory()).path, 'localStorage'));
    final file = File(path.join(directory.path, fileName));
    final contents = await file.readAsString();
    final jsonData = jsonDecode(contents);
    return jsonData;
  } catch (e) {
    print('Error reading the file: $e');
    return null;
  }
}
