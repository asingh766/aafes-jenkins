import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'screen_height_estimator_model.dart';
export 'screen_height_estimator_model.dart';

class ScreenHeightEstimatorWidget extends StatefulWidget {
  const ScreenHeightEstimatorWidget({super.key});

  @override
  State<ScreenHeightEstimatorWidget> createState() =>
      _ScreenHeightEstimatorWidgetState();
}

class _ScreenHeightEstimatorWidgetState
    extends State<ScreenHeightEstimatorWidget> {
  late ScreenHeightEstimatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScreenHeightEstimatorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.updatePage(() {
        FFAppState().screenBodyHeightDesktop = valueOrDefault<double>(
          functions
              .calculateDesktopBodyHeight(MediaQuery.sizeOf(context).height),
          0.0,
        );
        FFAppState().screenBodyHeightMobile = functions
            .calculateMobileBodyHeight(MediaQuery.sizeOf(context).height);
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

    return Container();
  }
}
