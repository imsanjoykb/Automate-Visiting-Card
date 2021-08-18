import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visiting_card/helper/constants.dart';
import 'package:visiting_card/model/contact_model.dart';
import 'package:visiting_card/provider/contact_provider.dart';

class NewContactPage extends StatefulWidget {
  static final String routeName = '/new_contact';

  @override
  _NewContactPageState createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _contactNameController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _designationController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _websiteController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  void dispose() {
    _contactNameController.dispose();
    _companyNameController.dispose();
    _designationController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    _websiteController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
        actions: [IconButton(onPressed: _saveContact, icon: Icon(Icons.save))],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            TextFormField(
              controller: _contactNameController,
              decoration: InputDecoration(labelText: 'Enter Contact Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return empty_field_error_msg;
                }
                return null;
              },
            ),
            TextFormField(
              controller: _companyNameController,
              decoration: InputDecoration(labelText: 'Enter Company Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return empty_field_error_msg;
                }
                return null;
              },
            ),
            TextFormField(
              controller: _designationController,
              decoration: InputDecoration(labelText: 'Enter Designation Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return empty_field_error_msg;
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: _mobileController,
              decoration: InputDecoration(labelText: 'Enter Mobile Number'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return mobile_field_error_msg;
                }
                if (value.length < 11) {
                  return mobile_field_error_msg;
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _mobileController,
              decoration: InputDecoration(labelText: 'Enter Email Address'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return empty_field_error_msg;
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.url,
              controller: _websiteController,
              decoration: InputDecoration(labelText: 'Enter Website Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return empty_field_error_msg;
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Enter Address Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return empty_field_error_msg;
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  void _saveContact() {
    if (_formKey.currentState!.validate()) {
      final contact = ContactModel(
          contactName: _companyNameController.text,
          companyName: _companyNameController.text,
          mobileNumber: _mobileController.text,
          emailAddress: _emailController.text,
          streetAddress: _addressController.text);

      Provider.of<ContactProvider>(context, listen: false).addContact(contact);
      Navigator.pop(context);
    }
  }
}
