import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'contact_us_title_model.dart';
export 'contact_us_title_model.dart';

class ContactUsTitleWidget extends StatefulWidget {
  const ContactUsTitleWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<ContactUsTitleWidget> createState() => _ContactUsTitleWidgetState();
}

class _ContactUsTitleWidgetState extends State<ContactUsTitleWidget> {
  late ContactUsTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactUsTitleModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent2,
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Text(
          widget.title!,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Arial',
                color: Colors.black,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
        ),
      ),
    );
  }
}
