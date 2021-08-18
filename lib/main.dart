import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visiting_card/helper/route_list.dart';
import 'package:visiting_card/pages/contact_list_page.dart';
import 'package:visiting_card/provider/contact_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ContactProvider(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            //home: ContactListPage(),
            initialRoute: ContactListPage.routeName,
            routes: routeMap));
  }
}
