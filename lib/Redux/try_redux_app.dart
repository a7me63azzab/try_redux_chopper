import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Containers/Auth/LoginPage/login_page.dart';
import 'package:try_chopper/Redux/src/Containers/HomePage/home_page.dart';
import 'package:try_chopper/Redux/src/Navigation/navigations.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class TryReduxState extends StatelessWidget {
  final Store<AppState> store;

  const TryReduxState({Key? key,required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        navigatorKey: Keys.navKey,
        title: 'Material App',
        // home: HomePageRedux(),
        home: LoginPage(),
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
