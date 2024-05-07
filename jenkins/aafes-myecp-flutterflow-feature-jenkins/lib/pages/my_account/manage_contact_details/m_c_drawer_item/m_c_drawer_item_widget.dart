import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'm_c_drawer_item_model.dart';
export 'm_c_drawer_item_model.dart';

class MCDrawerItemWidget extends StatefulWidget {
  const MCDrawerItemWidget({
    super.key,
    required this.title,
    bool? isSelected,
  }) : isSelected = isSelected ?? false;

  final String? title;
  final bool isSelected;

  @override
  State<MCDrawerItemWidget> createState() => _MCDrawerItemWidgetState();
}

class _MCDrawerItemWidgetState extends State<MCDrawerItemWidget> {
  late MCDrawerItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MCDrawerItemModel());

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
        color: widget.isSelected
            ? FlutterFlowTheme.of(context).accent2
            : FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          widget.title!,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Arial',
                color: Colors.black,
                fontSize: 14.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
        ),
      ),
    );
  }
}
