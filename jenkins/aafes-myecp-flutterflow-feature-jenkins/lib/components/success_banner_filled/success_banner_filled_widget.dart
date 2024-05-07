import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'success_banner_filled_model.dart';
export 'success_banner_filled_model.dart';

class SuccessBannerFilledWidget extends StatefulWidget {
  const SuccessBannerFilledWidget({
    super.key,
    String? message,
  }) : message = message ?? '[message]';

  final String message;

  @override
  State<SuccessBannerFilledWidget> createState() =>
      _SuccessBannerFilledWidgetState();
}

class _SuccessBannerFilledWidgetState extends State<SuccessBannerFilledWidget> {
  late SuccessBannerFilledModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessBannerFilledModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).success,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: AutoSizeText(
          widget.message,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Arial',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                useGoogleFonts: false,
                lineHeight: 1.5,
              ),
        ),
      ),
    );
  }
}
