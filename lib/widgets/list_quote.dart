import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/models/quote.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class ListQuote extends StatelessWidget {
  const ListQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteBloc, QuoteState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.quotes.length,
          itemBuilder: (BuildContext context, int position) {
            Quote quote = state.quotes[position];
            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "\"${quote.text}\"",
                  style: const TextStyle(
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            );
          }
        );
      }
    );
  }
}
