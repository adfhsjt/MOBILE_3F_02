void main(List<String> args) {
  for (int i = 0; i <= 201; i++) {
    bool isPrima = true;
    if (i < 2) {
      isPrima = false;
    } else {
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          isPrima = false;
          break;
        }
      }
    }
    if (isPrima) {
      print("$i Ahmad Dzul Fadhli Hannan 2341720106");
    } else {
      print("$i.");
    }
  }
}