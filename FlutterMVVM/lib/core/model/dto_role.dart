// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:mvvm_app/core/base/model/base_model.dart';

part 'dto_role.g.dart';

@JsonSerializable()
class DTORole extends BaseModel<DTORole> {
  int? Id;
  String? Title;
  int? RoleCode;
  int? IsDeleted;

  DTORole({
    this.Id,
    this.Title,
    this.RoleCode,
    this.IsDeleted,
  });

  factory DTORole.fromJson(Map<String, dynamic> json) {
    return _$DTORoleFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$DTORoleToJson(this);
  }

  @override
  fromJson(Map<String, dynamic> json) {
    return _$DTORoleFromJson(json);
  }
}
