import 'dart:ffi';

class Student {
  String? firstName;
  String? lastName;
  String? group;
  double? averageMark;

  getScholarship() {
    if (averageMark == 5) {
      return 'Ваша степендия 20000 сом';
    } else {
      return '0';
    }
  }

  @override
  String toString() {
    return 'name is $firstName, lastName is $lastName, group is $group, averange mark is $averageMark';
  }
}

class Aspirant extends Student {
  String? scientificWork;

  @override
  getScholarship() {
    if (averageMark == 5) {
      return 'Ваша степендия 40000 сом';
    } else {
      return '18000';
    }
  }
}

// ------------------------------

class Animal {
  String? food;
  String? location;

  makeNoise() {}

  eat() {}

  sleep() {}
}

class Dog extends Animal {
  @override
  makeNoise() {
    return 'Собака Спит';
  }

  @override
  eat() {
    return 'Собака кушает';
  }

}

class Cat extends Animal {
  @override
  makeNoise() {
    return 'Кошка Спит';
  }

  @override
  eat() {
    return 'Кошка кушает';
  }

}

class Horse extends Animal {
  
  @override
  makeNoise() {
    return 'Лошадь Спит';
  }

  @override
  eat() {
    return 'Лошадь кушает';
  }
}

void main() {
  Student student = Student();
  student.firstName = "Valera";
  student.lastName = "Pupkin";
  student.group = "gg-1-11";
  student.averageMark = 5;

  // print(student.getScholarship());

  // ---------------

  Horse x = Horse();
  print(x.eat());
}
