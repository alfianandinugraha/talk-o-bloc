import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/widgets/screens/home_screen.dart';
import 'package:talk_o_bloc/widgets/screens/total_screen.dart';

class AppRouter {
  final QuoteBloc _quoteBloc = QuoteBloc();

  Route? onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _quoteBloc,
            child: const HomeScreen(),
          )
        );
      case '/total':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _quoteBloc,
            child: const TotalScreen(),
          )
        );
      default:
        return null;
    }
  }
}
