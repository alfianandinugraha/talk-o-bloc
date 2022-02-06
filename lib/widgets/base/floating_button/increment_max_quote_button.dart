import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';

class IncrementMaxQuoteButton extends StatelessWidget {
  const IncrementMaxQuoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'incrementMaxQuoteButton',
      onPressed: () {
        BlocProvider
          .of<QuoteBloc>(context)
          .add(IncrementMaxQuoteEvent());
      },
      child: const Icon(Icons.plus_one),
    );
  }
}
