import 'package:answers_list_poo/exercise_7/face_video.dart';
import 'package:answers_list_poo/exercise_7/video_player.dart';
import 'package:answers_list_poo/exercise_7/youtube_video.dart';

void main() {
  YoutubeVideo ytVideo = YoutubeVideo();
  FaceVideo fcVideo = FaceVideo();

  VideoPlayer(ytVideo).play();
  VideoPlayer(fcVideo).play();
}