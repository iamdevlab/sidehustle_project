class ClientInfo {
  String firstname;
  String lastname;
  String email;
  String? address;
  String? mobileTel;

  ClientInfo(
      {required this.firstname,
      required this.lastname,
      required this.email,
      this.address,
      this.mobileTel});
}
