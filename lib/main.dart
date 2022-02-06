import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/widgets/count.dart';
import 'package:talk_o_bloc/widgets/list_quote.dart';
import 'package:talk_o_bloc/widgets/floating_button/add_quote_button.dart';
import 'package:talk_o_bloc/widgets/floating_button/increment_max_quote_button.dart';
import 'package:talk_o_bloc/widgets/floating_button/delete_quote_button.dart';
import 'package:talk_o_bloc/widgets/floating_button/reset_quote_button.dart';

void main() {
  runApp(
    BlocProvider(
      create: (BuildContext context) => QuoteBloc(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talk-o-BLoC',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: const [
              Count(),
              SizedBox(height: 10),
              Expanded(
                child: ListQuote()
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            IncrementMaxQuoteButton(),
            SizedBox(height: 10),
            ResetQuoteButton(),
            SizedBox(height: 10),
            DeleteQuoteButton(),
            SizedBox(height: 10),
            AddQuoteButton(),
          ],
        ),
      )
    );
  }
}