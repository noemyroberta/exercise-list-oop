import 'video.dart';

class YoutubeVideo extends Video {

  late final List<int> _bits;

  YoutubeVideo() : _bits = <int>[
    80, 97, 114, 97, 98, 233, 110, 115, 44,
    32, 118, 99, 32, 99, 111, 110, 115, 101,
    103, 117, 105, 117, 46,
  ];

  get bits => _bits;

  @override
  String getContent() {
    return String.fromCharCodes(_bits);
  }
}
