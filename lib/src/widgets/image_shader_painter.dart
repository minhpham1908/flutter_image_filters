part of image_filters;

class ImageShaderPainter extends CustomPainter {
  ImageShaderPainter(
    this._fragmentProgram,
    this._textures,
    this._configuration,
  );

  final ShaderConfiguration _configuration;
  final Iterable<TextureSource> _textures;
  final FragmentProgram _fragmentProgram;

  @override
  void paint(Canvas canvas, Size size) {
    final floatUniforms = Float32List.fromList(
      [..._configuration.numUniforms, size.width, size.height],
    );

    final paint = Paint()
      ..color = Colors.orangeAccent
      ..shader = _fragmentProgram.shader(
        floatUniforms: floatUniforms,
        samplerUniforms: _textures.map((e) => e.image).toList(),
      );

    /// Draw a rectangle with the shader-paint
    var vertices = Vertices(
      VertexMode.triangleStrip,
      [
        Offset(0, size.height),
        Offset(size.width, size.height),
        const Offset(0, 0),
        Offset(size.width, 0)
      ],
      textureCoordinates: [
        Offset(0, size.height),
        Offset(size.width, size.height),
        const Offset(0, 0),
        Offset(size.width, 0)
      ],
    );
    canvas.drawVertices(vertices, BlendMode.src, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is ImageShaderPainter &&
        oldDelegate._configuration == _configuration) {
      return false;
    }
    return true;
  }
}
