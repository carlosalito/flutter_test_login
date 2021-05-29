import 'package:flutter_test_login/domain/entities/user/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  UserModel({
    required String uid,
    required String name,
    required DateTime birthday,
    required String email,
  }) : super(birthday: birthday, email: email, name: name, uid: uid);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
