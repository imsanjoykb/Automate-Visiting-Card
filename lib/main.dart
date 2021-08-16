import 'package:flutter/material.dart';
import 'package:visiting_card/helper/route_list.dart';
import 'package:visiting_card/pages/contact_list_page.dart';

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
          primarySwatch: Colors.blue,
        ),
        //home: ContactListPage(),
        initialRoute: ContactListPage.routeName,
        routes: routeMap);
  }
}
