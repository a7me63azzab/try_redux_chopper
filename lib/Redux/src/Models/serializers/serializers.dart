import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/login_input_data.dart';
import 'package:try_chopper/Redux/src/Models/built_error.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  BuiltPost,
  BuiltLogin,
  BuiltUser,
  BuiltBranch,
  BuiltAuthToken,
  BuiltLoginInputData,
  BuiltErrorResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
