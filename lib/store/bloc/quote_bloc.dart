import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talk_o_bloc/store/events/quote_event.dart';
import 'package:talk_o_bloc/store/state/quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteState(quotes: [], max: 5)) {
    on<QuoteAdded>((event, emit) {
      if (state.quotes.length >= state.max) return;
      var newQuotes = [event.quote, ...state.quotes];
      return emit(
        QuoteState(quotes: newQuotes).copyWith(max: state.max)
      );
    });
    on<QuotedDeleted>((event, emit) {
      if (state.quotes.isEmpty) return;
      var newQuote = [...state.quotes];
      newQuote.removeLast();
      return emit(
        QuoteState(quotes: newQuote).copyWith(max: state.max)
      );
    });
    on<QuoteReset>((event, emit) {
      return emit(
        QuoteState(quotes: []).copyWith(max: state.max)
      );
    });
    on<QuoteIncrementedMax>((event, emit) {
      return emit(
        QuoteState(quotes: state.quotes, max: state.max + 1)
      );
    });
  }
}
