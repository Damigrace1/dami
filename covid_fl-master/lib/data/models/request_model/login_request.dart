import 'package:json_annotation/json_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
 @JsonKey(name: "email")
 late String email;
 @JsonKey(name: "password")
 late String password;

 LoginRequest({required this.email,required this.password});

 factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

 Map<String, dynamic> toJson() =>_$LoginRequestToJson(this);


}