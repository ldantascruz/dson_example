import 'package:dson_adapter/dson_adapter.dart';
import 'package:dson_example/home.dart';
import 'package:dson_example/person.dart';

void main(List<String> args) {
  final dson = DSON();

  final jsonMap = {
    'id': 1,
    'name': 'MyHome',
    'owner': {
      'id': 1,
      'name': 'Joshua Clak',
      'age': 3,
    },
    'parents': [
      {
        'id': 2,
        'name': 'Kepper Vidal',
        'age': 25,
      },
      {
        'id': 3,
        'name': 'Douglas Bisserra',
        'age': 23,
      },
    ],
  };

  Home home = dson.fromJson(jsonMap, Home.new, inner: {
    'owner': Person.new,
    'parents': ListParam<Person>(Person.new),
  });

  for (var person in home.parents) {
    print(person.id);
    print(person.name);
    print(person.age);
  }
}
