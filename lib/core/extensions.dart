extension StringExt on String {
  String last() {
    return this[length - 1];
  }

  bool isLetter() {
    if ((codeUnitAt(0) >= 97 && codeUnitAt(0) <= 122) ||
        (codeUnitAt(0) >= 65 && codeUnitAt(0) <= 90)) {
      return true;
    } else {
      return false;
    }
  }

  bool isLetterReg() {
    List<int> c = [];
    return contains(RegExp('^[a-zA-Z]'));
  }

  String dropLast() {
    if (isNotEmpty) {
      return substring(0, length - 1);
    } else {
      return '';
    }
  }

  int count(bool Function(String ch) function) {
    int check = 0;
    for (int i = 0; i < length; i++) {
      if (function(this[i])) {
        check++;
      }
    }
    return check;
  }

  String take(int n) {
    if (n < length) {
      return substring(0, n);
    } else {
      return this;
    }
  }

  String takeLast(int n) {
    if (n > length) {
      return this;
    } else {
      return substring(length - n);
    }
  }

  String takeWhile(bool Function(String ch) function) {
    String result = '';
    for (int i = 0; i < length; i++) {
      if (function(this[i])) {
        break;
      } else {
        result += this[i];
      }
    }
    return result;
  }

  String takeLastWhile(bool Function(String ch) function) {
    String result = '';
    for (int i = length; i >= 0; i--) {
      if (function(this[i])) {
        break;
      } else {
        result += this[i];
      }
    }
    return result;
  }

  String printerError(String s) {
    int add = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i].contains(RegExp('^[a-m]'))) {
        add++;
      }
    }
    String result = "$add/$s.length";
    return result;
  }
}
