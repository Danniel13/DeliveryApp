import '../entity/Users.dart';

class UserRepository {
  final _users = <String, UserEntity>{};

  UserRepository() {
    _users["dgozalez@email.com"] = UserEntity(
        email: "dgozalez@email.com",
        name: "Daniel ",
        lastname: "Gonzalez",
        address: "cll 7 ·3-41",
        phonenumber: "3719710",
        password: "soporte123",
        isAdmin: true);

    _users["ldaza@mail.com"] = UserEntity(
        /* _users: base de datos */
        email: "ldaza@email.com",
        name: "Lore ",
        lastname: "Daza",
        address: "cll 7 ·3-42",
        phonenumber: "3145789696",
        password: "1234567890",
        isAdmin: false);
  }
  UserEntity findByEmail(String email) {
    var user = _users[email];

    if (user == null) {
      throw Exception("User don't found");
    }

    return user;
  }
}
