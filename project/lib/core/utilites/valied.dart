class myvalidaton {
  String? userValidation(String? input) {
    if ((input?.startsWith('a') ?? false) || (input?.length ?? 0) > 4) {
      return null;
    }
    return 'Invalid user name';
  }

  String? emailValidate(String? input) {
    if (input!.isEmpty ||
        !RegExp(r'^[a-zA-Z0-9._%+-]+@gmail.com$').hasMatch(input)) {
      return 'Enter correct email';
    } else {
      return null;
    }
  }

  String? passwordValidate(String? input) {
    if (input!.isEmpty ||
        !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$').hasMatch(input)) {
      return 'Enter correct password';
    } else {
      return null;
    }
  }
}
