class OperacionesLogicas {
  int or(double a, double b) {
    return a.toInt() | b.toInt();
  }

  int and(double a, double b) {
    return a.toInt() & b.toInt();
  }

  int xor(double a, double b) {
    return a.toInt() ^ b.toInt();
  }
}
