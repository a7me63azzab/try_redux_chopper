import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/data/post_api_service.dart';

class HomeActions {}

class GetHomeDataStart extends HomeActions {}

class GetHomeDataFailed extends HomeActions {}

class GetHomeDataSuccess extends HomeActions {
  final BuiltList<BuiltPost>? posts;
  GetHomeDataSuccess({required this.posts});
}


ThunkAction getHomeDataThunk() {
  PostApiService.create();
  return (Store store) async {
    new Future(
      () async {
        store.dispatch(GetHomeDataStart());
        Response<BuiltList<BuiltPost>> response =
            await PostApiService.create().getPosts();
        if (response.isSuccessful) {
          store.dispatch(GetHomeDataSuccess(posts: response.body));
        } else {
          store.dispatch(GetHomeDataFailed());
        }
      },
    );
  };
}
