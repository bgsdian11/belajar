class Animal {
  // atribut
  String name;
  String species;

  // konstruktor
  Animal(this.name, this.species);

  // method
  void display(String name) {
    print("Name: $name");
  }

  void getSpecies(String species) {
    print("Species: $species");
  }

  void suara(String suara) {
    print("Suara: $suara");
  }
}

class Dog extends Animal {
  Dog(super.name, super.species);

  void bark() => print("Dog barks");
}

void main() {
  // membuat objek dari kelas Animal
  final dog = Dog("Ucup", "Dog");

  // memanggil method display
  dog.display(dog.name);
  dog.getSpecies("${dog.species}");
  dog.bark();
}
