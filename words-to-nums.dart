class wordsToNumsConverter {
  void wordsToNums() {
    List<dynamic> converter(String string) {
      List<dynamic> new_arr = [];
      var arr = string.split(' ');
      var map = <String,
          int>{}; // потому что операции O(1), но можно использовать Stack.

      for (int i = 0; i < arr.length; i++) {
        if (!map.containsKey(arr[i])) map[arr[i]] = 1;
      }

      for (var key in map.keys) {
        switch (key) {
          case 'zero':
            new_arr.add(0);
            break;
          case 'one':
            new_arr.add(1);
            break;
          case 'two':
            new_arr.add(2);
            break;
          case 'three':
            new_arr.add(3);
            break;
          case 'four':
            new_arr.add(4);
            break;
          case 'five':
            new_arr.add(5);
            break;
          case 'six':
            new_arr.add(6);
            break;
          case 'seven':
            new_arr.add(7);
            break;
          case 'eight':
            new_arr.add(8);
            break;
          case 'nine':
            new_arr.add(9);
            break;
        }
      }

      return new_arr;
    }

    print(converter(
        'one two three dogs ')); // Чтобы работало для массива, нужно просто инициализировать массив вместо строки, ну и не понадобится split
  }
}

// void main() {
//   var result = wordsToNumsConverter();
//   result.wordsToNums();
// }
