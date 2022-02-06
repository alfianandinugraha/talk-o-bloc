import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talk_o_bloc/routers/app_router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]
    );

    return MaterialApp(
      title: 'Talk-o-BLoC',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}