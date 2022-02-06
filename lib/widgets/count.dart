import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/bloc/quote_bloc.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isFull = context.select<QuoteBloc, bool>((value) => value.state.quotes.length >= value.state.max);
    return Column(
      children: [
        const Text("Total"),
        DefaultTextStyle(
          style: TextStyle(
            color: isFull ? Colors.red : Colors.black
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocSelector<QuoteBloc, QuoteState, int>(
                selector: (state) {
                  return state.quotes.length;
                }, 
                builder: (context, length) {
                  return Text(
                    length.toString(),
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline3?.fontSize
                    )
                  );
                }
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text("/"),
              ),
              BlocSelector<QuoteBloc, QuoteState, int>(
                selector: (state) {
                  return state.max;
                }, 
                builder: (context, max) {
                  return Text(
                    max.toString(),
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline5?.fontSize
                    ),
                  );
                }
              ),
            ],
          )
        )
      ],
    );
  }
}
