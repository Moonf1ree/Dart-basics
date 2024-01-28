double power(num base, int exponent) {
  double result = 1.0;

  while (exponent != 0) {
    if (exponent % 2 == 1) {
      // возведение в степень числа
      result *= base;
    }

    base *= base;
    exponent ~/= 2;
  }

  return result;
}

extension Root on num {
  double root(int degree) {
    double approximation = 6;
    double error = 0.00001;
    while (
        (approximation - (this / power(approximation, degree - 1))) > error) {
      approximation =
          (approximation + (this / power(approximation, degree - 1))) /
              2; // Метод Ньютона
    }
    return approximation;
  }
}

// void main() {
//   print(16.root(2));
//   print(power(3, 3));
// }
