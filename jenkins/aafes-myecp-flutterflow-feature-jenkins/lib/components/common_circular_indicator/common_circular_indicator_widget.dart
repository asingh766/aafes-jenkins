import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'common_circular_indicator_model.dart';
export 'common_circular_indicator_model.dart';

class CommonCircularIndicatorWidget extends StatefulWidget {
  const CommonCircularIndicatorWidget({super.key});

  @override
  State<CommonCircularIndicatorWidget> createState() =>
      _CommonCircularIndicatorWidgetState();
}

class _CommonCircularIndicatorWidgetState
    extends State<CommonCircularIndicatorWidget> {
  late CommonCircularIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonCircularIndicatorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: SizedBox(
        width: 50.0,
        height: 50.0,
        child: custom_widgets.CustomCircularProgressIndicator(
          width: 50.0,
          height: 50.0,
        ),
      ),
    );
  }
}
