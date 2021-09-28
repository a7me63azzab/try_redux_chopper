import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/single_post_actions.dart';
import 'package:try_chopper/Redux/src/States/post_state.dart';

final singlePostReducer = combineReducers<SinglePostState>([
  TypedReducer<SinglePostState, GetPostActionStart>(_startLoading),
  TypedReducer<SinglePostState, GetPostActionFailed>(_getPostDataFailed),
  TypedReducer<SinglePostState, GetPostActionSuccess>(_getPostDataSuccess),
]);

SinglePostState _getPostDataSuccess(SinglePostState state, GetPostActionSuccess action) {
  return state.copyWith(
    isLoading: false,
    hasError: false,
    error: null,
    post: action.post,
  );
}

SinglePostState _getPostDataFailed(SinglePostState state, GetPostActionFailed action) {
  return state.copyWith(
      isLoading: false,
      hasError: true,
      error: "Server Error!",
      post: null);
}

SinglePostState _startLoading(SinglePostState state, GetPostActionStart action) {
  return state.copyWith(
      isLoading: true,
      hasError: false,
      error: null,
      post: null);
}
