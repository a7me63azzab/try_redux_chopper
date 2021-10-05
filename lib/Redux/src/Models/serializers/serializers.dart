import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/login_input_data.dart';
import 'package:try_chopper/Redux/src/Models/built_error.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';
import 'package:try_chopper/Redux/src/States/home_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:try_chopper/Redux/src/States/login_states.dart';
import 'package:try_chopper/Redux/src/States/post_state.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';


part 'serializers.g.dart';

@SerializersFor(const [
  BuiltPost,
  BuiltLogin,
  BuiltUser,
  BuiltBranch,
  BuiltAuthToken,
  BuiltLoginInputData,
  BuiltErrorResponse,
  HomeState,
  LoginState,
  PostState,
  AppState
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
