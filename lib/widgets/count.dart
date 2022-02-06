import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Total"),
        BlocSelector<QuoteBloc, QuoteState, int>(
          selector: (state) {
            return state.quotes.length;
          }, 
          builder: (context, state) {
            return Text(state.toString(), style: Theme.of(context).textTheme.headline3);
          }
        )
      ],
    );
  }
}
