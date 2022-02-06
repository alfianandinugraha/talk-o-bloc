import 'package:talk_o_bloc/models/quote.dart';

class QuoteState {
  List<Quote> quotes = [];
  int max = 0;

  QuoteState({required this.quotes, this.max = 10});

  QuoteState copyWith({int max = 0}) {
    return QuoteState(quotes: quotes, max: max);
  }

  bool get isFull => quotes.length >= max;
}
