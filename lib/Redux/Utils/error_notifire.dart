import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/src/Actions/error_actions.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class ErrorNotifier extends StatelessWidget {
  ErrorNotifier({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: (store) => _ViewModel.fromStore(store),
      builder: (context, vm) => child,
      onDidChange: (vm, vmx) {
        if (vm!.error != null) {
          vm.markErrorAsHandled!();
          print("FROM ERROR NOTIFIER SHOW ERROR -> ${vm.error.toString()}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(vm.error.toString()),
            ),
          );
        }
      },
      distinct: true,
    );
  }
}

class _ViewModel {
  _ViewModel({
    this.markErrorAsHandled,
    this.error,
  });

  final Function? markErrorAsHandled;
  final String? error;

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      markErrorAsHandled: () => store.dispatch(ErrorHandledAction()),
      error: store.state.error,
    );
  }

  @override
  int get hashCode => error.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is _ViewModel && other.error == this.error;
}
