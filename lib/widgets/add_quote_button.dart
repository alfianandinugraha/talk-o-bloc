import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/models/quote.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';

class AddQuoteButton extends StatelessWidget {
  const AddQuoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
    );
  }
}
