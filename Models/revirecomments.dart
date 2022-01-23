import 'package:flutter/cupertino.dart';

class Comments with ChangeNotifier {
  final String id;

  final String description;

  Comments({
    required this.id,
    required this.description,
  });
}
