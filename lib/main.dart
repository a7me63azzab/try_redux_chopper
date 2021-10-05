
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:try_chopper/Redux/Utils/Persistor/persistor.dart';
import 'package:try_chopper/Redux/Utils/Persistor/serialization.dart';
import 'package:try_chopper/Redux/Utils/flutter_save_location.dart';
import 'package:try_chopper/Redux/src/Reducers/app_reducers.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';
import 'package:try_chopper/Redux/try_redux_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _setupLogging();
  // Create Persistor
  final persistor = Persistor<AppState>(
    storage: FlutterStorage(),
    serializer: CustomAppStateSerializer<AppState>(AppState.fromJson),
  );

  // // Load initial state
  final initialState = await persistor.load();

  final store = Store<AppState>(appReducer,
      initialState: initialState ?? AppState.initial(),
      middleware: [persistor.createMiddleware(), thunkMiddleware]);

  // final store = Store<AppState>(appReducer,
  //     initialState: AppState.initial(), middleware: [thunkMiddleware]);

  print("all app states -=-=> ${store.state.toJson()}");

  runApp(TryReduxState(
    store: store,
  ));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print("${rec.level.name}: ${rec.time}: ${rec.message}");
  });
}


