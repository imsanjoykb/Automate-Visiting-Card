import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visiting_card/pages/new_contact_form_page.dart';
import 'package:visiting_card/provider/contact_provider.dart';

class ContactListPage extends StatefulWidget {
  static final String routeName = '/';

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final provider = ContactProvider();
  @override
  Widget build(BuildContext context) {
    provider.getAllContact();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: provider.contacts.length,
        itemBuilder: (context, index) {
          final contact = provider.contacts[index];
          return ListTile(
            title: Text(contact.companyName),
            subtitle: Text(contact.companyName),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, NewContactPage.routeName),
      ),
    );
  }
}
