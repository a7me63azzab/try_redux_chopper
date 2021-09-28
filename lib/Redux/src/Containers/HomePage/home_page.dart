import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/home_actions.dart';
import 'package:try_chopper/Redux/src/Containers/HomePage/home_view_model.dart';
import 'package:try_chopper/Redux/src/Containers/PostDetailsPage/single_post_screen.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/Redux/src/Navigation/navigations.dart';
import 'package:try_chopper/Redux/src/Presentations/post_card_widget.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';
import 'package:built_collection/built_collection.dart';

class HomePageRedux extends StatelessWidget {
  const HomePageRedux({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Posts"),
      ),
      body: StoreConnector<AppState, HomeViewModel>(
        onInit: (Store<AppState?> store) {
          store.dispatch(getHomeDataThunk());
        },
        rebuildOnChange: true,
        builder: (_, HomeViewModel homeViewModel) {
          if (homeViewModel.isLoading ?? false) {
            return Center(child: CupertinoActivityIndicator());
          } else if (homeViewModel.posts != BuiltList<BuiltPost>()) {
            return ListView.builder(
                itemCount: homeViewModel.posts?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Keys.navKey.currentState?.pushNamed("");
                      Navigator.of(context)
                          .push(PageRouteBuilder(pageBuilder: (_, __, ___) {
                        return SinglePostScreen(postId: homeViewModel.posts?[index].id);
                      }));
                    },
                    child: PostCardWidget(
                      body: homeViewModel.posts?[index].body,
                      title: homeViewModel.posts?[index].title,
                    ),
                  );
                });
          } else {
            return Container();
          }
        },
        converter: (Store<AppState?> store) => HomeViewModel.fromStore(store),
      ),
    );
  }
}
