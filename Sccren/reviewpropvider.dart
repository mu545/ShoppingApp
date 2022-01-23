import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Reviewproviser with ChangeNotifier {

  final String title;
  final String description;

  Reviewproviser({

    required this.title,
    required this.description,
  });
}
