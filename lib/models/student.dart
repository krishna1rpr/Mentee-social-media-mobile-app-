// import 'dart:convert';

class Student {
  // active = 1 || inactive = 0
  int status;
  bool isMentor;
  String name;
  List<String> stacks = [];

  Student(
      {this.status = 0,
      required this.name,
      this.isMentor = false,
      List<String>? stacks});

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        name: json["name"],
        isMentor: json["isMentor"],
        status: json["status"],
        stacks: List<String>.from(json["stacks"].map((x) => x)),
      );

  void addToStack(String stack) {
    stacks.add(stack);
  }

  void removeFromStack(String stack) {
    if (stacks.contains(stack)) {
      stacks.remove("stack");
    }
  }
}
