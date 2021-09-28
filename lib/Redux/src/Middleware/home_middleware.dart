// import 'package:chopper/chopper.dart';
// import 'package:redux/redux.dart';
// import 'package:redux_thunk/redux_thunk.dart';
// import 'package:try_chopper/Redux/src/Actions/home_actions.dart';
// import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
// import 'package:try_chopper/data/post_api_service.dart';
// import 'package:built_collection/built_collection.dart';

// ThunkAction getHomeDataThunk() {
//   PostApiService.create();
//   return (Store store) async {
//     new Future(
//       () async {
//         store.dispatch(GetHomeDataStart());
//         Response<BuiltList<BuiltPost>> response =
//             await PostApiService.create().getPosts();
//         if (response.isSuccessful) {
//           store.dispatch(GetHomeDataSuccess(posts: response.body));
//         } else {
//           store.dispatch(GetHomeDataFailed());
//         }
//       },
//     );
//   };
// }


// // ThunkAction loginUser(String username, String password) {
// //   return (Store store) async {
// //     new Future(() async{
// //       store.dispatch(new StartLoadingAction());
// //       login(username, password).then((loginResponse) {
// //         store.dispatch(new LoginSuccessAction(loginResponse));
// //         Keys.navKey.currentState.pushNamed(Routes.homeScreen);
// //       }, onError: (error) {
// //         store.dispatch(new LoginFailedAction());
// //       });
// //     });
// //   };
// // }
