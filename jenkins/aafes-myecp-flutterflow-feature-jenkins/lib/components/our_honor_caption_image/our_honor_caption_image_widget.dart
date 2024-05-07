import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'our_honor_caption_image_model.dart';
export 'our_honor_caption_image_model.dart';

class OurHonorCaptionImageWidget extends StatefulWidget {
  const OurHonorCaptionImageWidget({super.key});

  @override
  State<OurHonorCaptionImageWidget> createState() =>
      _OurHonorCaptionImageWidgetState();
}

class _OurHonorCaptionImageWidgetState
    extends State<OurHonorCaptionImageWidget> {
  late OurHonorCaptionImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurHonorCaptionImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/our_honor_caption.png',
        width: 300.0,
        height: 200.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
