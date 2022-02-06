import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/models/quote.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class ListQuote extends StatelessWidget {
  const ListQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<QuoteBloc, QuoteState, List<Quote>>(
      selector: (state) => state.quotes,
      builder: (context, quotes) {
        return ListView.builder(
          itemCount: quotes.length,
          itemBuilder: (BuildContext context, int position) {
            Quote quote = quotes[position];
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
