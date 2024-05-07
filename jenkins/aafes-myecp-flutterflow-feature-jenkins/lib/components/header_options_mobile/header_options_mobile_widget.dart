import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'header_options_mobile_model.dart';
export 'header_options_mobile_model.dart';

class HeaderOptionsMobileWidget extends StatefulWidget {
  const HeaderOptionsMobileWidget({
    super.key,
    bool? isChecked,
    this.label,
    this.onSelect,
  }) : isChecked = isChecked ?? false;

  final bool isChecked;
  final String? label;
  final Future Function()? onSelect;

  @override
  State<HeaderOptionsMobileWidget> createState() =>
      _HeaderOptionsMobileWidgetState();
}

class _HeaderOptionsMobileWidgetState extends State<HeaderOptionsMobileWidget> {
  late HeaderOptionsMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderOptionsMobileModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.onSelect?.call();
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    if (widget.isChecked) {
                      return Icon(
                        Icons.check,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      );
                    } else {
                      return Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: const BoxDecoration(),
                      );
                    }
                  },
                ),
                Text(
                  widget.label!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Arial',
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
          ),
        ],
      ),
    );
  }
}
