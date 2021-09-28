import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class SinglePostViewModel {
  //states
  final bool? isLoading;
  final bool? hasError;
  final dynamic errorDetails;
  final BuiltPost? post;

 

  SinglePostViewModel({
    required this.isLoading,
    required this.hasError,
    required this.errorDetails,
    required this.post,
   
  });

  static SinglePostViewModel fromStore(Store<AppState?> store) {
    return SinglePostViewModel(
      isLoading: store.state?.singlePostState.isLoading,
      hasError: store.state?.singlePostState.hasError,
      errorDetails: store.state?.singlePostState.error,
      post: store.state?.singlePostState.post,
      
    );
  }
}

