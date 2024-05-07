import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'account_options_model.dart';
export 'account_options_model.dart';

class AccountOptionsWidget extends StatefulWidget {
  const AccountOptionsWidget({
    super.key,
    this.selectedOption1,
    required this.selectedOption2,
    this.accountNumber,
    required this.isPrimaryUser,
    required this.cardNumber,
  });

  final String? selectedOption1;
  final String? selectedOption2;
  final String? accountNumber;
  final bool? isPrimaryUser;
  final String? cardNumber;

  @override
  State<AccountOptionsWidget> createState() => _AccountOptionsWidgetState();
}

class _AccountOptionsWidgetState extends State<AccountOptionsWidget> {
  late AccountOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountOptionsModel());

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
      width: 250.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    unawaited(
                      () async {
                        Navigator.pop(context);
                      }(),
                    );
                    FFAppState().update(() {
                      FFAppState().selelctedHeaderIndex = 0;
                      FFAppState().isFromTwoFacotrAuth = false;
                      FFAppState().isFroYourSecurity = false;
                      FFAppState().selectedMCDrawerIndex = 0;
                      FFAppState().selectedSubHeaderItem = 'My Profile';
                    });

                    context.pushNamed(
                      'ManageContactDetails',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Manage Profile',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Arial',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  unawaited(
                    () async {
                      Navigator.pop(context);
                    }(),
                  );

                  context.pushNamed(
                    'ManageUserPage',
                    queryParameters: {
                      'accountNumber': serializeParam(
                        widget.accountNumber,
                        ParamType.String,
                      ),
                      'isPrimaryUser': serializeParam(
                        widget.isPrimaryUser,
                        ParamType.bool,
                      ),
                      'cardNumber': serializeParam(
                        widget.cardNumber,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          'Manage Authorized Users',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Arial',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
