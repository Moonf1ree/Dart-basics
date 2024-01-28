import 'dart:math';

class AlgoEuclid {
  void algos() {
    int gcd(int a, int b) {
      return (b != 0) ? gcd(b, a % b) : a;
    }

    double lcm(a, b) {
      return (a * b).abs() / gcd(b, a % b);
    }

    List<int> primeNums(num) {
      List<int> arr = [];

      for (int i = 2; i < sqrt(num); i++) {
        if (num % i == 0) {
          print('Number is not prime'); // проверка на простоту
        }
      }
      while (num % 2 == 0) {
        arr.add(2);
        num = num ~/ 2;
      }

      for (int i = 3; i < sqrt(num); i++) {
        while (num % i == 0) {
          arr.add(i);
          num = num ~/ i;
        }
      }
      if (num > 2) {
        arr.add(num); // добавляем простой множитель числа
      }

      return arr;
    }
    // dynamic primeNums(num) {  Проверка num на простое число вариант с return -1 при ошибке, вместо print
    //   List<int> arr = [];
    //   for (int i = 2; i < sqrt(num); i++) {
    //     if (num % i == 0) {
    //       return -1;
    //     }
    //   }
    //   return arr;
    // }

    print(primeNums(40));
    print(gcd(5, 10));
    print(lcm(5, 10));
  }
}

// void main() {
//   AlgoEuclid().algos();
// }
