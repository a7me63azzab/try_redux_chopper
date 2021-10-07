import 'package:try_chopper/Redux/src/Reducers/error_reducers.dart';
import 'package:try_chopper/Redux/src/Reducers/home_reducer.dart';
import 'package:try_chopper/Redux/src/Reducers/login_reducers.dart';
import 'package:try_chopper/Redux/src/Reducers/single_post_reducer.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    (p) => p
      ..homeState = homeReducer(state.homeState, action).toBuilder()
      ..loginState = authReducer(state.loginState, action).toBuilder()
      ..postState = singlePostReducer(state.postState, action).toBuilder()
      ..error = errorReducer(state.error, action),
  );
}
