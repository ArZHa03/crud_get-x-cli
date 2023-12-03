part of 'app_pages.dart';

abstract class Routes {
  static const home = _Paths.home;
  static const add = _Paths.add;
  static const edit = _Paths.edit;
}

abstract class _Paths {
  static const home = '/home';
  static const add = '/add';
  static const edit = '/edit';
}
