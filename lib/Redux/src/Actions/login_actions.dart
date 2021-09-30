import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/login_input_data.dart';

class UserLoginStart {
  BuiltLoginInputData lginInputData;
  UserLoginStart({required this.lginInputData});
}

class UserLoginSuccess {
  BuiltLogin lginData;
  UserLoginSuccess({required this.lginData});
}

class UserLoginFailed {
  BuiltLogin lginData;
  UserLoginFailed({required this.lginData});
}
