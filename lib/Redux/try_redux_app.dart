import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:try_chopper/Redux/src/Containers/HomePage/home_page.dart';
import 'package:try_chopper/Redux/src/Containers/PostDetailsPage/single_post_screen.dart';
import 'package:try_chopper/Redux/src/Navigation/navigations.dart';
import 'package:try_chopper/Redux/src/Reducers/app_reducers.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class TryReduxState extends StatelessWidget {
  final store = Store<AppState>(appReducer,
      initialState: new AppState.initial(), middleware: [thunkMiddleware]);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        navigatorKey: Keys.navKey,
        title: 'Material App',
        home: HomePageRedux(),
        routes: {
          Routes.homeScreen: (context) {
            return HomePageRedux();
          },
          // Routes.singlePostScreen: (context) {
          //   final args = ModalRoute.of(context)!.settings.arguments;

          //   print("=-=-=> ${args.toString()}");

          //   return SinglePostScreen(
          //     postId: 1,
          //   );
          // }
        },
      ),
    );
  }
}
