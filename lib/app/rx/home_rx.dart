import 'package:rx_notifier/rx_notifier.dart';

class HomeRx {
  final _text = RxNotifier<String>(null);

  get text => _text.value;
  set text(String text) => _text.value = text;
}
