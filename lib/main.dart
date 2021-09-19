import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:try_chopper/Pages/home_page.dart';
import 'package:try_chopper/data/post_api_service.dart';

void main() => runApp(TryChopperApp());

class TryChopperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => PostApiService.create(),
      dispose: (context, PostApiService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'Chopper :)',
        home: HomePage(),
      ),
    );
  }
}
