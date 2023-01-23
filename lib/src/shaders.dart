part of flutter_image_filters;

Map<Type, Future<FragmentProgram> Function()> _fragmentPrograms = {
  MonochromeShaderConfiguration: () => monochromeFragmentProgram(),
  SquareLookupTableShaderConfiguration: () => lookupFragmentProgram(),
  HALDLookupTableShaderConfiguration: () => haldLookupFragmentProgram(),
  BrightnessShaderConfiguration: () => brightnessFragmentProgram(),
  ZoomBlurShaderConfiguration: () => zoomBlurFragmentProgram(),
  WhiteBalanceShaderConfiguration: () => whiteBalanceFragmentProgram(),
  VignetteShaderConfiguration: () => vignetteFragmentProgram(),
  VibranceShaderConfiguration: () => vibranceFragmentProgram(),
  ContrastShaderConfiguration: () => contrastFragmentProgram(),
  HueShaderConfiguration: () => hueFragmentProgram(),
  SwirlShaderConfiguration: () => swirlFragmentProgram(),
  SolarizeShaderConfiguration: () => solarizeFragmentProgram(),
  SaturationShaderConfiguration: () => saturationFragmentProgram(),
  RGBShaderConfiguration: () => rgbFragmentProgram(),
  PosterizeShaderConfiguration: () => posterizeFragmentProgram(),
  PixelationShaderConfiguration: () => pixelationFragmentProgram(),
  OpacityShaderConfiguration: () => opacityFragmentProgram(),
  LuminanceShaderConfiguration: () => luminanceFragmentProgram(),
  LuminanceThresholdShaderConfiguration: () =>
      luminanceThresholdFragmentProgram(),
  KuwaharaShaderConfiguration: () => kuwaharaFragmentProgram(),
  HighlightShadowShaderConfiguration: () => highlightShadowFragmentProgram(),
  BulgeDistortionShaderConfiguration: () => bulgeDistortionFragmentProgram(),
  CGAColorspaceShaderConfiguration: () => cgaColorspaceFragmentProgram(),
  ColorInvertShaderConfiguration: () => colorInvertFragmentProgram(),
  ColorMatrixShaderConfiguration: () => colorMatrixFragmentProgram(),
  CrosshatchShaderConfiguration: () => crosshatchFragmentProgram(),
  ExposureShaderConfiguration: () => exposureFragmentProgram(),
  FalseColorShaderConfiguration: () => falseColorFragmentProgram(),
  GammaShaderConfiguration: () => gammaFragmentProgram(),
  GrayscaleShaderConfiguration: () => grayscaleFragmentProgram(),
  GlassSphereShaderConfiguration: () => glassSphereFragmentProgram(),
  HalftoneShaderConfiguration: () => halftoneFragmentProgram(),
  HazeShaderConfiguration: () => hazeFragmentProgram(),
  NoneShaderConfiguration: () => noneFragmentProgram(),
};
