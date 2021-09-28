import 'package:chopper/chopper.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/data/post_api_service.dart';

class GetPostActionStart {}

class GetPostActionFailed {}

class GetPostActionSuccess {
  final BuiltPost? post;
  GetPostActionSuccess({this.post});
}

ThunkAction getPostDataThunk({int? postId}) {
  PostApiService.create();
  return (Store store) async {
    new Future(
      () async {
        store.dispatch(GetPostActionStart());
        Response<BuiltPost> response =
            await PostApiService.create().getPost(postId);
        if (response.isSuccessful) {
          store.dispatch(GetPostActionSuccess(post: response.body));
        } else {
          store.dispatch(GetPostActionFailed());
        }
      },
    );
  };
}
