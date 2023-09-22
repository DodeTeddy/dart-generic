/*
covariant artinya kita bisa melakukan mengganti subtype(child) dengan supertype(parent)
tapi kita harus berhati-hati menggunakan fitur ini karena bisa terjadi runtime error
*/

class Data<T> {
  T value;

  Data(this.value);
}

void main() {
  Data<Object> data = Data<String>('Hello, World!');

  /* 
  akan error karena sebenernya data sudah diganti dengan Data<String>('Hello, World!') 
  akan tetapi tidak error karena type int merupakan turunan dari Objectnya dan errornya
  teerjadi pada runtime
  */

  data.value = 10;
}
