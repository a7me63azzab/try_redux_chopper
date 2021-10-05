import 'package:chopper/chopper.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:try_chopper/Redux/src/Actions/error_actions.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/login_input_data.dart';
import 'package:try_chopper/Redux/src/Models/built_error.dart';
import 'package:try_chopper/data/auth_api_service.dart';

class UserLoginStart {
  // BuiltLoginInputData lginInputData;
  // UserLoginStart({required this.lginInputData});
}

class UserLoginSuccess {
  BuiltLogin? lginData;
  UserLoginSuccess({required this.lginData});
}

class UserLoginFailed {
  BuiltLogin? lginData;
  UserLoginFailed({required this.lginData});
}

ThunkAction loginThunkAction(
    {required String userName, required String password}) {
  AuthApiService.create();
  return (Store store) async {
    new Future(
      () async {
        try {
          store.dispatch(UserLoginStart());
          Response<BuiltLogin> response =
              await AuthApiService.create().userLogin(
            BuiltLoginInputData((input) => input
              ..identifier = userName
              ..password = password
              ..device_token = "12312"
              ..device_type = "ios"),
          );
          if (response.isSuccessful) {
            print("success from action =-=> ${response.body.toString()}");
            store.dispatch(UserLoginSuccess(lginData: response.body));
          } else {
            print("error from action =-=> ${response.error.toString()}");
            store.dispatch(UserLoginFailed(lginData: null));
            // print("error from action =-=> ${response.body?.message}");
            BuiltErrorResponse? errorResponse =
                response.error as BuiltErrorResponse;
            store.dispatch(
              ErrorOccurredAction(
                // Exception("${errorResponse.message}"),
                "${errorResponse.message}"
              ),
            );
          }
        } catch (err) {
          print("from try / catch show $err");
          // print("error from action =-=> ${response.error.toString()}");
            store.dispatch(UserLoginFailed(lginData: null));
            // print("error from action =-=> ${response.body?.message}");
            // BuiltErrorResponse? errorResponse =
            //     response.error as BuiltErrorResponse;
            store.dispatch(
              ErrorOccurredAction(
                // Exception("$err"),
                "$err",
              ),
            );
        }
      },
    );
  };
}
