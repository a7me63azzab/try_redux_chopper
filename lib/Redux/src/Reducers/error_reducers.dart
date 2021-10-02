import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/error_actions.dart';

final Reducer<Exception?> errorReducer = combineReducers<Exception?>([
  TypedReducer<Exception?, ErrorOccurredAction>(_errorOccurredReducer),
  // TypedReducer<Exception?, ErrorHandledAction>(_errorHandledReducer),
]);

Exception? _errorOccurredReducer(
    Exception? exception, ErrorOccurredAction action) {
  return action.exception;
}

// Exception? _errorHandledReducer(Exception? _, ErrorHandledAction action) {
//   return Exception();
// }
