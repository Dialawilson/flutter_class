import 'package:flutter/material.dart';
import 'onlineservice.dart';
import 'quote.dart';
import '../class_7_json_online/myQuote.dart';



class MyMainQuote extends StatelessWidget {
  const MyMainQuote({Key? key}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder<List<Quote>>(
          future: OnlineService().getQuotes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            if (snapshot.hasData) {
              final quotes = snapshot.data!;
              return ListView.builder(
                itemCount: quotes.length,
                itemBuilder: (context, index) {
                  return QuoteWidget(quote: quotes[index]);
                },
              );
            }
            return const Center(child: Text('No data available'));
          },
        ),
      ),
    );
  }
}