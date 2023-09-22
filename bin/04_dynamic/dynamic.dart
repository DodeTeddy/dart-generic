/*
ada masa kita ingin membuat type data yang generic menjadi dynamic tidak mementingkan apapun tipe datanya
caranya kita tinggal menghapus parameter type genericnya
*/

class Data<T> {
  T value;

  Data(this.value);
}

void printDataOne<T>(Data<T> data) {
  print(data.value);
}

void printDataTwo(Data data) {
  // dynamic
  print(data.value);
}

void main() {
  printDataOne<String>(Data('Hello, World!'));

  printDataTwo(Data(10)); // dynamic
  printDataTwo(Data('Hello, World!')); // dynamic
  printDataTwo(Data(true)); // dynamic
}
