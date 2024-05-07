// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/scheduler.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:my_e_c_p/components/to_unlock_comp/to_unlock_comp_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm(
      {super.key,
      this.width,
      this.height,
      this.errorMessage,
      required this.onFormRendered,
      required this.onRememberUserId,
      required this.remeberUserId,
      required this.loginEnabled,
      required this.onUpdateUserId,
      required this.onUpdatePassword,
      required this.onForgotUserId,
      required this.onForgotPassword,
      required this.onRegisterHere,
      required this.onLogin,
      required this.isUnlockError});

  final double? width;
  final double? height;
  final bool remeberUserId;
  final bool loginEnabled;
  final bool isUnlockError;
  final String? errorMessage;
  final Future Function(bool value) onRememberUserId;
  final Future Function(double value) onFormRendered;
  final Future Function(String value) onUpdateUserId;
  final Future Function(String value) onUpdatePassword;
  final Future Function() onForgotUserId;
  final Future Function() onForgotPassword;
  final Future Function() onRegisterHere;
  final Future Function() onLogin;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey formKey = GlobalKey();
  var userIdController;
  final passwordController = TextEditingController();
  late bool obscureText = true;
  FocusNode _userIdFocusNode = FocusNode();
  FocusNode _passFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    userIdController =
        TextEditingController(text: FFAppState().remUserID ?? '');
    SchedulerBinding.instance.addPostFrameCallback((_) {
      var box = formKey.currentContext?.findRenderObject() as RenderBox;
      widget.onFormRendered(box.size.height);
    });

    userIdController.addListener(() {
      widget.onUpdateUserId(userIdController.text);
    });

    passwordController.addListener(() {
      widget.onUpdatePassword(passwordController.text);
    });
    _userIdFocusNode.addListener(() => setState(() {}));
    _passFocusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    userIdController.dispose();
    passwordController.dispose();
    _userIdFocusNode.dispose();
    _passFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: formKey,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Color(0x4C000000),
              blurRadius: 2,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.errorMessage?.isNotEmpty == true) ...[
            //ErrorBanner(message: widget.errorMessage ?? ""),
            widget.isUnlockError
                ? ToUnlockCompWidget(errorMess: widget.errorMessage ?? "")
                : ErrorBanner(message: widget.errorMessage ?? ""),
            SizedBox(height: 8),
          ],

          ///Login Field
          LoginFormField(
            title: 'User ID',
            controller: userIdController,
            isAutoFocus: true,
            focusNode: _userIdFocusNode,
          ),
          SizedBox(height: 4),
          Align(
            alignment: Alignment.centerRight,
            child: HelperText(
              key: ValueKey('recoverUserIDPageForgetID_jnol'),
              text: "Forgot",
              link: "User ID",
              infoMessage: "You may\nrecover your User ID",
              onLinkTap: widget.onForgotUserId,
            ),
          ),
          SizedBox(height: 8),

          ///Password Field
          LoginFormField(
            title: 'Password',
            controller: passwordController,
            obscureText: obscureText,
            hiddenField: true,
            focusNode: _passFocusNode,
            toggleObscuring: () {
              obscureText = !obscureText;
              setState(() {});
            },
          ),
          SizedBox(height: 4),
          Align(
            alignment: Alignment.centerRight,
            child: HelperText(
              key: ValueKey('newRecoverPassPageForgetPasswordButton_jnol'),
              text: "Forgot",
              link: "Password",
              infoMessage: "You may reset\nyour Password",
              onLinkTap: widget.onForgotPassword,
            ),
          ),
          SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 4),
                    AlignedTooltip(
                      offset: 4.0,
                      preferredDirection: AxisDirection.down,
                      borderRadius: BorderRadius.circular(8.0),
                      backgroundColor: Colors.black,
                      elevation: 4.0,
                      tailBaseWidth: 24.0,
                      tailLength: 12.0,
                      waitDuration: Duration(milliseconds: 100),
                      showDuration: Duration(milliseconds: 100),
                      triggerMode: TooltipTriggerMode.tap,
                      content: Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "Remember User ID",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        height: 10,
                        width: 10,
                        child: Checkbox(
                          value: widget.remeberUserId,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          onChanged: (value) {
                            widget.onRememberUserId(value ?? false);
                          },
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          splashRadius: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          side: BorderSide(
                            width: 1.5,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Remember User ID',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton2(
                title: "Log In",
                onTap: widget.onLogin,
                isEnabled: widget.loginEnabled,
              )
            ],
          ),
          SizedBox(height: 94),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New to MyECP? Please",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 2),
              NavigationLink(
                link: "register here",
                onLinkTap: widget.onRegisterHere,
              ),
              SizedBox(width: 2),
              AlignedTooltip(
                content: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "Your MyECP profile is\nunique to MyECP.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                offset: 4.0,
                preferredDirection: AxisDirection.right,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor: Colors.black,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 100),
                triggerMode: TooltipTriggerMode.tap,
                child: Icon(
                  Icons.help,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 19,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HelperText extends StatelessWidget {
  const HelperText({
    super.key,
    required this.text,
    required this.link,
    required this.infoMessage,
    required this.onLinkTap,
  });

  final String text;
  final String link;
  final String infoMessage;
  final Future Function() onLinkTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 4),
        NavigationLink(onLinkTap: onLinkTap, link: link),
        const SizedBox(width: 4),
        AlignedTooltip(
          content: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              infoMessage,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          offset: 4.0,
          preferredDirection: AxisDirection.right,
          borderRadius: BorderRadius.circular(8.0),
          backgroundColor: Colors.black,
          elevation: 4.0,
          tailBaseWidth: 24.0,
          tailLength: 12.0,
          waitDuration: Duration(milliseconds: 100),
          showDuration: Duration(milliseconds: 100),
          triggerMode: TooltipTriggerMode.tap,
          child: Icon(
            Icons.help,
            color: FlutterFlowTheme.of(context).primary,
            size: 19,
          ),
        ),
      ],
    );
  }
}

class LoginFormField extends StatelessWidget {
  LoginFormField(
      {super.key,
      required this.title,
      this.hiddenField = false,
      this.obscureText = false,
      this.toggleObscuring,
      required this.focusNode,
      required this.controller,
      this.isAutoFocus = false});

  final String title;
  final bool hiddenField;
  final bool obscureText;
  final TextEditingController controller;
  final bool isAutoFocus;
  final void Function()? toggleObscuring;
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    late Widget? suffixIcon;

    if (hiddenField) {
      suffixIcon = IconButton(
        highlightColor: Colors.blue,
        onPressed: toggleObscuring,
        icon: Icon(
          obscureText
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: Colors.black87,
          size: 24,
        ),
      );
    } else {
      suffixIcon = null;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF505050),
            fontSize: 14,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: focusNode.hasFocus
                      ? Colors.blue.withOpacity(0.5)
                      : Colors.transparent,
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                )
              ],
              borderRadius: BorderRadius.circular(4)),
          child: TextField(
            key: ValueKey('HomePageUserID_jnol'),
            controller: controller,
            obscureText: obscureText,
            obscuringCharacter: "*",
            focusNode: focusNode,
            cursorColor: const Color(0xFF042757),
            textCapitalization: TextCapitalization.sentences,
            autofocus: isAutoFocus,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              suffixIconColor: Colors.black87,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Color(0xff2E2E2E)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1.0,
                    color:
                        focusNode.hasFocus ? Colors.blue : Color(0xff2E2E2E)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
