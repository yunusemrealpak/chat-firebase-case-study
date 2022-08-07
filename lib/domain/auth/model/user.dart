import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? name,
    String? tag,
    @Default(false) bool inRoom,
    @Default(false) bool isOnline,
  }) = _User;
  factory User.initial() => const User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}