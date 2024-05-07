import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'common_cancel_button_model.dart';
export 'common_cancel_button_model.dart';

class CommonCancelButtonWidget extends StatefulWidget {
  const CommonCancelButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
  });

  final Future Function()? onTap;
  final String? title;

  @override
  State<CommonCancelButtonWidget> createState() =>
      _CommonCancelButtonWidgetState();
}

class _CommonCancelButtonWidgetState extends State<CommonCancelButtonWidget> {
  late CommonCancelButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonCancelButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.onTap?.call();
      },
      text: valueOrDefault<String>(
        widget.title,
        'Cancel',
      ),
      options: FFButtonOptions(
        height: 48.0,
        padding: const EdgeInsets.all(16.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primaryBackground,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Arial',
              color: FlutterFlowTheme.of(context).primary,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              useGoogleFonts: false,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primary,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6.0),
        hoverColor: const Color(0xFFE0E0E0),
        hoverBorderSide: BorderSide(
          color: FlutterFlowTheme.of(context).accent3,
          width: 1.0,
        ),
        hoverTextColor: Colors.black,
        hoverElevation: 2.0,
      ),
    );
  }
}
