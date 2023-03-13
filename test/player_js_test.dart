import 'package:player_js/player_js.dart';

void main() {
  const Iframe(
    url:
        'http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_30fps_normal.mp4',
    width: 600,
    height: 300,
    pathToPlayer: '',
    subtitles: {},
    poster: '',
    title: '',
    viewType: 'iframe',
  );
  const Player(
    height: 400,
    width: 700,
    videoUrl:
        'http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_30fps_normal.mp4',
    subtitles: {},
  );
}
