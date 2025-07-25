// enapsulasi  untuk menyembunyikan detail internal dari sebuah kelas dan hanya mengizinkan akses melalui metode yang telah ditentukan.

class Animal {
  String _jenis;

  Animal(this._jenis);

  // String get jenis {
  //   return _jenis;
  // }
  String get jenis => _jenis;

  void setJenis(String jenis) {
    print("Jenis hewan");
  }

  void suara() {
    print("Suara hewan");
  }
}

class Dog extends Animal {
  Dog() : super("Anjing");

  @override
  void suara() {
    print("GOG!");
  }

  @override
  void setJenis(String jenis) {
    print("Jenis $jenis");
  }
}

void main() {
  Dog anjing = Dog();

  // Ini kalo beda file akan error:
  // Error: The getter '_jenis' isn't defined for the class 'Dog'.
  print(anjing._jenis);

  // Yang boleh:
  anjing.suara();
}
