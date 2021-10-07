// import 'package:redux/redux.dart';
// import 'package:try_chopper/Redux/src/Actions/logout_actions.dart';
// import 'package:try_chopper/Redux/src/States/login_states.dart';

// final logoutReducer = combineReducers<LoginState>([
//   TypedReducer<LoginState, UserLogoutStart>(_logoutStart),
//   TypedReducer<LoginState, UserLogoutFailed>(_logoutFailed),
//   TypedReducer<LoginState, UserLogoutSuccess>(_logoutSuccess),
// ]);

// LoginState _logoutSuccess(LoginState state, UserLogoutSuccess action) {
//   return state.rebuild((p0) => p0
//     ..error = null
//     ..hasError = false
//     ..isLoading = false
//     ..loginData = null);
// }

// LoginState _logoutFailed(LoginState state, UserLogoutFailed action) {
//   return state.rebuild((p0) => p0
//     ..error = null
//     ..hasError = true
//     ..isLoading = false
//     ..loginData = null);
// }

// LoginState _logoutStart(LoginState state, UserLogoutStart action) {
//   return state.rebuild((p0) => p0
//     ..error = null
//     ..hasError = false
//     ..isLoading = true
//     ..loginData = null);
// }
