//Done automaticly
// import 'dart:core';

import 'dart:io';

main(List<String> args) {
  // String firstArgument = args[0];
  // var secondArgument = args[1];
  // print("First argument : " +
  //     firstArgument +
  //     ", second argument : " +
  //     secondArgument);
  stdout.write("What's your name ? ");
  String? name = stdin.readLineSync();
  stdout.writeln("Welcome $name");

  //Types
  int nb = 10;
  print("nb : $nb");

  double nb_float = 10.0;
  print("nb float : $nb_float");

  String str = 'Hello World';
  print(str);

  bool isCool = true;
  if (isCool) print("Cool !");

  dynamic dynVar = 10;
  print(dynVar);
  dynVar = "Hello World";
  print(dynVar);
  dynVar = null;
  print(dynVar);

  String rawString = r"\n doesn't work here !";
  print(rawString);

  String multiline_string = '''Hello
I'm RIC217 on Github
test''';
  print(multiline_string);

  //Conversions
  int two = int.parse("2");
  assert(two == 3); //dart --enable-asserts main.dart

  double a_lot = double.parse("2.1859");
  print(a_lot);

  String nb_stringified = a_lot.toStringAsFixed(2);
  print(nb_stringified); //Cela a arrondi, c'est bien !

  const String const_string = "This is a constant string.";
  print(const_string);
  print(const_string.runtimeType);

  //Classes
  Num nb_class = Num();
  if (nb_class != null) {
    nb = nb_class.num;
  }
  print(nb);

  var n;
  int? nb2 = n?.num;
  print(nb2);

  nb2 = n?.num ?? 0;
  print(nb2);

  int? nb3;
  print(nb3 ??= 100);
  print(nb3);

  //Ternary operator
  print(nb3 % 2 == 0 ? "100 is divisible by 2" : "100 isn't divisible by 2");

  // ignore: todo
  //TODO 35:03

  //Conditions
  var x = 3;

  if (x is double) {
    print("$x is double !");
  } else if (x is int) {
    print("$x is int");
  } else {
    print("$x is nor double, nor int !");
  }

  //Switch statement
  switch (x) {
    case 3:
      print("3");
      break;
    default:
      print("Not 3");
  }

  //For loop
  for (int i = 0; i < 10; i++) {
    print(i + 1);
  }

  //List
  var numbers = [1, 2, 3, 4, 5];

  //For in loop
  for (var i in numbers) {
    print("numbers : $i");
  }

  // ignore: todo
  //TODO 41:35

  //ForEach
  numbers.forEach((nb) => print("forEach : $nb"));
  numbers.forEach(printNum);

  print("-"*50);

  int i = 0;

  //Do while loop
  do {
    print(i);
    i++;
  } while (i<10);

  List<String> liste = ["a","Hello World"];
  print(liste);

  List<dynamic> multi_types_list = [1,"2",3.0];

  for (var test in multi_types_list){
    print(test);
  }

  //More on Lists
  List list2 = multi_types_list;
  print(multi_types_list);
  print(list2);
  multi_types_list[0] = "a"; //modifie les deux !
  print(multi_types_list);
  print(list2);

  print("*"*100);

  List copied_multi_types_list = [...multi_types_list];
  print(multi_types_list);
  print(copied_multi_types_list);
  multi_types_list[0] = "slt";
  print(multi_types_list);
  print(copied_multi_types_list);
}

class Num {
  int num = 10;
}

printNum(int num){
  print(num);
}