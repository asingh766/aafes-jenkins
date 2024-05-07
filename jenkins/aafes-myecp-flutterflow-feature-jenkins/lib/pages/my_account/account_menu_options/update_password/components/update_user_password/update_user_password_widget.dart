import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/my_account/account_menu_options/update_password/components/manage_password_static/manage_password_static_widget.dart';
import '/pages/my_account/account_menu_options/update_password/components/new_password/new_password_widget.dart';
import '/pages/my_account/update_email_address/added2_f_a_sec_comp/added2_f_a_sec_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'update_user_password_model.dart';
export 'update_user_password_model.dart';

class UpdateUserPasswordWidget extends StatefulWidget {
  const UpdateUserPasswordWidget({
    super.key,
    this.onEdit,
  });

  final Future Function()? onEdit;

  @override
  State<UpdateUserPasswordWidget> createState() =>
      _UpdateUserPasswordWidgetState();
}

class _UpdateUserPasswordWidgetState extends State<UpdateUserPasswordWidget> {
  late UpdateUserPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateUserPasswordModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isTwoFactAuth = false;
        _model.isEdit = false;
      });
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

    return Builder(
      builder: (context) {
        if (!_model.isTwoFactAuth!) {
          return Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Update Password',
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
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 2.5,
                  thickness: 3.0,
                  color: Color(0xFF801B0E),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Builder(
                        builder: (context) {
                          if (_model.isEdit == false) {
                            return Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.managePasswordStaticModel,
                                updateCallback: () => setState(() {}),
                                child: ManagePasswordStaticWidget(
                                  isSuccess: _model.isSuccess,
                                  onEdit: () async {
                                    if (FFAppState().login2FARes.is2FANeeded
                                        ? (FFAppState()
                                                .login2FARes
                                                .isTwoFAOtpIn ||
                                            FFAppState()
                                                .login2FARes
                                                .isTwoFAEmailOptIn)
                                        : false) {
                                      setState(() {
                                        _model.isTwoFactAuth = true;
                                        _model.isSuccess = false;
                                      });
                                    } else {
                                      setState(() {
                                        _model.isSuccess = false;
                                        _model.isEdit = true;
                                      });
                                    }
                                  },
                                ),
                              ),
                            );
                          } else {
                            return Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: wrapWithModel(
                                model: _model.newPasswordModel,
                                updateCallback: () => setState(() {}),
                                child: NewPasswordWidget(
                                  onCancel: (isSuccess) async {
                                    setState(() {
                                      _model.isEdit = false;
                                      _model.isSuccess = isSuccess!;
                                    });
                                  },
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ],
            ),
          );
        } else {
          return wrapWithModel(
            model: _model.added2FASecCompModel,
            updateCallback: () => setState(() {}),
            child: Added2FASecCompWidget(
              isFromManageUserDetails: true,
              confirmCallBack: () async {
                setState(() {
                  _model.isTwoFactAuth = false;
                  _model.isEdit = true;
                });
              },
              cancelCallBack: () async {
                setState(() {
                  _model.isTwoFactAuth = false;
                });
              },
            ),
          );
        }
      },
    );
  }
}
