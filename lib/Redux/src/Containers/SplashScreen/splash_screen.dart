import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
// import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SplashViewModel>(
      onInitialBuild: (SplashViewModel splashViewModel) {
        Future.delayed(Duration(seconds: 5), () {
          splashViewModel.checkUserAuth();
        });
      },
      builder: (BuildContext context, SplashViewModel splashViewModel) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Center(
            child: FlutterLogo(
              size: 150,
            ),
          ),
        );
      },
      converter: (Store<AppState?> store) => SplashViewModel.fromStore(store),
    );
  }
}

class SplashViewModel {
  //states
  

  //Action
  final Function checkUserAuth;
  // final Function goToPost;

  SplashViewModel({
    
    required this.checkUserAuth,
    // required this.goToPost,
  });

  static SplashViewModel fromStore(Store<AppState?> store) {
    return SplashViewModel(
      // isLoading: store.state?.loginState.isLoading,
      // hasError: store.state?.loginState.hasError,
      // errorDetails: store.state?.loginState.error,
      // login: store.state?.loginState.loginData,
      checkUserAuth: () {
        // store.dispatch(getHomeDataThunk());

        if (store.state?.loginState.loginData != null) {
          // user is auth
          store.dispatch(NavigateToAction.replace("/home"));
        } else {
          // user not auth
          store.dispatch(NavigateToAction.replace("/login"));
        }
      },
      // goToPost: (int postId) {
      // store.dispatch(
      //     NavigateToAction.replace("/post", arguments: {"id": postId}));
      // },
    );
  }
}
