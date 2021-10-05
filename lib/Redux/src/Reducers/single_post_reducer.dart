import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/single_post_actions.dart';
import 'package:try_chopper/Redux/src/States/post_state.dart';

final singlePostReducer = combineReducers<PostState>([
  TypedReducer<PostState, GetPostActionStart>(_startLoading),
  TypedReducer<PostState, GetPostActionFailed>(_getPostDataFailed),
  TypedReducer<PostState, GetPostActionSuccess>(_getPostDataSuccess),
]);

PostState _getPostDataSuccess(PostState state, GetPostActionSuccess action) {
  // return state.copyWith(
  //   isLoading: false,
  //   hasError: false,
  //   error: null,
  //   post: action.post,
  // );

  return state.rebuild((p0) => p0
    ..isLoading = false
    ..error = null
    ..post = action.post?.toBuilder()
    ..hasError = false);
}

PostState _getPostDataFailed(PostState state, GetPostActionFailed action) {
  // return state.copyWith(
  //     isLoading: false, hasError: true, error: "Server Error!", post: null);

  return state.rebuild((p0) => p0
    ..isLoading = false
    ..error = "Server Error!"
    ..post = null
    ..hasError = true);
}

PostState _startLoading(PostState state, GetPostActionStart action) {
  // return state.copyWith(
  //     isLoading: true, hasError: false, error: null, post: null);


  return state.rebuild((p0) => p0
    ..isLoading = true
    ..error = null
    ..post = null
    ..hasError = false);
}
