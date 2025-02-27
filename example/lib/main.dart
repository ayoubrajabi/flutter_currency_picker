import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo for currency picker package',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo for currency picker')),
      body: showCurrencyList(
        showFlag: true,
        physics: const BouncingScrollPhysics(),
        showSearchField: true,
        showCurrencyName: false,
        showCurrencyCode: true,
        textFieldSuffixIcon: Icon(Icons.search),
        onSelect: (Currency currency) {
          print('Select currency: ${currency.name}');
        },
        favorite: ['IRR', 'USD', 'EUR'],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       showCurrencyList(
      //         showFlag: true,
      //         showSearchField: true,
      //         showCurrencyName: true,
      //         showCurrencyCode: true,
      //         onSelect: (Currency currency) {
      //           print('Select currency: ${currency.name}');
      //         },
      //         favorite: ['IRR', 'USD', 'EUR'],
      //       );
      //     },
      //     child: const Text('Show currency picker'),
      //   ),
      // ),
    );
  }
}
