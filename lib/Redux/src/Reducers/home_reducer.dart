import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/home_actions.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/Redux/src/States/home_state.dart';
import 'package:built_collection/built_collection.dart';

final homeReducer = combineReducers<HomeState>([
  TypedReducer<HomeState, GetHomeDataStart>(_startLoading),
  TypedReducer<HomeState, GetHomeDataFailed>(_getHomeDataFailed),
  TypedReducer<HomeState, GetHomeDataSuccess>(_getHomeDataSuccess),
]);

HomeState _getHomeDataSuccess(HomeState state, GetHomeDataSuccess action) {
  return state.copyWith(
    isLoading: false,
    hasError: false,
    error: null,
    allPosts: action.posts,
  );
}

HomeState _getHomeDataFailed(HomeState state, GetHomeDataFailed action) {
  return state.copyWith(
      isLoading: false,
      hasError: true,
      error: "Server Error!",
      allPosts: BuiltList<BuiltPost>());
}

HomeState _startLoading(HomeState state, GetHomeDataStart action) {
  return state.copyWith(
      isLoading: true,
      hasError: false,
      error: null,
      allPosts: BuiltList<BuiltPost>());
}
