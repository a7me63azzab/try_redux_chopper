import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/single_post_actions.dart';
import 'package:try_chopper/Redux/src/Containers/PostDetailsPage/single_post_view_model.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class SinglePostScreen extends StatelessWidget {
  final int? postId;
  const SinglePostScreen({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Post"),
      ),
      body: StoreConnector<AppState, SinglePostViewModel>(
        onInit: (Store<AppState?> store) {
          store.dispatch(getPostDataThunk(postId: postId));
        },
        rebuildOnChange: true,
        builder:
            (BuildContext context, SinglePostViewModel singlePostViewModel) {
          if (singlePostViewModel.isLoading ?? false) {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          } else if (singlePostViewModel.hasError == false &&
              singlePostViewModel.post != null) {
            return Column(
              children: [
                Text(singlePostViewModel.post!.title),
                Text(singlePostViewModel.post!.body),
              ],
            );
          } else {
            return Container();
          }
        },
        converter: (Store<AppState?> store) =>
            SinglePostViewModel.fromStore(store),
      ),
    );
  }
}


/*
 body: StoreConnector<AppState,HomeViewModel>(
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
                  return PostCardWidget(
                    body: homeViewModel.posts?[index].body,
                    title: homeViewModel.posts?[index].title,
                  );
                });
          } else {
            return Container();
          }
        },
        converter: (Store<AppState?> store) => HomeViewModel.fromStore(store),
      ),
*/
