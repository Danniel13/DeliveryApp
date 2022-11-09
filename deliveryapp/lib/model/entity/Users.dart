class UserEntity {
  late String? email;
  late String? lastname;
  late String? name;
  late String? address;
  late String? phonenumber;
  late bool? isAdmin;

  UserEntity(
      {this.email,
      this.lastname,
      this.name,
      this.address,
      this.phonenumber,
      this.isAdmin});

  @override
  String toString() {
    return "UserEntity {$email, $lastname, $name, $address, $phonenumber, $isAdmin}";
  }
}
