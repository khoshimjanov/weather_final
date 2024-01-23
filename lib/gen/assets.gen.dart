/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Barlow-Black.ttf
  String get barlowBlack => 'assets/fonts/Barlow-Black.ttf';

  /// File path: assets/fonts/Barlow-BlackItalic.ttf
  String get barlowBlackItalic => 'assets/fonts/Barlow-BlackItalic.ttf';

  /// File path: assets/fonts/Barlow-Bold.ttf
  String get barlowBold => 'assets/fonts/Barlow-Bold.ttf';

  /// File path: assets/fonts/Barlow-BoldItalic.ttf
  String get barlowBoldItalic => 'assets/fonts/Barlow-BoldItalic.ttf';

  /// File path: assets/fonts/Barlow-ExtraBold.ttf
  String get barlowExtraBold => 'assets/fonts/Barlow-ExtraBold.ttf';

  /// File path: assets/fonts/Barlow-ExtraBoldItalic.ttf
  String get barlowExtraBoldItalic => 'assets/fonts/Barlow-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/Barlow-ExtraLight.ttf
  String get barlowExtraLight => 'assets/fonts/Barlow-ExtraLight.ttf';

  /// File path: assets/fonts/Barlow-ExtraLightItalic.ttf
  String get barlowExtraLightItalic =>
      'assets/fonts/Barlow-ExtraLightItalic.ttf';

  /// File path: assets/fonts/Barlow-Italic.ttf
  String get barlowItalic => 'assets/fonts/Barlow-Italic.ttf';

  /// File path: assets/fonts/Barlow-Light.ttf
  String get barlowLight => 'assets/fonts/Barlow-Light.ttf';

  /// File path: assets/fonts/Barlow-LightItalic.ttf
  String get barlowLightItalic => 'assets/fonts/Barlow-LightItalic.ttf';

  /// File path: assets/fonts/Barlow-Medium.ttf
  String get barlowMedium => 'assets/fonts/Barlow-Medium.ttf';

  /// File path: assets/fonts/Barlow-MediumItalic.ttf
  String get barlowMediumItalic => 'assets/fonts/Barlow-MediumItalic.ttf';

  /// File path: assets/fonts/Barlow-Regular.ttf
  String get barlowRegular => 'assets/fonts/Barlow-Regular.ttf';

  /// File path: assets/fonts/Barlow-SemiBold.ttf
  String get barlowSemiBold => 'assets/fonts/Barlow-SemiBold.ttf';

  /// File path: assets/fonts/Barlow-SemiBoldItalic.ttf
  String get barlowSemiBoldItalic => 'assets/fonts/Barlow-SemiBoldItalic.ttf';

  /// File path: assets/fonts/Barlow-Thin.ttf
  String get barlowThin => 'assets/fonts/Barlow-Thin.ttf';

  /// File path: assets/fonts/Barlow-ThinItalic.ttf
  String get barlowThinItalic => 'assets/fonts/Barlow-ThinItalic.ttf';

  /// File path: assets/fonts/OFL.txt
  String get ofl => 'assets/fonts/OFL.txt';

  /// List of all assets
  List<String> get values => [
        barlowBlack,
        barlowBlackItalic,
        barlowBold,
        barlowBoldItalic,
        barlowExtraBold,
        barlowExtraBoldItalic,
        barlowExtraLight,
        barlowExtraLightItalic,
        barlowItalic,
        barlowLight,
        barlowLightItalic,
        barlowMedium,
        barlowMediumItalic,
        barlowRegular,
        barlowSemiBold,
        barlowSemiBoldItalic,
        barlowThin,
        barlowThinItalic,
        ofl
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsWeatherGen get weather => const $AssetsIconsWeatherGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/main_background.png
  AssetGenImage get mainBackground =>
      const AssetGenImage('assets/images/main_background.png');

  /// List of all assets
  List<AssetGenImage> get values => [mainBackground];
}

class $AssetsIconsWeatherGen {
  const $AssetsIconsWeatherGen();

  /// File path: assets/icons/weather/cloud.svg
  String get cloud => 'assets/icons/weather/cloud.svg';

  /// File path: assets/icons/weather/rain.svg
  String get rain => 'assets/icons/weather/rain.svg';

  /// File path: assets/icons/weather/sun.svg
  String get sun => 'assets/icons/weather/sun.svg';

  /// List of all assets
  List<String> get values => [cloud, rain, sun];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
