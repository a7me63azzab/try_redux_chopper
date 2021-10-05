import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/login_actions.dart';
import 'package:try_chopper/Redux/src/States/login_states.dart';

final loginReducer = combineReducers<LoginState>([
  TypedReducer<LoginState, UserLoginStart>(_loginStart),
  TypedReducer<LoginState, UserLoginFailed>(_loginFailed),
  TypedReducer<LoginState, UserLoginSuccess>(_loginSuccess),
]);

LoginState _loginSuccess(LoginState state, UserLoginSuccess action) {
  // return state.copyWith(
  //   isLoading: false,
  //   hasError: false,
  //   error: null,
  //   loginData: state.loginData,
  // );
  return state.rebuild((p0) => p0
    ..error = null
    ..hasError = false
    ..isLoading = false
    ..loginData = action.lginData?.toBuilder());
}

LoginState _loginFailed(LoginState state, UserLoginFailed action) {
  return state.rebuild((p0) => p0
    ..error = null
    ..hasError = true
    ..isLoading = false
    ..loginData = null);
  // return state.copyWith(
  //     isLoading: false,
  //     hasError: true,
  //     error: state.loginData?.message ?? "",
  //     loginData: state.loginData);
}

LoginState _loginStart(LoginState state, UserLoginStart action) {
  // return state.copyWith(
  //     isLoading: true, hasError: false, error: null, loginData: null);
  return state.rebuild((p0) => p0
    ..error = null
    ..hasError = false
    ..isLoading = true
    ..loginData = null);
}
