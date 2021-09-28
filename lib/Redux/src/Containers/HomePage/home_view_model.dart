import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/home_actions.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class HomeViewModel {
  //states
  final bool? isLoading;
  final bool? hasError;
  final dynamic errorDetails;
  final BuiltList<BuiltPost>? posts;

  //Action
  final Function getHomeData;

  HomeViewModel({
    required this.isLoading,
    required this.hasError,
    required this.errorDetails,
    required this.posts,
    required this.getHomeData,
  });

  static HomeViewModel fromStore(Store<AppState?> store) {
    return HomeViewModel(
      isLoading: store.state?.homeState.isLoading,
      hasError: store.state?.homeState.hasError,
      errorDetails: store.state?.homeState.error,
      posts: store.state?.homeState.allPosts,
      getHomeData: () {
        store.dispatch(getHomeDataThunk());
      },
    );
  }
}

