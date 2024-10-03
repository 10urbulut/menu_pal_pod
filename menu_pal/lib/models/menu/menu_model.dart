import 'package:json_annotation/json_annotation.dart';

part 'menu_model.g.dart';

@JsonSerializable()
class MenuModel {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? link;
  final String? type;
  final String? createdBy;
  final DateTime? createdAt;

  MenuModel({
    this.title,
    this.description,
    this.thumbnail,
    this.link,
    this.type,
    this.id,
    this.createdBy,
    this.createdAt,
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);

  Map<String, dynamic> toJson() => _$MenuModelToJson(this);
}
