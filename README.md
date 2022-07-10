


<div align="center">

# scroll_to_top
  
[![BUILD](https://img.shields.io/badge/Build-Passing-<COLOR>.svg)](https://github.com/vijayinyoutube/scroll_to_top)
[![vijaycreations](https://img.shields.io/badge/Follow_me-vijaycreations-orange.svg?&logo=youtube&logoColor=orange)](https://www.youtube.com/channel/UCBC_Z7jla1GSITcqLKAtPxQ)
[![Repo Status](https://img.shields.io/badge/RepoStatus-Active-blueviolet.svg)](https://github.com/vijayinyoutube/scroll_to_top)
[![MIT license](https://img.shields.io/badge/License-MIT-red.svg)](https://github.com/vijayinyoutube/scroll_to_top)
[![Flutter](https://img.shields.io/badge/_Flutter_-Package-grey.svg?&logo=Flutter&logoColor=white&labelColor=blue)](https://github.com/vijayinyoutube/scroll_to_top)
</div>

[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/vijaycreations)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/vijay-creations-b60a391a6/) 
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/channel/UCBC_Z7jla1GSITcqLKAtPxQ)
[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/gSYDn6GXmF)
[![Pinterest](https://img.shields.io/badge/Pinterest-%23E60023.svg?&style=for-the-badge&logo=Pinterest&logoColor=white)](https://in.pinterest.com/vijaycreations02/boards/) [![Medium](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/vijay-r) [![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/vijaycreations_for_flutter/)

## Description

This package will help us reach the top of the page based on scroll offsets.

## Feature Image

<p align="center">
<img src="https://user-images.githubusercontent.com/58719230/171054127-70599a63-9966-4f90-b035-676433169c21.png" width="100%">
</p>

## Getting started

Add the following to your pubspec.yaml file.

```yaml
dependencies:
  scroll_to_top: 0.0.5
```

Import the package.

```dart
import 'package:scroll_to_top/scroll_to_top.dart';
```

## Usage

Wrap any flutter widget like ```ListView.builder``` with ```scroll_to_top``` widget. Make sure both these widgets have the same ```scrollController ```


```dart
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(...),
    body: ScrollToTop(
      scrollController: _scrollController,
      child:  ListView.builder(
        controller: _scrollController,
        ...),
    ),
  );
}
```
## Sample Result

<p align="center">
<img src="https://user-images.githubusercontent.com/58719230/171045112-6c60116d-f67f-4723-b2f5-1c435585aa4f.gif" width="100%">
</p>


## License

```
MIT License

Copyright (c) 2022 Vijay R

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
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


## Additional information

To know more awesome content about Flutter., 

Visit my channel 👉 : https://www.youtube.com/c/vijaycreationsflutter


### Support Us

[![Buymeacoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/vijaycreations) [![sponsor](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#white)](https://github.com/sponsors/vijayinyoutube)
