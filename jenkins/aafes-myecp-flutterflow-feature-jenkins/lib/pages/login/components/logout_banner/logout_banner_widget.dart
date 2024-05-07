import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logout_banner_model.dart';
export 'logout_banner_model.dart';

class LogoutBannerWidget extends StatefulWidget {
  const LogoutBannerWidget({super.key});

  @override
  State<LogoutBannerWidget> createState() => _LogoutBannerWidgetState();
}

class _LogoutBannerWidgetState extends State<LogoutBannerWidget> {
  late LogoutBannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoutBannerModel());

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
        color: const Color(0xFF318B29),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.info_rounded,
              color: FlutterFlowTheme.of(context).white,
              size: 24.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You have successfully logged out.',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        color: FlutterFlowTheme.of(context).white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'For your security, please close your browser if you finished using MyECP.',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        color: FlutterFlowTheme.of(context).white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
