import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'select_delivery_method_comp_model.dart';
export 'select_delivery_method_comp_model.dart';

class SelectDeliveryMethodCompWidget extends StatefulWidget {
  const SelectDeliveryMethodCompWidget({
    super.key,
    required this.authType,
    required this.value,
    bool? isEnroll,
    bool? isSelected,
    required this.callback,
  })  : isEnroll = isEnroll ?? false,
        isSelected = isSelected ?? false;

  final String? authType;
  final String? value;
  final bool isEnroll;
  final bool isSelected;
  final Future Function()? callback;

  @override
  State<SelectDeliveryMethodCompWidget> createState() =>
      _SelectDeliveryMethodCompWidgetState();
}

class _SelectDeliveryMethodCompWidgetState
    extends State<SelectDeliveryMethodCompWidget> {
  late SelectDeliveryMethodCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDeliveryMethodCompModel());

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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.authType == 'Phone')
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/ic_phone.png',
                width: 50.0,
                height: 60.0,
                fit: BoxFit.contain,
              ),
            ),
          if (widget.authType == 'Email')
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/ic_email.png',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.contain,
              ),
            ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    widget.authType!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: widget.isEnroll
                              ? const Color(0xFF9E9E9E)
                              : FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                          lineHeight: 1.5,
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await widget.callback?.call();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 22.0,
                          height: 22.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: widget.isEnroll
                                  ? FlutterFlowTheme.of(context).accent2
                                  : FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Visibility(
                            visible: widget.isSelected,
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              decoration: BoxDecoration(
                                color: widget.isEnroll
                                    ? FlutterFlowTheme.of(context).accent2
                                    : FlutterFlowTheme.of(context).primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: AutoSizeText(
                              widget.value!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    color: widget.isEnroll
                                        ? const Color(0xFF9E9E9E)
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.isEnroll)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 0.0, 0.0),
                      child: AutoSizeText(
                        widget.authType == 'Phone'
                            ? 'You are not enrolled to receive 2FA code via text.You can enroll by going to My Profile at anytime.'
                            : 'You are not enrolled to receive 2FA code via email. You can enroll by going to My Profile at anytime.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              color: const Color(0xFF9E9E9E),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                              lineHeight: 1.25,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
