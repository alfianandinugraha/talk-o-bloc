import 'package:flutter/material.dart';
import 'package:talk_o_bloc/widgets/base/count.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/add_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/delete_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/increment_max_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/reset_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/list_quote.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: const [
            Count(),
            SizedBox(height: 5),
            Expanded(
              child: ListQuote()
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          IncrementMaxQuoteButton(),
          SizedBox(height: 10),
          ResetQuoteButton(),
          SizedBox(height: 10),
          DeleteQuoteButton(),
          SizedBox(height: 10),
          AddQuoteButton(),
        ],
      ),
    );
  }
}
