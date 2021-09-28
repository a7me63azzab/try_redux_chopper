import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:try_chopper/Redux/src/Models/home_model/built_post.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltPost])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
