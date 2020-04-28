import 'package:meta/meta.dart';

class TodoData {
  final String title;
  final String description;

  TodoData({@required this.title, @required this.description})
      : assert(title != null),
        assert(description != null);
}
