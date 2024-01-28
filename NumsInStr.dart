class NumsInString {
  void extractNums() {
    List<int> numsOfString(string) {
      List<int> nums = [];
      for (String word in string.split(' ')) {
        // на вход подается строка из слов, поэтому разделяем слова через пробел
        int unicode = word.codeUnitAt(0);
        if (unicode >= 48 && unicode <= 57) {
          // проверяем юникод, который принадлежит цифрам
          nums.add(int.parse(
              word)); // если в числе(слове) первый юникод это цифра, возвращаем число
        }
      }
      return nums;
    }

    print(numsOfString('1 2 Артур 4 5 69 Else')); // без регулярок
  }
}

// void main() {
//   var result = NumsInString();
//   result.extractNums();
// }
