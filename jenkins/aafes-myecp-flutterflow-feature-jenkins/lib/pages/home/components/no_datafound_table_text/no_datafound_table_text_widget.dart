import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_datafound_table_text_model.dart';
export 'no_datafound_table_text_model.dart';

class NoDatafoundTableTextWidget extends StatefulWidget {
  const NoDatafoundTableTextWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<NoDatafoundTableTextWidget> createState() =>
      _NoDatafoundTableTextWidgetState();
}

class _NoDatafoundTableTextWidgetState
    extends State<NoDatafoundTableTextWidget> {
  late NoDatafoundTableTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoDatafoundTableTextModel());

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
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              child: Text(
                widget.text!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Arial',
                      color: Colors.black,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
