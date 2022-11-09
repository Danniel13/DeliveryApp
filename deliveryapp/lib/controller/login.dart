import '../model/entity/Users.dart';
import '../model/repository/fb_auth.dart';
import 'Request/LoginRequest.dart';

import '../model/repository/Users.dart';
import 'Request/RegisterRequest.dart'; /* siempre importar relativo ---/ */

class LoginController {
  late final UserRepository _userRepository;
  late final FirebaseAuthenticationRepository _authRepository;

  LoginController() {
    _userRepository = UserRepository();
    _authRepository = FirebaseAuthenticationRepository();
  }

  Future<String> validateEmailPassword(LoginRequest request) async {
    await _authRepository.signInEmailPassword(request.email, request.password);

    // Consultar el usuario que tenga el correo dado
    var user = _userRepository.findByEmail(request.email);

    return user.name!;
  }

  Future<void> registerNewUser(RegisterRequest request,
      {bool adminUser = false}) async {
    // Crear correo/clave en Firebase Authentication
    await _authRepository.createEmailPasswordAccount(
        request.email, request.password);

    // Agregar informacion adicional en base de datos
    _userRepository.save(UserEntity(
        email: request.email,
        name: request.name,
        address: request.address,
        phonenumber: request.phone,
        isAdmin: adminUser));
  }
}
