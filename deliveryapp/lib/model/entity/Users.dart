class UserEntity {
  late String? email;
  late String? lastname;
  late String? name;
  late String? address;
  late String? password;
  late String? phonenumber;
  late bool? isAdmin;

  UserEntity(
      {this.email,
      this.lastname,
      this.name,
      this.address,
      this.phonenumber,
      this.password,
      this.isAdmin});
}
