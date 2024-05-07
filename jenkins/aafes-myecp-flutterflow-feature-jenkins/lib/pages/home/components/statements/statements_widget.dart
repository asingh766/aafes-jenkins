import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/paperless_comp/paperless_comp_widget.dart';
import '/pages/home/components/select_statement_comp/select_statement_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'statements_model.dart';
export 'statements_model.dart';

class StatementsWidget extends StatefulWidget {
  const StatementsWidget({
    super.key,
    required this.statementDataList,
    bool? isPaperLess,
  }) : isPaperLess = isPaperLess ?? false;

  final List<dynamic>? statementDataList;
  final bool isPaperLess;

  @override
  State<StatementsWidget> createState() => _StatementsWidgetState();
}

class _StatementsWidgetState extends State<StatementsWidget>
    with TickerProviderStateMixin {
  late StatementsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatementsModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.selectStatementCompModel1,
                      updateCallback: () => setState(() {}),
                      child: SelectStatementCompWidget(
                        statementDateList: widget.statementDataList!
                            .map((e) => getJsonField(
                                  e,
                                  r'''$.Description''',
                                ))
                            .toList()
                            .map((e) => e.toString())
                            .toList(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.paperlessCompModel1,
                      updateCallback: () => setState(() {}),
                      child: PaperlessCompWidget(
                        isPaperLess: widget.isPaperLess,
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 16.0)),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: wrapWithModel(
                          model: _model.selectStatementCompModel2,
                          updateCallback: () => setState(() {}),
                          child: SelectStatementCompWidget(
                            statementDateList: widget.statementDataList!
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.Description''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: wrapWithModel(
                          model: _model.paperlessCompModel2,
                          updateCallback: () => setState(() {}),
                          child: PaperlessCompWidget(
                            isPaperLess: widget.isPaperLess,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
