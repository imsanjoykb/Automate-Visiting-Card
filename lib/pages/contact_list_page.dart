import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visiting_card/pages/new_contact_form_page.dart';
import 'package:visiting_card/provider/contact_provider.dart';

class ContactListPage extends StatefulWidget {
  static final String routeName = '/';

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  late ContactProvider _provider;

  @override
  void didChangeDependencies() {
    _provider = Provider.of<ContactProvider>(context);
    _provider.getAllContact();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _provider.getAllContact();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: _provider.contacts.length,
        itemBuilder: (context, index) {
          final contact = _provider.contacts[index];
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
