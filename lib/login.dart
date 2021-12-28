import 'common.dart';

class Login {
  Future<void> info(Map<String, dynamic> params) {
    return callApi('session/info', params);
  }

  void login(String redirectUrl) {
    callApi('session/login_info', {
      redirectUrl,
    });
  }
}
