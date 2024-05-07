import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'error_banner_outlined_model.dart';
export 'error_banner_outlined_model.dart';

class ErrorBannerOutlinedWidget extends StatefulWidget {
  const ErrorBannerOutlinedWidget({
    super.key,
    this.message,
  });

  final String? message;

  @override
  State<ErrorBannerOutlinedWidget> createState() =>
      _ErrorBannerOutlinedWidgetState();
}

class _ErrorBannerOutlinedWidgetState extends State<ErrorBannerOutlinedWidget> {
  late ErrorBannerOutlinedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorBannerOutlinedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).error,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AutoSizeText(
          valueOrDefault<String>(
            widget.message,
            'error',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Arial',
                color: FlutterFlowTheme.of(context).error,
                letterSpacing: 0.0,
                useGoogleFonts: false,
                lineHeight: 1.5,
              ),
        ),
      ),
    );
  }
}
