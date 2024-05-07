import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mobile_header_sub_item_model.dart';
export 'mobile_header_sub_item_model.dart';

class MobileHeaderSubItemWidget extends StatefulWidget {
  const MobileHeaderSubItemWidget({
    super.key,
    required this.subItemList,
    required this.isSeelcted,
    required this.onSelect,
  });

  final List<OptionStruct>? subItemList;
  final bool? isSeelcted;
  final Future Function(String? item)? onSelect;

  @override
  State<MobileHeaderSubItemWidget> createState() =>
      _MobileHeaderSubItemWidgetState();
}

class _MobileHeaderSubItemWidgetState extends State<MobileHeaderSubItemWidget> {
  late MobileHeaderSubItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileHeaderSubItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
      child: Builder(
        builder: (context) {
          final mobileHeaderSubItemList = widget.subItemList!.toList();
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(mobileHeaderSubItemList.length,
                (mobileHeaderSubItemListIndex) {
              final mobileHeaderSubItemListItem =
                  mobileHeaderSubItemList[mobileHeaderSubItemListIndex];
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().selectedSubHeaderItem =
                              mobileHeaderSubItemListItem.value;
                        });
                        await widget.onSelect?.call(
                          mobileHeaderSubItemListItem.value,
                        );
                      },
                      child: Text(
                        mobileHeaderSubItemListItem.label,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                ],
              );
            }),
          );
        },
      ),
    );
  }
}
