void main(List<String> args) {
  for (int i = 2; i <= 201; i++) {
    bool isPrima = true;
    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrima = false;
        break;
      }
    }
    if (isPrima) {
      print("Bilangan Prima: $i \n Ahmad Dzul Fadhli Hannan 2341720106");
    }
  }
}