// Abstraksi adalah konsep untuk menyembunyikan detail implementasi dan hanya menampilkan fitur penting dari objek.
// Kelas abstrak tidak dapat diinstansiasi dan berfungsi sebagai kerangka untuk kelas turunannya.

abstract class Animal {
  // method abstrak
  void display(String name);
  void getSpecies(String species);
  void suara(String suara);
}

class Dog extends Animal {
  @override
  void display(String name) {
    print('Nama: $name');
  }

  @override
  void getSpecies(String species) {
    print('Spesies: $species');
  }

  @override
  void suara(String suara) {
    print('Suara: $suara');
  }
}

void main() {
  final dog = Dog();
  dog.display('Rex');
  dog.getSpecies('Anjing');
  dog.suara('Guk');
}
