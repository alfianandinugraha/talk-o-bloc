import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/widgets/base/count.dart';
import 'package:talk_o_bloc/widgets/base/list_quote.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/add_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/increment_max_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/delete_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/reset_quote_button.dart';
import 'package:talk_o_bloc/widgets/screens/home_screen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (BuildContext context) => QuoteBloc(),
      child: const App(),
    )
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
      home: const HomeScreen()
    );
  }
}