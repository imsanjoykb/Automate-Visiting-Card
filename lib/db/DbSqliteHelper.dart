import 'package:visiting_card/model/contact_model.dart';

class DbSqliteHelper {
  static void addContact(ContactModel contactModel) {
    //add to database
  }
  static List<ContactModel> getAllContacts() {
    return <ContactModel>[
      ContactModel(
          contactName: "Sanj",
          companyName: "ABC Company",
          mobileNumber: "013848384893",
          emailAddress: 'sanj@abc.com',
          streetAddress: "Mohakhali Dohs"),
      ContactModel(
          contactName: "Bisw",
          companyName: "ABC Company",
          mobileNumber: "013434945455",
          emailAddress: 'bisw@abc.com',
          streetAddress: "Mirpur Dohs")
    ];
  }
}
