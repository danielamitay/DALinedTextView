# DALinedTextView

`DALinedTextView` is a `UITextView` subclass that draws ruled lines to the view, similar to iOS' built-in Notes app. The lines conform to the appropriate line-height for the currently set `UIFont`.

`DALinedTextView` is special because it was built with performance and appropriate behavior in mind. Most Q&A and OSS solutions involve image-based backgrounds or overzealous drawing code. For most applications such implementations are great, but `DALinedTextView` was built with 1000-line (or more) `UITextView`s in mind.

Performance decisions are commented so as to provide insight into the thought process behind `DALinedTextView`. The current `-drawRect:` implementation takes as little as 1ms on an iPhone 5.


![Screenshot](https://github.com/danielamitay/DALinedTextView/raw/master/screenshot.png)

## Installation

- Copy over the `DALinedTextView` folder to your project folder.
- `#import "DALinedTextView.h"`

## Usage

Example project included (DALinedTextViewExample)

## Notes

### Compatibility

iOS5.0+

### Automatic Reference Counting (ARC) support

`DALinedTextView` was made with ARC enabled by default.

## Contact

- [Personal website](http://danielamitay.com)
- [GitHub](http://github.com/danielamitay)
- [Twitter](http://twitter.com/danielamitay)
- [LinkedIn](http://www.linkedin.com/in/danielamitay)
- [Email](mailto:hello@danielamitay.com)

If you use/enjoy `DALinedTextView`, let me know!

## License

### MIT License

Copyright (c) 2013 Daniel Amitay (http://www.danielamitay.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
