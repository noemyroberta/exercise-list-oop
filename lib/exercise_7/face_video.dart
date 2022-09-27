import 'video.dart';

class FaceVideo extends Video {

  late final List<bool> _bitsFace;

  FaceVideo() : _bitsFace = [
    false, true, false, true, false, false, false, false, false, true,
    true, false, false, false, false,
    true, false, true, true, true, false, false, true, false, false,
    true, true, false, false, false, false,
    true, false, true, true, false, false, false, true, false, true,
    true, true, false, true, false, false,
    true, false, true, true, false, true, true, true, false, false,
    true, true, true, false, false, true,
    true, false, false, true, false, true, true, false, false, false,
    false, true, false, false, false,
    false, false, false, true, true, true, false, true, true, false,
    false, true, true, false, false, false,
    true, true, false, false, true, false, false, false, false, false,
    false, true, true, false, false,
    false, true, true, false, true, true, false, true, true, true, true,
    false, true, true, false, true,
    true, true, false, false, true, true, true, false, false, true,
    true, false, true, true, false, false,
    true, false, true, false, true, true, false, false, true, true,
    true, false, true, true, true, false,
    true, false, true, false, true, true, false, true, false, false,
    true, false, true, true, true, false,
    true, false, true, false, false, true, false, true, true, true,
    false
  ];

  get bitsFace => _bitsFace;

  @override
  String getContent() {
   return String.fromCharCodes(_getIntBits());
  }

  List<int> _getIntBits() {
    int start = 0;
    List<int> intBits = [];

    for (int j = 1; j <= 23; j++) {
      intBits.add(_transform(start));
      start += 8;
    }

    return intBits;
  }

  int _transform(int start) {
    String strBits = '';
    int i = 0;

    while (i < 8) {
      _bitsFace[start] ? strBits += '1' : strBits += '0';

      start += 1;
      i += 1;
    }

    int group = int.parse(strBits, radix: 2);

    return group;
  }
}
