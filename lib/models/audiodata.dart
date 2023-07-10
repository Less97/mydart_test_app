import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AudioData{
  String assetPath = "";
  String title = "";

 factory AudioData.fromJson(dynamic json){
    return AudioData(json["assetPath"], json["title"]);
  }

  AudioData(this.assetPath, this.title);
}