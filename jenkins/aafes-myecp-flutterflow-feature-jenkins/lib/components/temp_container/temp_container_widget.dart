import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'temp_container_model.dart';
export 'temp_container_model.dart';

class TempContainerWidget extends StatefulWidget {
  const TempContainerWidget({
    super.key,
    required this.listData,
  });

  final List<String>? listData;

  @override
  State<TempContainerWidget> createState() => _TempContainerWidgetState();
}

class _TempContainerWidgetState extends State<TempContainerWidget> {
  late TempContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TempContainerModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Builder(
        builder: (context) {
          final listDAta = widget.listData!.toList();
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(listDAta.length, (listDAtaIndex) {
              final listDAtaItem = listDAta[listDAtaIndex];
              return Container(
                decoration: BoxDecoration(
                  color: _model.selectedIndex == listDAtaIndex
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.selectedIndex = listDAtaIndex;
                      });
                    },
                    child: Text(
                      listDAtaItem,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            color: _model.selectedIndex == listDAtaIndex
                                ? FlutterFlowTheme.of(context).primaryBackground
                                : FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
