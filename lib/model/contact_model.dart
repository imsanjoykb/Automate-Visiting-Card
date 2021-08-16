class ContactModel {
  int id;
  String contactName;
  String companyName;
  String designation;
  String mobileNumber;
  String emailAddress;
  String website;
  String streetAddress;
  bool favorite;

  ContactModel(
      {this.id = -1,
      required this.contactName,
      required this.companyName,
      this.designation = "",
      required this.mobileNumber,
      required this.emailAddress,
      this.website = "",
      required this.streetAddress,
      this.favorite = false});

  @override
  String toString() {
    return 'ContactModel{id:$id, contactName:$companyName, companyName:$companyName, designation:$designation,mobileNumber:$mobileNumber, emailAddress:$emailAddress, website:$website, streetAddress:$streetAddress, favorite:$favorite}';
  }
}
