import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/models/quote.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';
import 'package:talk_o_bloc/widgets/count.dart';
import 'package:talk_o_bloc/widgets/list_quote.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider
              .of<QuoteBloc>(context)
              .add(
                AddQuoteEvent(
                  quote: Quote(text: "Hello world !") 
                )
              );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}