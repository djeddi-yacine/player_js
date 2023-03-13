part of player_js;

class IframeConfig {
  static void init() {
    if (!kIsWeb) {
      throw UnsupportedError('Iframe only supports web');
    }
  }
  static void registerView({
    required String viewType,
    required String pathToPlayer,
    required String url,
    required double width,
    required double height,
    required Map<String, String> subtitles,
    required String poster,
    required String title,
  }) {{
    String buildUrl(
        String pathToPlayer,
        String url,
        Map<String, String>? subtitles,
        String? poster,
        String? title,
        ) {
      final subtitleList = subtitles?.entries
          .map((entry) => '[${entry.key}]${entry.value}')
          .join(',');
      return '$pathToPlayer?file=$url&poster=${poster ?? ''}&title=${title ?? ''}&subtitle=${subtitleList ?? ''}';
    }
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewType,
          (int viewId) => IFrameElement()
        ..height = '100%'
        ..width = '100%'
        ..style.height = '100%'
        ..style.width = '100%'
        ..src = buildUrl(pathToPlayer, url, subtitles, poster, title),
    );
  }
  }
}
