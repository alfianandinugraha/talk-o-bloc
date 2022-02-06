import 'package:talk_o_bloc/models/quote.dart';

abstract class QuoteEvent {}

class AddQuoteEvent extends QuoteEvent {
  Quote quote;

  AddQuoteEvent({required this.quote});
}

class DeleteQuoteEvent extends QuoteEvent {}
