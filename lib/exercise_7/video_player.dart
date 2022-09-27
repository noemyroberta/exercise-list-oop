import 'video_interface.dart';

class VideoPlayer {
  final IVideo video;

  VideoPlayer(this.video);

  void play() {
    print(video.getContent());
  }
}
