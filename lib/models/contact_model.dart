class ContactModel {
  final int id;
  final String name;
  final String email;
  final String phonenumber;
  final String website;
  final String address;
  final bool isFavorite;

ContactModel({
  required this.id,
  required this.name,
  required this.email,
  required this.phonenumber,
  required this.website,
  required this.address,
  this.isFavorite = false,
});
}