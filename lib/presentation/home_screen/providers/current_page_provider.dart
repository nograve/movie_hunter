import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_page_provider.g.dart';

@riverpod
class CurrentPage extends _$CurrentPage {
  @override
  int build() => 1;

  int get page => state;
  set page(int value) => state = value;
}
