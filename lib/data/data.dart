import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Data {
  Future<File> getFile() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/data.json");
  }

  Future saveData(List lista) async {
    String data = json.encode(lista);
    final file = await getFile();
    file.writeAsString(data);
  }

  Future<String> readData() async {
    try {
      final file = await getFile();
      return file.readAsString();  
    } catch (e) {
      return null;
    }    
  }
}