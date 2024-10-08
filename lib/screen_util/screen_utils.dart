part of flutter_screenutil;

class ScreenUtil {
  static const Size defaultSize = Size(360, 690);
  static late ScreenUtil _instance;

  late Size uiSize;

  late Orientation _orientation;

  late double _pixelRatio;
  late double _textScaleFactor;
  late double _screenWidth;
  late double _screenHeight;
  late double _statusBarHeight;
  late double _bottomBarHeight;

  ScreenUtil._();

  factory ScreenUtil() {
    return _instance;
  }

  static void init(
    BoxConstraints constraints, {
    Orientation orientation = Orientation.portrait,
    Size designSize = defaultSize,
  }) {
    _instance = ScreenUtil._()
      ..uiSize = designSize
      .._orientation = orientation
      .._screenWidth = constraints.maxWidth
      .._screenHeight = constraints.maxHeight;

    var window = WidgetsBinding.instance.window; //?? ui.window;
    _instance._pixelRatio = window.devicePixelRatio;
    _instance._statusBarHeight = window.padding.top;
    _instance._bottomBarHeight = window.padding.bottom;
    _instance._textScaleFactor = window.textScaleFactor;
  }

  ///Get screen orientation
  Orientation get orientation => _orientation;

  /// The number of font pixels for each logical pixel.
  double get textScaleFactor => _textScaleFactor;

  /// The size of the media in logical pixels (e.g, the size of the screen).
  double get pixelRatio => _pixelRatio;

  /// The horizontal extent of this size.
  double get screenWidth => _screenWidth;

  // _orientation == Orientation.portrait ? _screenWidth : _screenHeight;

  ///The vertical extent of this size. dp
  double get screenHeight => _screenHeight;

  // _orientation == Orientation.portrait ? _screenHeight : _screenWidth;

  /// The offset from the top, in dp
  double get statusBarHeight => _statusBarHeight / _pixelRatio;

  /// The offset from the bottom, in dp
  double get bottomBarHeight => _bottomBarHeight / _pixelRatio;

  /// The ratio of actual width to UI design
  double get scaleWidth => (_screenWidth / uiSize.width);

  // _orientation == Orientation.portrait
  //     ? (_screenWidth / uiSize.width)
  //     : (_screenHeight / uiSize.height);

  /// The ratio of actual height to UI design
  double get scaleHeight => (_screenHeight / uiSize.height);

  // _orientation == Orientation.portrait
  //     ? (_screenHeight / uiSize.height)
  //     : (_screenHeight / uiSize.height);

  double get scaleText => min(scaleWidth, scaleHeight);

  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  double setWidth(num width) => (width * scaleWidth);

  // _orientation == Orientation.portrait
  //     ? (width * scaleWidth)
  //     : (width * scaleHeight);

  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  double setHeight(num height) => (height * scaleHeight);

  // _orientation == Orientation.portrait
  //     ? (height * scaleHeight)
  //     : (height * scaleWidth);

  ///Adapt according to the smaller of width or height
  double radius(num r) => r * scaleText;

  ///- [fontSize]
  ///Font size adaptation method
  ///- [fontSize] The size of the font on the UI design, in dp.
  double setSp(num fontSize) => fontSize * scaleText;
}
