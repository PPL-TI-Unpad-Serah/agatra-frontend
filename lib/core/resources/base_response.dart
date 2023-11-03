// https://stackoverflow.com/q/64595975

class BaseResponse {
  dynamic message;

  BaseResponse({this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(message: json["message"]);
  }
}