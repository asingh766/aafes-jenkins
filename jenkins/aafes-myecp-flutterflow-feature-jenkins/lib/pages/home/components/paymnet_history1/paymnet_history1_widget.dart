import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/no_datafound_table_text/no_datafound_table_text_widget.dart';
import '/pages/home/components/payment_history_header/payment_history_header_widget.dart';
import '/pages/home/components/payment_history_table_row/payment_history_table_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'paymnet_history1_model.dart';
export 'paymnet_history1_model.dart';

class PaymnetHistory1Widget extends StatefulWidget {
  const PaymnetHistory1Widget({
    super.key,
    required this.paymentHistoryDataList,
  });

  final List<dynamic>? paymentHistoryDataList;

  @override
  State<PaymnetHistory1Widget> createState() => _PaymnetHistory1WidgetState();
}

class _PaymnetHistory1WidgetState extends State<PaymnetHistory1Widget>
    with TickerProviderStateMixin {
  late PaymnetHistory1Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymnetHistory1Model());

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
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 0.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Pending Activity',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Arial',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          wrapWithModel(
            model: _model.paymentHistoryHeaderModel,
            updateCallback: () => setState(() {}),
            child: const PaymentHistoryHeaderWidget(),
          ),
          Divider(
            height: 2.5,
            thickness: 2.0,
            color: FlutterFlowTheme.of(context).accent3,
          ),
          Builder(
            builder: (context) {
              if (widget.paymentHistoryDataList != null &&
                  (widget.paymentHistoryDataList)!.isNotEmpty) {
                return Builder(
                  builder: (context) {
                    final payementHistoryDataList =
                        widget.paymentHistoryDataList!.toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(payementHistoryDataList.length,
                          (payementHistoryDataListIndex) {
                        final payementHistoryDataListItem =
                            payementHistoryDataList[
                                payementHistoryDataListIndex];
                        return PaymentHistoryTableRowWidget(
                          key: Key(
                              'Key22u_${payementHistoryDataListIndex}_of_${payementHistoryDataList.length}'),
                          index: _model.selelctedPaymentHistoryIndex!,
                          payementHistoryData: payementHistoryDataListItem,
                          isSelected: payementHistoryDataListIndex ==
                              _model.selelctedPaymentHistoryIndex,
                          onTap: () async {
                            if (_model.selelctedPaymentHistoryIndex !=
                                payementHistoryDataListIndex) {
                              _model.updatePage(() {
                                _model.selelctedPaymentHistoryIndex =
                                    payementHistoryDataListIndex;
                              });
                              setState(() {});
                            } else {
                              _model.updatePage(() {
                                _model.selelctedPaymentHistoryIndex = -1;
                              });
                              setState(() {});
                            }
                          },
                        );
                      }),
                    );
                  },
                );
              } else {
                return wrapWithModel(
                  model: _model.noDatafoundTableTextModel,
                  updateCallback: () => setState(() {}),
                  child: const NoDatafoundTableTextWidget(
                    text: 'No payments found.',
                  ),
                );
              }
            },
          ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
