# Player JS
## _The Most Customized Player For Web Devlopement_

![Image](https://i.imgur.com/ZoFCFrg.png)

PlayerJS is video player for web created with javascript. This Package was created to make you able to use it from your Dart code as a Widget for Your Web App.
## Installation


- You Must To Create Your Own Player in [PlayerJS](https://playerjs.com/)
- Then Follow The Instructions To Make It
- After You Complete Make Sure to Download The Player
- Then Put It In Web Directory In Your Flutter Project
- After That Import It In index.html using script Tag
- Now You Are  Ready To Use The Package

## Features

- Supported Live Streaming
- Very Fast
- High Quality Codecs (H.264 + AAC)
- Chromecast
- Google Analytics
- Support Advertising
- Separate Iframe

## Supported Formats

You Need To Enable All Features First When You Build The Player .

| Name | Extensions |
| ------ | ------ |
| MPEG-4 | .MP4|
| Matroska | .MKV |
| Audio Video Interleave | .AVI |
| WebM | .WEBM |
| HLS | .M3U8 |
| MPEG-DASH | .MPD |

## Example

```dart
Player(
  videoUrl:
  'http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_30fps_normal.mp4',
  subtitles: {
    'ar': 'https://example/arabic.srt',
    'en': 'https://example/english.srt'
  },
  height: 400,
  width: 700,
)
```

## The MIT License (MIT)

```
MIT License


Copyright (c) 2023 Djeddi Yacine

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```