class Person {
  final int id;
  final String name;
  final int age;
  Person({
    required this.id,
    required this.name,
    required this.age,
  });

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: map['id'] as int,
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }
}
