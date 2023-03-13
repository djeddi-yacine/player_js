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

## BSD 3-Clause License


```
BSD 3-Clause License

Copyright (c) 2023 Djeddi Yacine
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```