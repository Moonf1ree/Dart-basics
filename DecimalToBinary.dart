class DecimalToBinary {
  void DecToBin() {
    List<int> DecToBin(num) {
      List<int> arr = [];

      while (num > 0) {
        if (num % 2 == 0)
          arr.insert(0, 0);
        else
          arr.insert(0, 1);
        num = num ~/ 2;
      }
      return arr; // O(N) если List в Dart это не Deque. Можно реализовать Deque и получить O(1)
    }

    print(DecToBin(61));
  }
}

// void main() {
//   var result = DecimalToBinary();
//   result.DecToBin();
// }
