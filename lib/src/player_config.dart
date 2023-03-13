part of player_js;

class PlayerConfig {
  static void init() {
    if (!kIsWeb) {
      throw UnsupportedError('PlayerJs only supports web');
    }
  }

  static void register({
    required Object hashCode,
    required String viewType,
    required String playerId,
    required String div,
    required String subtitleString,
  }) {
    {
      // ignore: undefined_prefixed_name
      ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
        final big = DivElement()
          ..id = div
          ..style.height = '100%'
          ..style.width = '100%';

        final playerElement = DivElement()
          ..id = playerId
          ..style.height = '100%'
          ..style.width = '100%';

        final script = ScriptElement()
          ..type = 'text/javascript'
          ..text = '''
          function setupPlayer(videoUrl, playerId, subtitle) {
            var player = new Playerjs({
              "id": playerId,
              "file": videoUrl,
              "subtitle": subtitle,
            });
          }
        ''';

        big.append(playerElement).append(script);
        return big;
      });
    }
  }
}
