import 'package:chopper/chopper.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:try_chopper/Redux/src/Actions/error_actions.dart';
import 'package:try_chopper/Redux/src/Models/LogoutData/logout_data_model.dart';
import 'package:try_chopper/Redux/src/Models/built_error.dart';
// import 'package:try_chopper/Redux/src/Models/LogoutModel/built_Logout.dart';
// import 'package:try_chopper/Redux/src/Models/LogoutModel/Logout_input_data.dart';
import 'package:try_chopper/Redux/src/Models/logout_model/logout_model.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';
import 'package:try_chopper/data/auth_api_service.dart';

class UserLogoutStart {}

class UserLogoutSuccess {
  LogoutModel? lginData;
  UserLogoutSuccess({required this.lginData});
}

class UserLogoutFailed {
  BuiltErrorResponse? builtErrorResponse;
  UserLogoutFailed({required this.builtErrorResponse});
}

ThunkAction<AppState> logoutThunkAction() {
  AuthApiService.create();
  return (Store<AppState> store) async {
    new Future(
      () async {
        try {
          store.dispatch(UserLogoutStart());
          Response<LogoutModel> response = await AuthApiService.create().userLogout(
              LogoutDataModel((p) => p
                ..device_token = 'eqweqw'
                ..device_type = 'ios'),
              "${store.state.loginState.loginData?.data.token.token_type} ${store.state.loginState.loginData?.data.token.access_token}",
              'ar');
          if (response.isSuccessful) {
            print("success from action =-=> ${response.body.toString()}");
            store.dispatch(UserLogoutSuccess(lginData: response.body));
            store.dispatch(NavigateToAction.replace("/splash"));
          } else {
            print("error from action =-=> ${response.error.toString()}");

            // print("error from action =-=> ${response.body?.message}");
            BuiltErrorResponse? errorResponse =
                response.error as BuiltErrorResponse;
            store.dispatch(UserLogoutFailed(builtErrorResponse: errorResponse));
            store.dispatch(
              ErrorOccurredAction("${errorResponse.message}"),
            );
          }
        } catch (err) {
          print("from try / catch show $err");
          // print("error from action =-=> ${response.error.toString()}");
          // store.dispatch(UserLogoutFailed(lginData: null));

          store.dispatch(
            ErrorOccurredAction(
              "$err",
            ),
          );
        }
      },
    );
  };
}
