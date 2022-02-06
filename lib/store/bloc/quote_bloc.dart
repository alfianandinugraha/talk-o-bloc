import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteState(quotes: [])) {
    on<AddQuoteEvent>((event, emit) {
      var newQuotes = [event.quote, ...state.quotes];
      return emit(
        QuoteState(quotes: newQuotes)
      );
    });
    on<DeleteQuoteEvent>((event, emit) {
      if (state.quotes.isEmpty) return;
      var newQuote = [...state.quotes];
      newQuote.removeLast();
      return emit(
        QuoteState(quotes: newQuote)
      );
    });
  }
}
