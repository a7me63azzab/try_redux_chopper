// library logout_state;

// import 'dart:convert';

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:try_chopper/Redux/src/Models/logout_model/logout_model.dart';
// import 'package:try_chopper/Redux/src/Models/serializers/serializers.dart';

// part 'logout_state.g.dart';

// abstract class LogoutState implements Built<LogoutState, LogoutStateBuilder> {
//   // fields go here
//   bool get isLoading;
//   bool get hasError;
//   String? get error;
//   LogoutModel? get logoutModel;

//   LogoutState._();

//   factory LogoutState([updates(LogoutStateBuilder b)]) = _$LogoutState;

//   factory LogoutState.initial() {
//     return LogoutState(
//       (p) => p
//         ..isLoading = false
//         ..hasError = false
//         ..error = ''
//         ..logoutModel=null
//     );
//   }

//   String toJson() {
//     return json.encode(serializers.serializeWith(LogoutState.serializer, this));
//   }

//   static LogoutState? fromJson(String jsonString) {
//     return serializers.deserializeWith(
//         LogoutState.serializer, json.decode(jsonString));
//   }

//   static Serializer<LogoutState> get serializer => _$logoutStateSerializer;
// }
