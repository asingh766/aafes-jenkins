import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/milistary_star_com/milistary_star_com_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_dashboard_widget.dart' show AccountDashboardWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AccountDashboardModel extends FlutterFlowModel<AccountDashboardWidget> {
  ///  Local state fields for this page.

  int corousalIndex = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for milistaryStarCom component.
  late MilistaryStarComModel milistaryStarComModel1;
  // Model for Footer component.
  late FooterModel footerModel1;
  // Model for Header component.
  late HeaderModel headerModel1;
  // Model for Header component.
  late HeaderModel headerModel2;
  // Model for milistaryStarCom component.
  late MilistaryStarComModel milistaryStarComModel2;
  // Model for Footer component.
  late FooterModel footerModel2;

  @override
  void initState(BuildContext context) {
    milistaryStarComModel1 =
        createModel(context, () => MilistaryStarComModel());
    footerModel1 = createModel(context, () => FooterModel());
    headerModel1 = createModel(context, () => HeaderModel());
    headerModel2 = createModel(context, () => HeaderModel());
    milistaryStarComModel2 =
        createModel(context, () => MilistaryStarComModel());
    footerModel2 = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    milistaryStarComModel1.dispose();
    footerModel1.dispose();
    headerModel1.dispose();
    headerModel2.dispose();
    milistaryStarComModel2.dispose();
    footerModel2.dispose();
  }
}
