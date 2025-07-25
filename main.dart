import 'enkapsulasi.dart';

void main() {
  Dog anjing = Dog();

  // Ini akan error:
  // Error: The getter '_jenis' isn't defined for the class 'Dog'.
  anjing.setJenis(anjing.jenis);
  anjing.suara();

  // Yang boleh:
}
