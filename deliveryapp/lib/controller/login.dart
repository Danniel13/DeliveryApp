import '../model/entity/repository/Users.dart'; /* siempre importar relativo ---/ */

class Logincontroller {
  late final UserRepository _userRepository;

  Logincontroller() {
    _userRepository = UserRepository();
  }

  void validatEmailPassword(String email, String password) {
    /* Consultar usuario que tenga el correo dado */

    var user = _userRepository.findByEmail(email);

    /* Verificar si la clave es igual a la que esta en BD */
    if (user.password != password) {
      throw Exception("Invalid credentials");
    }
  }
}
