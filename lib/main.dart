import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/Event%20Page/IndividualEventPage.dart';
import 'package:talawadesigndemo/Pages/HomePage.dart';

import 'Pages/Event Page/SubscribedEvent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans',
            bodyColor: Colors.black,
            displayColor: Colors.black),
      ),
      home: HomePage(),
      // home: SubscribedEvent(
      //   title: "Event 1",
      // ),
    );
  }
}
