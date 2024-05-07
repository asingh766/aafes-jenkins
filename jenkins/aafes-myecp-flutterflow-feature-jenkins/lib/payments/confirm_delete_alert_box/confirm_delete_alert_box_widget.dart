import '/components/common_cancel_button/common_cancel_button_widget.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'confirm_delete_alert_box_model.dart';
export 'confirm_delete_alert_box_model.dart';

class ConfirmDeleteAlertBoxWidget extends StatefulWidget {
  const ConfirmDeleteAlertBoxWidget({
    super.key,
    this.onConfirm,
  });

  final Future Function()? onConfirm;

  @override
  State<ConfirmDeleteAlertBoxWidget> createState() =>
      _ConfirmDeleteAlertBoxWidgetState();
}

class _ConfirmDeleteAlertBoxWidgetState
    extends State<ConfirmDeleteAlertBoxWidget> {
  late ConfirmDeleteAlertBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmDeleteAlertBoxModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
        child: Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return (MediaQuery.sizeOf(context).width * 0.9);
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return (MediaQuery.sizeOf(context).width * 0.8);
            } else {
              return (MediaQuery.sizeOf(context).width * 0.5);
            }
          }(),
          height: () {
            if (MediaQuery.sizeOf(context).width < 363.0) {
              return 345.0;
            } else if (MediaQuery.sizeOf(context).width < 402.0) {
              return 330.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 310.0;
            } else if ((MediaQuery.sizeOf(context).width <= 531.0) &&
                (MediaQuery.sizeOf(context).width > 479.0)) {
              return 310.0;
            } else if ((MediaQuery.sizeOf(context).width <= 590.0) &&
                (MediaQuery.sizeOf(context).width > 531.0)) {
              return 310.0;
            } else {
              return 280.0;
            }
          }(),
          constraints: const BoxConstraints(
            maxWidth: 550.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF0F2654),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Delete Payment',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arial',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).error,
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'You are about to cancel your scheduled payment.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'This action will permanently delete your payment. You will need to reschedule a payment in the future for this account.\n\nPress CONFIRM to continue or CANCEL to stop this action. ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: wrapWithModel(
                        model: _model.commonCancelButtonModel,
                        updateCallback: () => setState(() {}),
                        child: CommonCancelButtonWidget(
                          key: const ValueKey('newRecoverPassPagePagecancel-button'),
                          title: 'Cancel',
                          onTap: () async {
                            context.safePop();
                          },
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.commonCustomButtonModel,
                      updateCallback: () => setState(() {}),
                      child: CommonCustomButtonWidget(
                        key: const ValueKey('newRecoverPassPagevalidate-button'),
                        titile: 'Confirm',
                        isDisabled: false,
                        isEditIconVisible: false,
                        onTap: () async {
                          await widget.onConfirm?.call();
                        },
                      ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
