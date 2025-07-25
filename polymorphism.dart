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

  void suara() {
    print("Suara animal");
  }
}

class Dog extends Animal {
  Dog(super.name, super.species);

  void bark() => print("Dog barks");
  @override
  void suara() => print("gogg");
}

class Cat extends Animal {
  Cat(super.name, super.species);
  @override
  void suara() => print("meow");
}

void main() {
  // membuat objek dari kelas Animal
  final dog = Dog("Ucup", "Dog");

  // memanggil method display
  dog.display(dog.name);
  dog.getSpecies("${dog.species}");
  dog.bark();

  final cat = Cat("Mimi", "Cat");
  cat.getSpecies("${cat.species}");
  cat.display(cat.name);
  cat.suara();
}
