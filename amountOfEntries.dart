class AmountOfEntries {
  void amountOfEntries() {
    Map<String, int> amountOfEntries(List<String> arr) {
      var map = <String, int>{};
      for (int i = 0; i < arr.length; ++i) {
        map.update(arr[i], (existingValue) => existingValue + 1,
            ifAbsent: () =>
                1); // пришлось углубиться в документацию. Ручными методами как на других ЯП выходила ошибка
        // с инкрементацией map value, потом думаю разобраться в чем причина, но это связано с null-safety Dart
      }
      return map;
    }

    print(amountOfEntries([
      'word',
      'word',
      'word',
      'word',
      'shark',
      'gap',
      'gap',
      'array',
      'shark'
    ]));
  }
}

// void main() {
//   var result = AmountOfEntries();
//   result.amountOfEntries();
// }
