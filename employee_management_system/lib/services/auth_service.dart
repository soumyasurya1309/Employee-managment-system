class AuthService {

  bool login(
    String email,
    String password,
  ) {

    if (
      email == 'admin@gmail.com' &&
      password == 'admin123'
    ) {
      return true;
    }

    return false;
  }

  void logout() {

  }
}