import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/home_actions.dart';
import 'package:try_chopper/Redux/src/Actions/logout_actions.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:try_chopper/Redux/src/Models/logout_model/logout_model.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class HomeViewModel {
  //states
  final bool? isLoading;
  final bool? hasError;
  final dynamic errorDetails;
  final BuiltList<BuiltPost>? posts;

  //Action
  final Function getHomeData;
  final Function goToPost;

  HomeViewModel({
    required this.isLoading,
    required this.hasError,
    required this.errorDetails,
    required this.posts,
    required this.getHomeData,
    required this.goToPost,
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
      goToPost: (int postId) {
        store.dispatch(
            NavigateToAction.replace("/post", arguments: {"id": postId}));
      },
    );
  }
}

class LogoutViewModel {
  //states
  final bool? isLoading;
  final bool? hasError;
  final dynamic errorDetails;
  // final LogoutModel? logoutModel;

  //Action
  final Function logoutAction;

  LogoutViewModel({
    required this.isLoading,
    required this.hasError,
    required this.errorDetails,
    // required this.logoutModel,
    required this.logoutAction,
  });

  static LogoutViewModel fromStore(Store<AppState?> store) {
    return LogoutViewModel(
      isLoading: store.state?.loginState.isLoading,
      hasError: store.state?.loginState.hasError,
      errorDetails: store.state?.loginState.error,
      // logoutModel: store.state?.loginState.logoutModel,
      // getHomeData: () {
      //   store.dispatch(getHomeDataThunk());
      // },
      logoutAction: () {
        store.dispatch(logoutThunkAction());
        // store.dispatch(
        //     NavigateToAction.replace("/post", arguments: {"id": postId}));
      },
    );
  }
}
