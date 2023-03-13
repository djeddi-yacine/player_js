part of player_js;

///Render Iframe with Custom PlayerJS
class Iframe extends StatefulWidget {
  final String viewType;

  /// Add the path of the player.html.
  /// make sure that the same folder
  /// contain both the player.html
  /// and playerjs.js
  /// put the folder in the web
  /// folder in the root of your project
  final String pathToPlayer;

  ///  Add the Direct URL of the video
  ///  like :  'https://example/video/video.mp4'
  final String url;

  ///  Add the Width of the iframe
  ///  like : 700
  final double width;

  ///  Add the Height of the iframe
  ///  like : 400
  final double height;

  /// add subtitles as a map like :
  ///   {'AR':'https://example/video/arabic.srt',
  ///   'EN':'https://example/video/english.vtt'}
  ///  remove all space in the ''
  final Map<String, String> subtitles;

  /// add Poster like  :
  /// 'https://example/video/poster.png'
  final String poster;

  /// add Title like : 'Avengers'
  final String title;

  const Iframe({
    Key? key,
    required this.pathToPlayer,
    required this.url,
    required this.width,
    required this.height,
    required this.subtitles,
    required this.poster,
    required this.title,
    required this.viewType,
  }) : super(key: key);

  @override
  State<Iframe> createState() => _IframeState();
}

class _IframeState extends State<Iframe> {
  @override
  void initState() {
    super.initState();
    IframeConfig.init(); // initialize the plugin
    IframeConfig.registerView(
      viewType: widget.viewType,
      pathToPlayer: widget.pathToPlayer,
      url: widget.url,
      width: widget.width,
      height: widget.height,
      subtitles: widget.subtitles,
      poster: widget.poster,
      title: widget.title,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Container(
        width: widget.width,
        height: widget.height,
        color: Colors.transparent,
        child: HtmlElementView(viewType: widget.viewType),
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
