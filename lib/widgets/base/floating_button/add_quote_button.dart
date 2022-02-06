import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/models/quote.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class AddQuoteButton extends StatelessWidget {
  const AddQuoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<QuoteBloc, QuoteState, bool>(
      selector: (state) => state.isFull,
      builder: (context, isFull) {
        return FloatingActionButton(
          heroTag: 'addQuoteButton',
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
          backgroundColor: isFull ? Colors.grey : Colors.red,
        );
      }
    );
  }
}
