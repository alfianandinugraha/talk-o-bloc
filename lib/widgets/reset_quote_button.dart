import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class ResetQuoteButton extends StatelessWidget {
  const ResetQuoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<QuoteBloc, QuoteState, bool>(
      selector: (state) => state.quotes.isEmpty, 
      builder: (context, isEmpty) {
        return FloatingActionButton(
          onPressed: () {
            BlocProvider
              .of<QuoteBloc>(context)
              .add(ResetQuoteEvent());
          },
          child: const Icon(Icons.delete),
          backgroundColor: isEmpty ? Colors.grey : Colors.red,
        );
      }
    );
  }
}
