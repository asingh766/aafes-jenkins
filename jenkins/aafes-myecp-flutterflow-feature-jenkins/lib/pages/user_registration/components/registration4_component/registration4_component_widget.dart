import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'registration4_component_model.dart';
export 'registration4_component_model.dart';

class Registration4ComponentWidget extends StatefulWidget {
  const Registration4ComponentWidget({super.key});

  @override
  State<Registration4ComponentWidget> createState() =>
      _Registration4ComponentWidgetState();
}

class _Registration4ComponentWidgetState
    extends State<Registration4ComponentWidget> {
  late Registration4ComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Registration4ComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).success,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AutoSizeText(
          'Congratulations. You have successfully registered your MyECP.com profile.\n\nPlease login to view your account balance, manage the account, setup alerts, update your profile, view your statements and more.',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Arial',
                color: Colors.white,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
                lineHeight: 1.5,
              ),
        ),
      ),
    );
  }
}
