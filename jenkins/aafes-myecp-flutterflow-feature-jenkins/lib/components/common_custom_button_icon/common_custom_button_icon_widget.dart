import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'common_custom_button_icon_model.dart';
export 'common_custom_button_icon_model.dart';

class CommonCustomButtonIconWidget extends StatefulWidget {
  const CommonCustomButtonIconWidget({
    super.key,
    required this.onTap,
    required this.titile,
    required this.isDisabled,
    bool? isEditIconVisible,
  }) : isEditIconVisible = isEditIconVisible ?? false;

  final Future Function()? onTap;
  final String? titile;
  final bool? isDisabled;
  final bool isEditIconVisible;

  @override
  State<CommonCustomButtonIconWidget> createState() =>
      _CommonCustomButtonIconWidgetState();
}

class _CommonCustomButtonIconWidgetState
    extends State<CommonCustomButtonIconWidget> {
  late CommonCustomButtonIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonCustomButtonIconModel());

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
      onPressed: widget.isDisabled!
          ? null
          : () async {
              await widget.onTap?.call();
            },
      text: valueOrDefault<String>(
        widget.titile,
        'Validate',
      ),
      icon: Icon(
        Icons.print,
        color: FlutterFlowTheme.of(context).white,
        size: widget.isEditIconVisible ? 20.0 : 0.0,
      ),
      options: FFButtonOptions(
        height: 48.0,
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 16.0, 16.0),
        iconPadding: const EdgeInsets.all(0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Arial',
              color: FlutterFlowTheme.of(context).primaryBackground,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              useGoogleFonts: false,
            ),
        elevation: 0.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6.0),
        disabledColor: FlutterFlowTheme.of(context).accent2,
        disabledTextColor: FlutterFlowTheme.of(context).primaryText,
        hoverColor: const Color(0xFF9FB7E3),
        hoverBorderSide: const BorderSide(
          color: Colors.black,
          width: 1.0,
        ),
        hoverTextColor: Colors.black,
        hoverElevation: 2.0,
      ),
      showLoadingIndicator: false,
    );
  }
}
