import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:try_chopper/Pages/home_page.dart';
import 'package:try_chopper/Redux/try_redux_app.dart';
import 'package:try_chopper/data/post_api_service.dart';

void main() {
  _setupLogging();
  runApp(TryReduxState());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print("${rec.level.name}: ${rec.time}: ${rec.message}");
  });
}

// class TryChopperApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Provider(
//       create: (context) => PostApiService.create(),
//       dispose: (context, PostApiService service) => service.client.dispose(),
//       child: MaterialApp(
//         title: 'Chopper :)',
//         home: HomePage(),
//       ),
//     );
//   }
// }
