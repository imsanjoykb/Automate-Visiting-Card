import 'package:visiting_card/pages/card_scan_page.dart';
import 'package:visiting_card/pages/contact_Details_page.dart';
import 'package:visiting_card/pages/contact_list_page.dart';
import 'package:visiting_card/pages/new_contact_form_page.dart';

var routeMap = {
  ContactListPage.routeName: (context) => ContactListPage(),
  NewContactPage.routeName: (context) => NewContactPage(),
  CardScanPage.routeName: (context) => CardScanPage(),
  ContactDetailsPage.routeName: (context) => ContactDetailsPage(),
};
