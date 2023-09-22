/*
dalam dart terdapat generic, generic class sendiri berguna apabila kita ingin membuat
type data pada class yang kita buat bersifat general dan sesuai keinginan kita. Hal tersebut
disebut sebagai generic parameter type. Untuk menambahkan paramater Type pada class bisa
menggunakan <NAMA PARAMETER TYPE> setelah nama classnya. Untuk parameter type pada class bisa ditambahkan
lebih dari satu atau multiple.
*/

class GenericClass<T> {
  T name;

  GenericClass(this.name);

  T getHelloWorld(T teks) {
    return teks;
  }
}

class GenericMultipleParameterType<T, X> {
  T name;
  X age;

  GenericMultipleParameterType(this.name, this.age);

  X getAge() {
    return age;
  }
}

void main() {
  var genericClass = GenericClass<String>('Dode Teddy');
  var genericMultipleParameterType = GenericMultipleParameterType<String, int>('Dode Teddy', 15);

  print(genericClass.name);
  print(genericClass.getHelloWorld('Hello, World'));

  print(genericMultipleParameterType.name);
  print(genericMultipleParameterType.getAge());
}
