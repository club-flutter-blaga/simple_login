class AuthenticationService {
  static AuthenticationService? _authService;

  static AuthenticationService get instance {
    _authService ??= AuthenticationService();
    return _authService!;
  }

  String? login(String username, String password) {
    if (username == 'admin' && password == 'password') {
      return null;
    } else {
      return 'Username or password are invalid';
    }
  }
}
