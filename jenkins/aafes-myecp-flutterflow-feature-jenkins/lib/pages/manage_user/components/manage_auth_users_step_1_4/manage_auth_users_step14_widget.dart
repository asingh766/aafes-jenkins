import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/common_custom_button/common_custom_button_widget.dart';
import '/components/error_banner_outlined/error_banner_outlined_widget.dart';
import '/components/success_banner_filled/success_banner_filled_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'manage_auth_users_step14_model.dart';
export 'manage_auth_users_step14_model.dart';

class ManageAuthUsersStep14Widget extends StatefulWidget {
  const ManageAuthUsersStep14Widget({
    super.key,
    required this.nextCallback,
    bool? success,
    required this.accountNumber,
    bool? isPrimaryUser,
  })  : success = success ?? false,
        isPrimaryUser = isPrimaryUser ?? false;

  final Future Function()? nextCallback;
  final bool success;
  final String? accountNumber;
  final bool isPrimaryUser;

  @override
  State<ManageAuthUsersStep14Widget> createState() =>
      _ManageAuthUsersStep14WidgetState();
}

class _ManageAuthUsersStep14WidgetState
    extends State<ManageAuthUsersStep14Widget> {
  late ManageAuthUsersStep14Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageAuthUsersStep14Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.authUsers = [];
        _model.errorAPI = ' ';
        _model.hasErrorAPI = false;
      });
      await action_blocks.showLoadingDialog(context);
      _model.apiResultAuthUsersD =
          await AuthorisedUsersGroup.authorisedUsersCall.call(
        authToken: currentAuthenticationToken,
        userId: FFAppState().selectedUserId.toString(),
        accountNumber: widget.accountNumber,
        dynamicBaseURL: FFAppState().dynamicBaseURL,
      );
      Navigator.pop(context);
      if ((_model.apiResultAuthUsersD?.succeeded ?? true)) {
        _model.updatePage(() {
          _model.authUsers = ((_model.apiResultAuthUsersD?.jsonBody ?? '')
                  .toList()
                  .map<AuthorisedUserStruct?>(AuthorisedUserStruct.maybeFromMap)
                  .toList() as Iterable<AuthorisedUserStruct?>)
              .withoutNulls
              .toList()
              .cast<AuthorisedUserStruct>();
          _model.errorAPI = ' ';
          _model.hasErrorAPI = false;
        });
      } else {
        setState(() {
          _model.errorAPI = getJsonField(
            (_model.apiResultAuthUsersD?.jsonBody ?? ''),
            r'''$.Message''',
          ).toString().toString();
          _model.hasErrorAPI = true;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (widget.success && (_model.hasErrorAPI == false))
              wrapWithModel(
                model: _model.successBannerFilledModel,
                updateCallback: () => setState(() {}),
                child: const SuccessBannerFilledWidget(
                  message: 'Authorized user successfully added.',
                ),
              ),
            if (_model.hasErrorAPI)
              wrapWithModel(
                model: _model.errorBannerOutlinedModel,
                updateCallback: () => setState(() {}),
                child: ErrorBannerOutlinedWidget(
                  message: _model.errorAPI,
                ),
              ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'If you wish to remove an authorized user, please contact the Exchange Credit Program Call Center at 1-877-891-7827 (STAR). For additional telephone numbers, click ',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Arial',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: false,
                              ),
                        ),
                        TextSpan(
                          text: 'here.',
                          style: const TextStyle(
                            color: Color(0xFF0000FF),
                          ),
                          mouseCursor: SystemMouseCursors.click,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              context.pushNamed(
                                'ContactUsStatement',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Arial',
                            color: FlutterFlowTheme.of(context).black,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 0.0,
                    height: 0.0,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                if (widget.isPrimaryUser)
                  wrapWithModel(
                    model: _model.commonCustomButtonModel,
                    updateCallback: () => setState(() {}),
                    child: CommonCustomButtonWidget(
                      titile: 'Add User',
                      isDisabled: false,
                      isEditIconVisible: false,
                      onTap: () async {
                        await widget.nextCallback?.call();
                      },
                    ),
                  ),
              ].divide(const SizedBox(width: 11.0)),
            ),
            Material(
              color: Colors.transparent,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent2,
                        borderRadius: const BorderRadius.only(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Authorized User’s Name',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context).black,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'Added On',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arial',
                                      color: FlutterFlowTheme.of(context).black,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF707070),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final user = _model.authUsers.toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: user.length,
                          itemBuilder: (context, userIndex) {
                            final userItem = user[userIndex];
                            return Container(
                              decoration: BoxDecoration(
                                color: userIndex.toDouble() % 2 == 0
                                    ? FlutterFlowTheme.of(context)
                                        .primaryBackground
                                    : const Color(0xFFF1F1F1),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        userItem.fullName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Arial',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Text(
                                        functions.parseDateAuthUsers(
                                            userItem.addedOn),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Arial',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ].divide(const SizedBox(height: 22.0)),
        ),
      ),
    );
  }
}
