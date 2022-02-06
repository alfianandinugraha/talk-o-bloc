import 'package:talk_o_bloc/models/quote.dart';

abstract class QuoteEvent {}

class QuoteAdded extends QuoteEvent {
  Quote quote;

  QuoteAdded({required this.quote});
}

class QuotedDeleted extends QuoteEvent {}

class QuoteReset extends QuoteEvent {}

class QuoteIncrementedMax extends QuoteEvent {}
