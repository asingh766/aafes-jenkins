import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'info_help_icon_model.dart';
export 'info_help_icon_model.dart';

class InfoHelpIconWidget extends StatefulWidget {
  const InfoHelpIconWidget({
    super.key,
    String? message,
    required this.iconSize,
  }) : message = message ?? '[myMessage]';

  final String message;
  final double? iconSize;

  @override
  State<InfoHelpIconWidget> createState() => _InfoHelpIconWidgetState();
}

class _InfoHelpIconWidgetState extends State<InfoHelpIconWidget> {
  late InfoHelpIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoHelpIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlignedTooltip(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.message,
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Arial',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 14.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
        ),
      ),
      offset: 4.0,
      preferredDirection: AxisDirection.right,
      borderRadius: BorderRadius.circular(8.0),
      backgroundColor: Colors.black,
      elevation: 4.0,
      tailBaseWidth: 24.0,
      tailLength: 12.0,
      waitDuration: const Duration(milliseconds: 100),
      showDuration: const Duration(milliseconds: 100),
      triggerMode: TooltipTriggerMode.tap,
      child: FaIcon(
        FontAwesomeIcons.solidQuestionCircle,
        color: FlutterFlowTheme.of(context).primary,
        size: widget.iconSize,
      ),
    );
  }
}
