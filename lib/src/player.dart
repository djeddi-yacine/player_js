part of player_js;

///Render Video with Custom PlayerJS
class Player extends StatefulWidget {
  ///  Add the Height of the Video
  ///  like : 400
  final double height;

  ///  Add the Width of the Video
  ///  like : 700
  final double width;

  ///  Add the Direct URL of the video
  ///  like :  'https://example/video/video.mp4'
  final String videoUrl;

  /// add subtitles as a map like :
  ///   {'AR':'https://example/video/arabic.srt',
  ///   'EN':'https://example/video/english.vtt'}
  ///  remove all space in the ''
  final Map<String, String> subtitles;
  const Player({
    Key? key,
    required this.height,
    required this.width,
    required this.videoUrl,
    required this.subtitles,
  }) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late final String viewType = 'video-player-${widget.hashCode}';
  late final String playerId = 'player-${widget.hashCode}';
  late final String div = 'div-${widget.hashCode}';
  late String subtitleString = '';
  @override
  void initState() {
    super.initState();
    PlayerConfig.init();
    PlayerConfig.register(
      viewType: viewType,
      playerId: playerId,
      div: div,
      subtitleString: subtitleString,
      hashCode: widget.hashCode,
    );
    widget.subtitles.forEach((lang, url) {
      subtitleString += '[$lang]$url,';
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // Create a platform view for the video player
      return Container(
        color: Colors.transparent,
        height: widget.height,
        width: widget.width,
        child: HtmlElementView(
          viewType: viewType,
          onPlatformViewCreated: (int id) {
            js.context.callMethod(
                'setupPlayer', [widget.videoUrl, playerId, subtitleString]);
          },
        ),
      );
    } else {
      return Container(
        color: Theme.of(context).primaryColor,
        width: widget.width,
        height: widget.height,
        child: const Center(child: Text('Unsupported Platform')),
      );
    }
  }
}
