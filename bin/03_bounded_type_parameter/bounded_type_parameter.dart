/*
bounded type parameter ini digunakan apabila kita ingin generic type parameter dibatasi dengan type data tertentu saja
*/

class ClassString<T extends String> {
  T text;

  ClassString(this.text);
}

class ClassNumber<T extends num> {
  T number;

  ClassNumber(this.number);
}

void main() {
  var classString = ClassString<String>('Hello, World!');
  // var classString = ClassString<int>(15); error

  var classNumber = ClassNumber<int>(15);
  // var classNumber = ClassNumber<String>('Hello, World!'); error

  print(classString.text);
  print(classNumber.number);
}
