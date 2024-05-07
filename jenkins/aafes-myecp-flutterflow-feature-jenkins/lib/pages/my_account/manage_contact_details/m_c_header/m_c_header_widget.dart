import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'm_c_header_model.dart';
export 'm_c_header_model.dart';

class MCHeaderWidget extends StatefulWidget {
  const MCHeaderWidget({
    super.key,
    required this.title,
    bool? isRounded,
  }) : isRounded = isRounded ?? false;

  final String? title;
  final bool isRounded;

  @override
  State<MCHeaderWidget> createState() => _MCHeaderWidgetState();
}

class _MCHeaderWidgetState extends State<MCHeaderWidget> {
  late MCHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MCHeaderModel());

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
      decoration: BoxDecoration(
        color: const Color(0xFF0F2654),
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(0.0),
          bottomRight: const Radius.circular(0.0),
          topLeft: Radius.circular(valueOrDefault<double>(
            widget.isRounded ? 8.0 : 0.0,
            0.0,
          )),
          topRight: Radius.circular(valueOrDefault<double>(
            widget.isRounded ? 8.0 : 0.0,
            0.0,
          )),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Arial',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
