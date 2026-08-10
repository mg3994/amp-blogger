import 'package:blogger_theme/blogger_theme.dart';
import 'group_variables.dart';

final skinVariable = [
  //   ==================================
  //      Home Page Title Section
  //   ==================================
  // [!] Enter Your Custom Home page Title in Value
  // [!] @type {String}
  // [!] Page: its Only For Home Page
  // [!] Note: Must Should enable Custom Home page Title Plugin To use this Title
  BVariable(
    name: "home.title",
    description:
        "Enter Your Custom Title in Value (Enable Custom Title Plugin)",
    type: "string",
    defaultValue: "<data:blog.title.escaped/>",
  ),
  //
  ...groupVariables,
];
