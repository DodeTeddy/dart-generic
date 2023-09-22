/*
generic type parameter juga bisa diaplikasikan pada function
*/

int listLength<T>(List<T> list) {
  return list.length;
}

void main() {
  var names = ['Dode', 'Trisna', 'Shannon'];
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  print(listLength<String>(names));
  print(listLength<int>(numbers));
}
