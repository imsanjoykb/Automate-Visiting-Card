import 'package:visiting_card/db/DbSqliteHelper.dart';
import 'package:visiting_card/model/contact_model.dart';

class ContactProvider {
  List<ContactModel> _contactList = [];
  List<ContactModel> get contacts => _contactList;
  void addContact(ContactModel contactModel) {
    DbSqliteHelper.addContact(contactModel);
  }

  void getAllContact() {
    _contactList = DbSqliteHelper.getAllContacts();
  }
}
