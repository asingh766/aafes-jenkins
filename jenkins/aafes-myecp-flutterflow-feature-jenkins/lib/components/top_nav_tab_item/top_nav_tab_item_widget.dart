import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'top_nav_tab_item_model.dart';
export 'top_nav_tab_item_model.dart';

class TopNavTabItemWidget extends StatefulWidget {
  const TopNavTabItemWidget({
    super.key,
    this.tabItemName,
  });

  final String? tabItemName;

  @override
  State<TopNavTabItemWidget> createState() => _TopNavTabItemWidgetState();
}

class _TopNavTabItemWidgetState extends State<TopNavTabItemWidget> {
  late TopNavTabItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopNavTabItemModel());

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
      width: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: AutoSizeText(
        valueOrDefault<String>(
          widget.tabItemName,
          'tabVarValue',
        ),
        maxLines: 1,
        style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Arial',
              fontSize: 18.0,
              letterSpacing: 0.0,
              useGoogleFonts: false,
            ),
      ),
    );
  }
}
