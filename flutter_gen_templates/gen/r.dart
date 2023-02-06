/// DO NOT EDIT. This is code generated via flutter_gen
// ignore_for_file: unused_element,avoid_classes_with_only_static_members,always_specify_types,lines_longer_than_80_chars,non_constant_identifier_names,prefer_double_quotes,unnecessary_raw_strings,use_raw_strings

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _assetsImagePath = 'assets/images';

class R {
  static const images = _ImageResources();
  static const svg = _SvgResources();
  static const strings = _Strings();
  static const colors = _Colors();
  static const fonts = _Fonts();
}

class _ImageResources {
  const _ImageResources();

  {% for file in files %}
  {% if "svg" in file.image_file %}
  SvgGenImage get {{ file.image_name }} => const SvgGenImage('$_assetsImagePath/{{ file.image_file }}');
  {% elif "png" in file.image_file or "jpg" in file.image_file %}
  AssetGenImage get {{ file.image_name }} => const AssetGenImage('$_assetsImagePath/{{ file.image_file }}');
  {% endif %}
  {% endfor %}
}

class _SvgResources {
  const _SvgResources();
}

class _Strings {
  const _Strings();

  {% for item in localization_items %}
  String get {{ item.name }} => '{{ item.key }}'.tr();
  {% endfor %}
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}

class _Colors {
  const _Colors();

  {% for color in colors %}
  Color get hex{{ color }} => Color(0xFF{{ color }});
  {% endfor %}
}

class _Fonts {
  const _Fonts();

  {% for font in fonts %}
  String get {{ font.name }} => "{{ font.family_name }}";
  {% endfor %}
}