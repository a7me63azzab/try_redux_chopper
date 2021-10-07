import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Containers/Auth/LoginPage/login_page.dart';
import 'package:try_chopper/Redux/src/Containers/HomePage/home_page.dart';
import 'package:try_chopper/Redux/src/Containers/PostDetailsPage/single_post_screen.dart';
import 'package:try_chopper/Redux/src/Containers/SplashScreen/splash_screen.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class TryReduxState extends StatelessWidget {
  final Store<AppState> store;

  const TryReduxState({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Material App',
        // home: LoginPage(),
        navigatorKey: NavigatorHolder.navigatorKey,
        onGenerateRoute: _getRoute,
      ),
    );
  }

  Route _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return _buildRoute(settings, LoginPage());
      case '/home':
        return _buildRoute(
          settings,
          HomePageRedux(),
        );
      case '/post':
        return _buildRoute(
          settings,
          SinglePostScreen(
            postId: (settings.arguments as Map)['id'],
          ),
        );
      case '/splash':
        return _buildRoute(
          settings,
          SplashScreen(),
        );
      default:
        return _buildRoute(settings, SplashScreen());
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
