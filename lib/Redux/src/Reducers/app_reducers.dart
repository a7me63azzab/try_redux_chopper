import 'package:try_chopper/Redux/src/Reducers/home_reducer.dart';
import 'package:try_chopper/Redux/src/Reducers/login_reducers.dart';
import 'package:try_chopper/Redux/src/Reducers/single_post_reducer.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      homeState: homeReducer(state.homeState, action),
      singlePostState: singlePostReducer(state.singlePostState, action),
      loginState: loginReducer(state.loginState, action));
}
